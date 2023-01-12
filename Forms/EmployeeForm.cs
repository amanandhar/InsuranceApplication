using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class EmployeeForm : Form, IEmployeeListForm
    {
        #region Enum
        public enum Action
        {
            Add,
            ClearAll,
            Delete,
            Edit,
            Load,
            None,
            Populate,
            Save,
            Update
        }
        #endregion

        private readonly IEndOfDayService _endOfDayService;
        private readonly IEmployeeService _employeeService;

        private string _baseDocumentFolder;
        private string _baseImageFolder;
        private string _employeeImageFolder;
        private string _uploadedImagePath = string.Empty;

        #region Constructor
        public EmployeeForm(IEndOfDayService endOfDayService, IEmployeeService employeeService)
        {
            InitializeComponent();

            _endOfDayService = endOfDayService;
            _employeeService = employeeService;

            LblCurrentNepaliDate.Text = _endOfDayService.GetDateInBs(Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd"))) + " BS";
        }
        #endregion

        #region Form Load Event
        private void EmployeeDetails_Load(object sender, EventArgs e)
        {
            _baseDocumentFolder = ConfigurationManager.AppSettings[Constants.BASE_DOCUMENT_FOLDER].ToString();
            _baseImageFolder = ConfigurationManager.AppSettings[Constants.BASE_IMAGE_FOLDER].ToString();
            _employeeImageFolder = ConfigurationManager.AppSettings[Constants.EMPLOYEE_IMAGE_FOLDER].ToString();

            EnableControls();
            EnableControls(Action.Load);
        }
        #endregion

        #region Button Events
        private void BtnSearchEmployee_Click(object sender, EventArgs e)
        {
            EmployeeListForm employeeListForm = new EmployeeListForm(_employeeService, this);
            employeeListForm.ShowDialog();
        }

        private void BtnSalaryDetails_Click(object sender, EventArgs e)
        {
            try
            {
                if(Directory.Exists(_baseDocumentFolder))
                {
                    System.Diagnostics.Process.Start("explorer.exe", _baseDocumentFolder);
                }
            }
            catch(Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnAddImage_Click(object sender, EventArgs e)
        {
            OpenFileDialog.InitialDirectory = _baseImageFolder;
            OpenFileDialog.Filter = "All files |*.*";
            OpenFileDialog.FileName = string.Empty;
            OpenFileDialog.ShowDialog();
        }

        private void BtnDeleteImage_Click(object sender, EventArgs e)
        {
            PicBoxPhoto.Image = PicBoxPhoto.InitialImage;
            _uploadedImagePath = string.Empty;
        }

        private void BtnAddEmployee_Click(object sender, EventArgs e)
        {
            var employeeId = _employeeService.GetLastEmployeeId();
            TxtBoxEmployeeId.Text = employeeId;

            ClearAll(Action.Add);
            EnableControls();
            EnableControls(Action.Add);
            ErrorProvider.Clear();
            DataGridEmployeeList.DataSource = null;
            TxtBoxEmployeeName.Focus();
        }

        private void BtnSaveEmployee_Click(object sender, EventArgs e)
        {
            if (ValidateFields())
            {
                string relativeImagePath = null;
                string destinationFilePath = null;

                try
                {
                    if (!string.IsNullOrEmpty(_uploadedImagePath))
                    {
                        if (!Directory.Exists(_baseImageFolder))
                        {
                            MessageBox.Show("Base image folder is set correctly. Please check.",
                                "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        else
                        {
                            if (!Directory.Exists(Path.Combine(_baseImageFolder, _employeeImageFolder)))
                            {
                                UtilityService.CreateFolder(_baseImageFolder, _employeeImageFolder);
                            }

                            relativeImagePath = TxtBoxEmployeeId.Text + ".jpg";
                            destinationFilePath = Path.Combine(_baseImageFolder, _employeeImageFolder, relativeImagePath);
                            File.Copy(_uploadedImagePath, destinationFilePath, true);
                        }
                    }

                    var employee = _employeeService.AddEmployee(new Employee
                    {
                        EmployeeId = TxtBoxEmployeeId.Text,
                        EmployeeName = TxtBoxEmployeeName.Text,
                        ContactNumber = Convert.ToInt64(TxtBoxContactNo.Text),
                        CitizenshipNumber = TxtBoxCitizenshipNo.Text,
                        Gender = ComboGender.Text,
                        Education = TxtBoxEducation.Text,
                        DateOfBirth = UtilityService.GetDate(MaskDOB.Text.Trim()),
                        Age = Convert.ToInt32(TxtBoxAge.Text),
                        Email = TxtBoxEmail.Text,
                        TempAddress = TxtBoxTempAddress.Text,
                        PermAddress = TxtBoxPermAddress.Text,
                        FatherName = TxtBoxFatherName.Text,
                        MotherName = TxtBoxMotherName.Text,
                        MaritalStatus = ComboMaritalStatus.Text,
                        SpouseName = TxtBoxMotherName.Text,
                        BloodGroup = TxtBoxBloodGroup.Text,
                        Post = TxtBoxPost.Text,
                        PostStatus = ComboPostStatus.Text,
                        AppointmentDate = UtilityService.GetDate(MaskAppointedDate.Text.Trim()),
                        ResignationDate = UtilityService.GetDate(MaskResignationDate.Text.Trim()),
                        ImageLocation = relativeImagePath,
                        AddedBy = Constants.TEST_USER,
                        AddedDate = DateTime.Now

                    });

                    DialogResult result = MessageBox.Show(employee.EmployeeId + " has been added successfully.", "Message", MessageBoxButtons.OK);
                    if (result == DialogResult.OK)
                    {
                        ClearAll(Action.Save);
                        EnableControls();
                        EnableControls(Action.Save);
                        ErrorProvider.Clear();
                        DataGridEmployeeList.DataSource = null;
                    }
                }
                catch(Exception ex)
                {
                    UtilityService.ShowExceptionMessageBox();
                }
            }
        }

        private void BtnEditEmployee_Click(object sender, EventArgs e)
        {
            EnableControls();
            EnableControls(Action.Edit);
            ErrorProvider.Clear();
            DataGridEmployeeList.DataSource = null;
        }

        private void BtnUpdateEmployee_Click(object sender, EventArgs e)
        {
            var employeeId = TxtBoxEmployeeId.Text.Trim();
            try
            {
                if (!string.IsNullOrEmpty(employeeId) && ValidateFields())
                {
                    string relativeImagePath = null;
                    string destinationFilePath = null;
                    if (!string.IsNullOrWhiteSpace(_uploadedImagePath))
                    {
                        if (!Directory.Exists(_baseImageFolder))
                        {
                            DialogResult errorResult = MessageBox.Show("Base image folder is set correctly. Please check.",
                                "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }
                        else
                        {
                            if (!Directory.Exists(Path.Combine(_baseImageFolder, _employeeImageFolder)))
                            {
                                UtilityService.CreateFolder(_baseImageFolder, _employeeImageFolder);
                            }

                            relativeImagePath = employeeId + ".jpg";
                            destinationFilePath = Path.Combine(_baseImageFolder, _employeeImageFolder, relativeImagePath);
                            File.Copy(_uploadedImagePath, destinationFilePath, true);
                        }
                    }

                    var employee = new Employee
                    {
                        EmployeeId = employeeId,
                        EmployeeName = TxtBoxEmployeeName.Text,
                        ContactNumber = Convert.ToInt64(TxtBoxContactNo.Text),
                        CitizenshipNumber = TxtBoxCitizenshipNo.Text,
                        Gender = ComboGender.Text,
                        Education = TxtBoxEducation.Text,
                        DateOfBirth = UtilityService.GetDate(MaskDOB.Text.Trim()),
                        Age = Convert.ToInt32(TxtBoxAge.Text),
                        Email = TxtBoxEmail.Text,
                        TempAddress = TxtBoxTempAddress.Text,
                        PermAddress = TxtBoxPermAddress.Text,
                        FatherName = TxtBoxFatherName.Text,
                        MotherName = TxtBoxMotherName.Text,
                        MaritalStatus = ComboMaritalStatus.Text,
                        SpouseName = TxtBoxSpouseName.Text,
                        BloodGroup = TxtBoxBloodGroup.Text,
                        Post = TxtBoxPost.Text,
                        PostStatus = ComboPostStatus.Text,
                        AppointmentDate = UtilityService.GetDate(MaskAppointedDate.Text.Trim()),
                        ResignationDate = UtilityService.GetDate(MaskResignationDate.Text.Trim()),
                        ImageLocation = relativeImagePath,
                        UpdatedBy = Constants.TEST_USER,
                        UpdatedDate = DateTime.Now
                    };

                    _employeeService.UpdateEmployee(employeeId, employee);
                    DialogResult result = MessageBox.Show(employee.EmployeeId + " has been updated successfully.", "Message", MessageBoxButtons.OK);
                    if (result == DialogResult.OK)
                    {
                        ClearAll(Action.Update);
                        EnableControls();
                        EnableControls(Action.Update);
                        ErrorProvider.Clear();
                        DataGridEmployeeList.DataSource = null;
                    }
                }
            }
            catch
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnDeleteEmployee_Click(object sender, EventArgs e)
        {
            var employeeId = TxtBoxEmployeeId.Text;
            if (!string.IsNullOrEmpty(employeeId))
            {
                try
                {
                    DialogResult confirm = MessageBox.Show("Are you really want to delete this employee record?", "Message", MessageBoxButtons.YesNo);
                    if (confirm == DialogResult.Yes)
                    {
                        var relativeImagePath = employeeId + ".jpg";
                        var absoluteImagePath = Path.Combine(_baseImageFolder, _employeeImageFolder, relativeImagePath);
                        if (!string.IsNullOrWhiteSpace(absoluteImagePath) && File.Exists(absoluteImagePath))
                        {
                            UtilityService.DeleteImage(absoluteImagePath);
                        }

                        var result = _employeeService.DeleteEmployee(employeeId);
                        if (result)
                        {
                            DialogResult dialogResult = MessageBox.Show(employeeId + " has been deleted successfully.", "Message", MessageBoxButtons.OK);
                            if (dialogResult == DialogResult.OK)
                            {
                                ClearAll(Action.Delete);
                                EnableControls();
                                EnableControls(Action.Save);
                                ErrorProvider.Clear();
                                DataGridEmployeeList.DataSource = null;
                            }
                        }
                        else
                        {
                            MessageBox.Show(employeeId + " was not deleted successfully.", "Error", MessageBoxButtons.OK);
                        }
                    }
                }
                catch (Exception ex)
                {
                    UtilityService.ShowExceptionMessageBox();
                }
            }
        }

        private void BtnClear_Click(object sender, EventArgs e)
        {
            ClearAll(Action.ClearAll);
            DataGridEmployeeList.DataSource = null;
        }

        private void BtnShowDetails_Click(object sender, EventArgs e)
        {
            var filterCriteria = ComboFilter.Text;
            var employees = _employeeService.GetEmployees();
            var employeesList = new List<Employee>();
            if (filterCriteria == "Present Employees")
            {
                employeesList = employees.OrderBy(x => x.EmployeeId).Where(x => string.IsNullOrEmpty(x.ResignationDate)).ToList();
            }
            else if (filterCriteria == "Resigned Employees")
            {
                employeesList = employees.ToList().OrderBy(x => x.EmployeeId).Where(x => !string.IsNullOrEmpty(x.ResignationDate)).ToList();
            }
            else
            {
                employeesList = employees.ToList();
            }

            var bindingList = new BindingList<Employee>(employeesList);
            var source = new BindingSource(bindingList, null);
            DataGridEmployeeList.DataSource = source;
        }
        #endregion

        #region Text Box Events
        private void TxtBoxContactNo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void TxtBoxAge_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }
        #endregion

        #region Combo Box Events
        private void ComboGender_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void ComboMaritalStatus_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void ComboPostStatus_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void ComboFilter_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }
        #endregion

        #region Data Grid Events
        private void DataGridEmployeeList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridEmployeeList.Columns["Id"].Visible = false;
            DataGridEmployeeList.Columns["Counter"].Visible = false;
            DataGridEmployeeList.Columns["Email"].Visible = false;
            DataGridEmployeeList.Columns["Education"].Visible = false;
            DataGridEmployeeList.Columns["DateOfBirth"].Visible = false;
            DataGridEmployeeList.Columns["Age"].Visible = false;
            DataGridEmployeeList.Columns["BloodGroup"].Visible = false;
            DataGridEmployeeList.Columns["FatherName"].Visible = false;
            DataGridEmployeeList.Columns["MotherName"].Visible = false;
            DataGridEmployeeList.Columns["Gender"].Visible = false;
            DataGridEmployeeList.Columns["MaritalStatus"].Visible = false;
            DataGridEmployeeList.Columns["SpouseName"].Visible = false;
            DataGridEmployeeList.Columns["ImageLocation"].Visible = false;
            DataGridEmployeeList.Columns["AddedBy"].Visible = false;
            DataGridEmployeeList.Columns["AddedDate"].Visible = false;
            DataGridEmployeeList.Columns["UpdatedBy"].Visible = false;
            DataGridEmployeeList.Columns["UpdatedDate"].Visible = false;

            DataGridEmployeeList.Columns["EmployeeId"].HeaderText = "ID";
            DataGridEmployeeList.Columns["EmployeeId"].Width = 50;
            DataGridEmployeeList.Columns["EmployeeId"].DisplayIndex = 0;

            DataGridEmployeeList.Columns["EmployeeName"].HeaderText = "Name";
            DataGridEmployeeList.Columns["EmployeeName"].Width = 160;
            DataGridEmployeeList.Columns["EmployeeName"].DisplayIndex = 1;

            DataGridEmployeeList.Columns["TempAddress"].HeaderText = "Temporary Address";
            DataGridEmployeeList.Columns["TempAddress"].Width = 160;
            DataGridEmployeeList.Columns["TempAddress"].DisplayIndex = 2;

            DataGridEmployeeList.Columns["PermAddress"].HeaderText = "Permanent Address";
            DataGridEmployeeList.Columns["PermAddress"].Width = 160;
            DataGridEmployeeList.Columns["PermAddress"].DisplayIndex = 3;

            DataGridEmployeeList.Columns["ContactNumber"].HeaderText = "ContactNumber";
            DataGridEmployeeList.Columns["ContactNumber"].Width = 100;
            DataGridEmployeeList.Columns["ContactNumber"].DisplayIndex = 4;

            DataGridEmployeeList.Columns["CitizenshipNumber"].HeaderText = "Citizenship No.";
            DataGridEmployeeList.Columns["CitizenshipNumber"].Width = 110;
            DataGridEmployeeList.Columns["CitizenshipNumber"].DisplayIndex = 5;

            DataGridEmployeeList.Columns["Post"].HeaderText = "Post";
            DataGridEmployeeList.Columns["Post"].Width = 90;
            DataGridEmployeeList.Columns["Post"].DisplayIndex = 6;

            DataGridEmployeeList.Columns["PostStatus"].HeaderText = "Post Status";
            DataGridEmployeeList.Columns["PostStatus"].Width = 90;
            DataGridEmployeeList.Columns["PostStatus"].DisplayIndex = 7;

            DataGridEmployeeList.Columns["AppointmentDate"].HeaderText = "AppointedDate";
            DataGridEmployeeList.Columns["AppointmentDate"].Width = 105;
            DataGridEmployeeList.Columns["AppointmentDate"].DisplayIndex = 8;
            DataGridEmployeeList.Columns["AppointmentDate"].DefaultCellStyle.Format = "yyyy-MM-dd";

            DataGridEmployeeList.Columns["ResignationDate"].HeaderText = "Resign Date";
            DataGridEmployeeList.Columns["ResignationDate"].Width = 105;
            DataGridEmployeeList.Columns["ResignationDate"].DisplayIndex = 9;
            DataGridEmployeeList.Columns["ResignationDate"].DefaultCellStyle.Format = "yyyy-MM-dd";

            foreach (DataGridViewRow row in DataGridEmployeeList.Rows)
            {
                DataGridEmployeeList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridEmployeeList.RowHeadersWidth = 50;
                DataGridEmployeeList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion

        #region Timer Events
        private void Timer_Tick(object sender, EventArgs e)
        {
            LblCurrentTime.Text = DateTime.Now.ToString("hh:mm:ss tt");
        }
        #endregion

        #region OpenFileDialog Events
        private void OpenFileDialog_FileOk(object sender, CancelEventArgs e)
        {
            try
            {
                Activate();
                string[] files = OpenFileDialog.FileNames;
                _uploadedImagePath = files[0];
                PicBoxPhoto.Image = Image.FromFile(_uploadedImagePath);
            }
            catch (Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }
        #endregion

        #region Helper Functions

        public void PopulateEmployee(string employeeId)
        {
            var employee = _employeeService.GetEmployee(employeeId);

            TxtBoxEmployeeId.Text = employeeId;
            TxtBoxEmployeeName.Text = employee.EmployeeName;
            TxtBoxContactNo.Text = employee.ContactNumber.ToString();
            TxtBoxCitizenshipNo.Text = employee.CitizenshipNumber;
            ComboGender.Text = employee.Gender;
            TxtBoxEducation.Text = employee.Education;
            MaskDOB.Text = employee.DateOfBirth;
            TxtBoxAge.Text = employee.Age.ToString();
            TxtBoxEmail.Text = employee.Email;
            TxtBoxTempAddress.Text = employee.TempAddress;
            TxtBoxPermAddress.Text = employee.PermAddress;
            TxtBoxFatherName.Text = employee.FatherName;
            TxtBoxMotherName.Text = employee.MotherName;
            ComboMaritalStatus.Text = employee.MaritalStatus;
            TxtBoxSpouseName.Text = employee.SpouseName;
            TxtBoxBloodGroup.Text = employee.BloodGroup;
            TxtBoxPost.Text = employee.Post;
            ComboPostStatus.Text = employee.PostStatus;
            MaskAppointedDate.Text = employee.AppointmentDate;
            MaskResignationDate.Text = employee.ResignationDate;

            var absoluteImagePath = Path.Combine(_baseImageFolder, _employeeImageFolder, employee.ImageLocation);
            if (File.Exists(absoluteImagePath))
            {
                PicBoxPhoto.ImageLocation = absoluteImagePath;
            }
            else
            {
                PicBoxPhoto.Image = PicBoxPhoto.InitialImage;
                _uploadedImagePath = string.Empty;
            }

            EnableControls();
            EnableControls(Action.Populate);
            ErrorProvider.Clear();
        }

        private void ClearAll(Action action)
        {
            if (action == Action.Save || action == Action.Update || action == Action.Delete || action == Action.ClearAll)
            {
                TxtBoxEmployeeId.Clear();
            }

            TxtBoxEmployeeName.Clear();
            TxtBoxContactNo.Clear();
            TxtBoxCitizenshipNo.Clear();
            ComboGender.Text = string.Empty;
            TxtBoxEducation.Clear();
            MaskDOB.Clear();
            TxtBoxAge.Clear();
            TxtBoxEmail.Clear();
            TxtBoxTempAddress.Clear();
            TxtBoxPermAddress.Clear();
            TxtBoxFatherName.Clear();
            TxtBoxMotherName.Clear();
            ComboMaritalStatus.Text = string.Empty;
            TxtBoxSpouseName.Clear();
            TxtBoxBloodGroup.Clear();
            TxtBoxPost.Clear();
            ComboPostStatus.Text = string.Empty;
            MaskAppointedDate.Clear();
            MaskResignationDate.Clear();
            PicBoxPhoto.Image = PicBoxPhoto.InitialImage;
        }

        private void EnableControls(Action action = Action.None)
        {
            if (action == Action.Add)
            {
                TxtBoxEmployeeName.Enabled = true;
                TxtBoxContactNo.Enabled = true;
                TxtBoxCitizenshipNo.Enabled = true;
                ComboGender.Enabled = true;
                TxtBoxEducation.Enabled = true;
                MaskDOB.Enabled = true;
                TxtBoxAge.Enabled = true;
                TxtBoxEmail.Enabled = true;
                TxtBoxTempAddress.Enabled = true;
                TxtBoxPermAddress.Enabled = true;
                TxtBoxFatherName.Enabled = true;
                TxtBoxMotherName.Enabled = true;
                ComboMaritalStatus.Enabled = true;
                TxtBoxSpouseName.Enabled = true;
                TxtBoxBloodGroup.Enabled = true;
                TxtBoxPost.Enabled = true;
                ComboPostStatus.Enabled = true;
                MaskAppointedDate.Enabled = true;
                MaskResignationDate.Enabled = true;

                BtnAddImage.Enabled = true;
                BtnDeleteImage.Enabled = true;
                BtnSaveEmployee.Enabled = true;
                BtnClearAll.Enabled = true;
            }
            else if (action == Action.Edit)
            {
                TxtBoxEmployeeName.Enabled = true;
                TxtBoxContactNo.Enabled = true;
                TxtBoxCitizenshipNo.Enabled = true;
                ComboGender.Enabled = true;
                TxtBoxEducation.Enabled = true;
                MaskDOB.Enabled = true;
                TxtBoxAge.Enabled = true;
                TxtBoxEmail.Enabled = true;
                TxtBoxTempAddress.Enabled = true;
                TxtBoxPermAddress.Enabled = true;
                TxtBoxFatherName.Enabled = true;
                TxtBoxMotherName.Enabled = true;
                ComboMaritalStatus.Enabled = true;
                TxtBoxSpouseName.Enabled = true;
                TxtBoxBloodGroup.Enabled = true;
                TxtBoxPost.Enabled = true;
                ComboPostStatus.Enabled = true;
                MaskAppointedDate.Enabled = true;
                MaskResignationDate.Enabled = true;

                BtnAddImage.Enabled = true;
                BtnDeleteImage.Enabled = true;

                BtnAddEmployee.Enabled = true;
                BtnUpdateEmployee.Enabled = true;
                BtnClearAll.Enabled = true;
                BtnDeleteEmployee.Enabled = true;
            }
            else if(action == Action.Load)
            {
                BtnAddEmployee.Enabled = true;
            }
            else if (action == Action.Populate)
            {
                BtnAddEmployee.Enabled = true;
                BtnEditEmployee.Enabled = true;
                BtnDeleteEmployee.Enabled = true;
            }
            else if (action == Action.Save)
            {
                BtnAddEmployee.Enabled = true;
            }
            else if (action == Action.Update)
            {
                BtnAddEmployee.Enabled = true;
            }
            else
            {
                TxtBoxEmployeeId.Enabled = false;
                TxtBoxEmployeeName.Enabled = false;
                TxtBoxContactNo.Enabled = false;
                TxtBoxCitizenshipNo.Enabled = false;
                ComboGender.Enabled = false;
                TxtBoxEducation.Enabled = false;
                MaskDOB.Enabled = false;
                TxtBoxAge.Enabled = false;
                TxtBoxEmail.Enabled = false;
                TxtBoxTempAddress.Enabled = false;
                TxtBoxPermAddress.Enabled = false;
                TxtBoxFatherName.Enabled = false;
                TxtBoxMotherName.Enabled = false;
                ComboMaritalStatus.Enabled = false;
                TxtBoxSpouseName.Enabled = false;
                TxtBoxBloodGroup.Enabled = false;
                TxtBoxPost.Enabled = false;
                ComboPostStatus.Enabled = false;
                MaskAppointedDate.Enabled = false;
                MaskResignationDate.Enabled = false;

                BtnAddImage.Enabled = false;
                BtnDeleteImage.Enabled = false;
                BtnAddEmployee.Enabled = false;
                BtnEditEmployee.Enabled = false;
                BtnUpdateEmployee.Enabled = false;
                BtnDeleteEmployee.Enabled = false;
                BtnClearAll.Enabled = false;
                BtnSaveEmployee.Enabled = false;
            }
        }

        private bool IsDateInBsValid(string date)
        {
            return _endOfDayService.IsDateInBsExist(date);
        }
        #endregion

        #region Validate Fields

        private bool ValidateFields()
        {
            bool status = true;

            if (string.IsNullOrEmpty(TxtBoxEmployeeName.Text))
            {
                ErrorProvider.SetError(TxtBoxEmployeeName, "Please Enter Employee Name");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxContactNo.Text))
            {
                ErrorProvider.SetError(TxtBoxContactNo, "Please Enter Contact No");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxCitizenshipNo.Text))
            {
                ErrorProvider.SetError(TxtBoxCitizenshipNo, "Please Enter Citizenship No");
                status = false;
            }
            if (string.IsNullOrEmpty(ComboGender.Text))
            {
                ErrorProvider.SetError(ComboGender, "Please Choose Gender");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxEducation.Text))
            {
                ErrorProvider.SetError(TxtBoxEducation, "Please Enter Education");
                status = false;
            }
            if (string.IsNullOrEmpty(MaskDOB.Text))
            {
                ErrorProvider.SetError(MaskDOB, "Please Enter Date Of Birth");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxAge.Text))
            {
                ErrorProvider.SetError(TxtBoxAge, "Please Enter Age");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxEmail.Text))
            {
                ErrorProvider.SetError(TxtBoxEmail, "Please Enter Email Id");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxTempAddress.Text))
            {
                ErrorProvider.SetError(TxtBoxTempAddress, "Please Enter Temp Address");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxPermAddress.Text))
            {
                ErrorProvider.SetError(TxtBoxPermAddress, "Please Enter Perm Address");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxFatherName.Text))
            {
                ErrorProvider.SetError(TxtBoxFatherName, "Please Enter Father Name");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxMotherName.Text))
            {
                ErrorProvider.SetError(TxtBoxMotherName, "Please Enter Mother Name");
                status = false;
            }
            if (string.IsNullOrEmpty(ComboMaritalStatus.Text))
            {
                ErrorProvider.SetError(ComboMaritalStatus, "Please Choose Marital Status");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxSpouseName.Text) && ComboMaritalStatus.SelectedIndex != 1)
            {
                ErrorProvider.SetError(TxtBoxSpouseName, "Please Enter Spouse Name");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxBloodGroup.Text))
            {
                ErrorProvider.SetError(TxtBoxBloodGroup, "Please Choose Blood Group");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxPost.Text))
            {
                ErrorProvider.SetError(TxtBoxPost, "Please Enter Post");
                status = false;
            }
            if (string.IsNullOrEmpty(ComboPostStatus.Text))
            {
                ErrorProvider.SetError(ComboPostStatus, "Please Choose Post Status");
                status = false;
            }
            if (string.IsNullOrEmpty(MaskAppointedDate.Text) || !IsDateInBsValid(MaskAppointedDate.Text))
            {
                ErrorProvider.SetError(MaskAppointedDate, "Please Enter Appointment Date");
                status = false;
            }

            return status;
        }

        #endregion
    }
}
