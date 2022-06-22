using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Mapper;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.ComponentModel;
using System.Configuration;
using System.Drawing;
using System.Globalization;
using System.IO;
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

        private readonly IEmployeeService _employeeService;
        private string _documentsDirectory;
        private const string IMAGE_FOLDER = "Image";
        private string _uploadedImagePath = string.Empty;

        public EmployeeForm(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
            InitializeComponent();
        }

        #region Form Load Event
        private void EmployeeDetails_Load(object sender, EventArgs e)
        {
            _documentsDirectory = ConfigurationManager.AppSettings["DocumentsDirectory"].ToString();
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
            System.Diagnostics.Process.Start(_documentsDirectory);
        }

        private void BtnAddImage_Click(object sender, EventArgs e)
        {
            OpenFileDialog.InitialDirectory = _documentsDirectory;
            OpenFileDialog.Filter = "All files |*.*";
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
            TxtBoxEmployeeName.Focus();
        }

        private void BtnSaveEmployee_Click(object sender, EventArgs e)
        {
            if (ValidateFields())
            {
                string destinationFileName = string.Empty;
                if (!string.IsNullOrEmpty(_uploadedImagePath) && UtilityService.CreateFolder(_documentsDirectory, TxtBoxEmployeeId.Text))
                {
                    if (UtilityService.CreateFolder(_documentsDirectory + TxtBoxEmployeeId.Text, IMAGE_FOLDER))
                    {
                        var sourceFileName = _uploadedImagePath;
                        destinationFileName = Path.Combine(Path.Combine(_documentsDirectory, TxtBoxEmployeeId.Text), IMAGE_FOLDER) + "\\" + Path.GetFileName(sourceFileName);
                        File.Copy(sourceFileName, destinationFileName);
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
                    DateOfBirth = MaskDOB.Text,
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
                    AppointmentDate = MaskAppointedDate.Text,
                    ResignationDate = MaskResignationDate.Text,
                    ImageLocation = destinationFileName,
                    AddedBy = "Test User",
                    AddedDate = DateTime.Now

                });

                DialogResult result = MessageBox.Show(employee.EmployeeId + " has been added successfully.", "Message", MessageBoxButtons.OK);
                if (result == DialogResult.OK)
                {
                    ClearAll(Action.Save);
                    EnableControls();
                    EnableControls(Action.Save);
                    ErrorProvider.Clear();
                }
            }
        }

        private void BtnEditEmployee_Click(object sender, EventArgs e)
        {
            EnableControls();
            EnableControls(Action.Edit);
            ErrorProvider.Clear();
        }

        private void BtnUpdateEmployee_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TxtBoxEmployeeId.Text))
            {
                var employee = _employeeService.UpdateEmployee(TxtBoxEmployeeId.Text, new Employee
                {
                    EmployeeId = TxtBoxEmployeeId.Text,
                    EmployeeName = TxtBoxEmployeeName.Text,
                    ContactNumber = Convert.ToInt64(TxtBoxContactNo.Text),
                    CitizenshipNumber = TxtBoxCitizenshipNo.Text,
                    Gender = ComboGender.Text,
                    Education = TxtBoxEducation.Text,
                    DateOfBirth = MaskDOB.Text,
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
                    AppointmentDate = MaskAppointedDate.Text,
                    ResignationDate = MaskResignationDate.Text,
                    ImageLocation = _uploadedImagePath,
                    UpdatedBy = "Test User",
                    UpdatedDate = DateTime.Now
                }); ;

                DialogResult result = MessageBox.Show(employee.EmployeeId + " has been updated successfully.", "Message", MessageBoxButtons.OK);
                if (result == DialogResult.OK)
                {
                    ClearAll(Action.Update);
                    EnableControls();
                    EnableControls(Action.Update);
                    ErrorProvider.Clear();
                }
            }
        }

        private void BtnDeleteEmployee_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TxtBoxEmployeeId.Text))
            {
                DialogResult confirm = MessageBox.Show("Are you really want to delete this employee record?", "Message", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.Yes)
                {
                    var employeeId = _employeeService.DeleteEmployee(TxtBoxEmployeeId.Text);
                    DialogResult result = MessageBox.Show(employeeId + " has been deleted successfully.", "Message", MessageBoxButtons.OK);
                    if (result == DialogResult.OK)
                    {
                        ClearAll(Action.Delete);
                        EnableControls();
                        EnableControls(Action.Save);
                        ErrorProvider.Clear();
                    }
                }
            }
        }

        private void BtnClear_Click(object sender, EventArgs e)
        {
            ClearAll(Action.ClearAll);
        }

        private void BtnShowDetails_Click(object sender, EventArgs e)
        {

        }
        #endregion

        #region Timer Events
        private void Timer_Tick(object sender, EventArgs e)
        {
            LblCurrentNepaliDate.Text = DateMapper.MapEnglishToNepali(DateTime.Now.ToString("yyyy/MM/dd"));
            LblCurrentTime.Text = DateTime.Now.ToString("hh:mm:ss");
        }
        #endregion

        #region OpenFileDialog Events
        private void OpenFileDialog_FileOk(object sender, CancelEventArgs e)
        {
            this.Activate();
            string[] files = OpenFileDialog.FileNames;
            _uploadedImagePath = files[0];
            PicBoxPhoto.Image = Image.FromFile(_uploadedImagePath);
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

            if (File.Exists(employee.ImageLocation))
            {
                PicBoxPhoto.Image = Image.FromFile(employee.ImageLocation);
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

        private bool IsValidDate(string input)
        {
            string format = "yyyy-MM-dd";
            DateTime dateTime;
            if (DateTime.TryParseExact(input, format, CultureInfo.InvariantCulture,
                DateTimeStyles.None, out dateTime))
            {
                return true;
            }
            else
            {
                return false;
            }
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
            if (!IsValidDate(MaskDOB.Text))
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
            if (!IsValidDate(MaskAppointedDate.Text))
            {
                ErrorProvider.SetError(MaskAppointedDate, "Please Enter Appointment Date");
                status = false;
            }
            if (!IsValidDate(MaskResignationDate.Text))
            {
                ErrorProvider.SetError(MaskResignationDate, "Please Enter Resignation Date");
                status = false;
            }

            return status;
        }

        #endregion
    }
}
