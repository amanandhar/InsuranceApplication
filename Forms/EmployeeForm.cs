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
            AddNew,
            Save,
            Edit,
            Update,
            Delete,
            ClearAll
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
            AutoPopulateControls();
            _documentsDirectory = ConfigurationManager.AppSettings["DocumentsDirectory"].ToString();
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
            PicBoxPhoto.Image = null;
        }

        private void BtnAddEmployee_Click(object sender, EventArgs e)
        {
            var employeeId = _employeeService.GetLastEmployeeId();
            TxtBoxEmployeeId.Text = employeeId;

            ClearAll(Action.AddNew);
            EnableControls(Action.AddNew);
        }

        private void BtnSaveEmployee_Click(object sender, EventArgs e)
        {
            if (ValidateFields())
            {
                string destinationFileName = string.Empty;
                if (UtilityService.CreateFolder(_documentsDirectory, TxtBoxEmployeeId.Text))
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
                    TempAddress = TxtBoxTempAddress.Text,
                    PermAddress = TxtBoxPermAddress.Text,
                    ContactNumber = Convert.ToInt64(TxtBoxContactNo.Text),
                    Email = TxtBoxEmail.Text,
                    CitizenshipNumber = TxtBoxCitizenshipNo.Text,
                    Education = TxtBoxEducation.Text,
                    DateOfBirth = MaskDOB.Text,
                    Age = Convert.ToInt32(TxtBoxAge.Text),
                    BloodGroup = TxtBoxBloodGroup.Text,
                    AppointmentDate = MaskAppointedDate.Text,
                    FatherName = TxtBoxFatherName.Text,
                    MotherName = TxtBoxMotherName.Text,
                    Gender = ComboGender.Text,
                    MaritalStatus = ComboMaritalStatus.Text,
                    SpouseName = TxtBoxMotherName.Text,
                    Post = TxtBoxPost.Text,
                    PostStatus = ComboPostStatus.Text,
                    ResignationDate = MaskResignationDate.Text,
                    ImageLocation = destinationFileName

                });

                DialogResult result = MessageBox.Show(employee.EmployeeId + " has been added successfully.", "Message", MessageBoxButtons.OK);
                if (result == DialogResult.OK)
                {
                    ClearAll(Action.Save);
                }
            }
        }

        private void BtnEditEmployee_Click(object sender, EventArgs e)
        {
            EnableControls(Action.Edit);
        }

        private void BtnUpdateEmployee_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TxtBoxEmployeeId.Text))
            {
                var employee = _employeeService.UpdateEmployee(TxtBoxEmployeeId.Text, new Employee
                {
                    EmployeeId = TxtBoxEmployeeId.Text,
                    EmployeeName = TxtBoxEmployeeName.Text,
                    TempAddress = TxtBoxTempAddress.Text,
                    PermAddress = TxtBoxPermAddress.Text,
                    ContactNumber = Convert.ToInt64(TxtBoxContactNo.Text),
                    Email = TxtBoxEmail.Text,
                    CitizenshipNumber = TxtBoxCitizenshipNo.Text,
                    Education = TxtBoxEducation.Text,
                    DateOfBirth = MaskDOB.Text,
                    Age = Convert.ToInt32(TxtBoxAge.Text),
                    BloodGroup = TxtBoxBloodGroup.Text,
                    AppointmentDate = MaskAppointedDate.Text,
                    FatherName = TxtBoxFatherName.Text,
                    MotherName = TxtBoxMotherName.Text,
                    Gender = ComboGender.Text,
                    MaritalStatus = ComboMaritalStatus.Text,
                    SpouseName = TxtBoxSpouseName.Text,
                    Post = TxtBoxPost.Text,
                    PostStatus = ComboPostStatus.Text,
                    ResignationDate = MaskResignationDate.Text,
                    ImageLocation = _uploadedImagePath

                }); ;

                DialogResult result = MessageBox.Show(employee.EmployeeId + " has been updated successfully.", "Message", MessageBoxButtons.OK);
                if (result == DialogResult.OK)
                {
                    ClearAll(Action.Update);
                    EnableControls(Action.Update);

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
                    }
                }
            }
        }

        private void BtnClear_Click(object sender, EventArgs e)
        {

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
            ErrorProvider.Clear();

            var employee = _employeeService.GetEmployee(employeeId);

            TxtBoxEmployeeId.Text = employeeId;
            TxtBoxEmployeeName.Text = employee.EmployeeName;
            TxtBoxTempAddress.Text = employee.TempAddress;
            TxtBoxPermAddress.Text = employee.PermAddress;
            TxtBoxContactNo.Text = employee.ContactNumber.ToString();
            TxtBoxEmail.Text = employee.Email;
            TxtBoxCitizenshipNo.Text = employee.CitizenshipNumber.ToString();
            TxtBoxEducation.Text = employee.Education;
            MaskDOB.Text = employee.DateOfBirth;
            TxtBoxAge.Text = employee.Age.ToString();
            TxtBoxBloodGroup.Text = employee.BloodGroup;
            MaskAppointedDate.Text = employee.AppointmentDate;
            TxtBoxFatherName.Text = employee.FatherName;
            TxtBoxMotherName.Text = employee.MotherName;
            ComboGender.SelectedIndex = employee.Gender.ToLower() == "male" ? 1 : (employee.MaritalStatus.ToLower() == "single" ? 2 : 0);
            ComboMaritalStatus.SelectedIndex = employee.MaritalStatus.ToLower() == "single" ? 1 : (employee.MaritalStatus.ToLower() == "married" ? 2 : 0);
            TxtBoxSpouseName.Text = employee.SpouseName;
            TxtBoxPost.Text = employee.Post;
            ComboPostStatus.Text = employee.PostStatus;
            MaskResignationDate.Text = employee.ResignationDate;

            if (File.Exists(employee.ImageLocation))
            {
                PicBoxPhoto.Image = Image.FromFile(employee.ImageLocation);
            }
            else
            {
                PicBoxPhoto.Image = null;
            }

            _uploadedImagePath = employee.ImageLocation; //ToDo Change this

            TxtBoxEmployeeName.Enabled = false;
            TxtBoxTempAddress.Enabled = false;
            TxtBoxPermAddress.Enabled = false;
            TxtBoxContactNo.Enabled = false;
            TxtBoxEmail.Enabled = false;
            TxtBoxCitizenshipNo.Enabled = false;
            TxtBoxEducation.Enabled = false;
            MaskDOB.Enabled = false;
            TxtBoxBloodGroup.Enabled = false;
            MaskAppointedDate.Enabled = false;
            TxtBoxFatherName.Enabled = false;
            TxtBoxMotherName.Enabled = false;
            ComboGender.Enabled = false;
            ComboMaritalStatus.Enabled = false;
            TxtBoxSpouseName.Enabled = false;
            TxtBoxPost.Enabled = false;
            ComboPostStatus.Enabled = false;
            MaskResignationDate.Enabled = false;

            BtnSaveEmployee.Enabled = false;
            BtnEditEmployee.Enabled = true;
            BtnUpdateEmployee.Enabled = false;
            BtnDeleteEmployee.Enabled = true;
            BtnAddImage.Enabled = false;
            BtnDeleteImage.Enabled = false;
        }

        private void AutoPopulateControls()
        {
            this.ActiveControl = TxtBoxEmployeeName;

            ComboGender.SelectedIndex = 0;
            ComboMaritalStatus.SelectedIndex = 0;
            ComboPostStatus.SelectedIndex = 0;

            BtnSaveEmployee.Enabled = false;
            BtnEditEmployee.Enabled = false;
            BtnUpdateEmployee.Enabled = false;
            BtnDeleteEmployee.Enabled = false;
        }

        private void ClearAll(Action action)
        {
            if (action == Action.Save || action == Action.Update || action == Action.Delete || action == Action.ClearAll)
            {
                TxtBoxEmployeeId.Clear();
            }
            TxtBoxEmployeeName.Clear();
            TxtBoxTempAddress.Clear();
            TxtBoxPermAddress.Clear();
            TxtBoxContactNo.Clear();
            TxtBoxEmail.Clear();
            TxtBoxCitizenshipNo.Clear();
            TxtBoxEducation.Clear();
            MaskDOB.Clear();
            TxtBoxBloodGroup.Clear();
            TxtBoxAge.Clear();
            MaskAppointedDate.Clear();
            TxtBoxFatherName.Clear();
            TxtBoxMotherName.Clear();
            ComboGender.SelectedIndex = 0;
            ComboMaritalStatus.SelectedIndex = 0;
            TxtBoxSpouseName.Clear();
            TxtBoxPost.Clear();
            ComboPostStatus.SelectedIndex = 0;
            MaskResignationDate.Clear();
            PicBoxPhoto.Image = null;
        }

        private void EnableControls(Action action)
        {
            TxtBoxEmployeeName.Enabled = true;
            TxtBoxTempAddress.Enabled = true;
            TxtBoxPermAddress.Enabled = true;
            TxtBoxContactNo.Enabled = true;
            TxtBoxEmail.Enabled = true;
            TxtBoxCitizenshipNo.Enabled = true;
            TxtBoxEducation.Enabled = true;
            MaskDOB.Enabled = true;
            TxtBoxBloodGroup.Enabled = true;
            MaskAppointedDate.Enabled = true;
            TxtBoxFatherName.Enabled = true;
            TxtBoxMotherName.Enabled = true;
            ComboGender.Enabled = true;
            ComboMaritalStatus.Enabled = true;
            TxtBoxSpouseName.Enabled = true;
            TxtBoxPost.Enabled = true;
            ComboPostStatus.Enabled = true;

            if (action == Action.AddNew)
            {
                ComboGender.SelectedIndex = 0;
                ComboMaritalStatus.SelectedIndex = 0;
                ComboPostStatus.SelectedIndex = 0;

                BtnAddEmployee.Enabled = false;
                BtnSaveEmployee.Enabled = true;
                BtnEditEmployee.Enabled = false;
                BtnUpdateEmployee.Enabled = false;
                BtnDeleteEmployee.Enabled = false;
                BtnClearAll.Enabled = true;
                BtnAddImage.Enabled = true;
                BtnDeleteImage.Enabled = true;
            }

            else if (action == Action.Edit)
            {
                MaskResignationDate.Enabled = true;

                BtnSaveEmployee.Enabled = false;
                BtnUpdateEmployee.Enabled = true;
                BtnClearAll.Enabled = false;

                BtnAddImage.Enabled = true;
                BtnDeleteImage.Enabled = true;
            }

            else if (action == Action.Update)
            {
                BtnAddEmployee.Enabled = true;
                BtnEditEmployee.Enabled = false;
                BtnUpdateEmployee.Enabled = false;
                BtnDeleteEmployee.Enabled = false;
                BtnClearAll.Enabled = true;
                BtnSaveEmployee.Enabled = false;
            }

        }

        private bool IsValidDate(string input)
        {
            string format = "yyyy/MM/dd";
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
            if (string.IsNullOrEmpty(TxtBoxContactNo.Text))
            {
                ErrorProvider.SetError(TxtBoxContactNo, "Please Enter Contact No");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxEmail.Text))
            {
                ErrorProvider.SetError(TxtBoxEmail, "Please Enter Email Id");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxCitizenshipNo.Text))
            {
                ErrorProvider.SetError(TxtBoxCitizenshipNo, "Please Enter Citizenship No");
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
            if (string.IsNullOrEmpty(TxtBoxBloodGroup.Text))
            {
                ErrorProvider.SetError(TxtBoxBloodGroup, "Please Choose Blood Group");
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
            if (ComboGender.SelectedIndex == 0)
            {
                ErrorProvider.SetError(ComboGender, "Please Choose Gender");
                status = false;
            }
            if (ComboMaritalStatus.SelectedIndex == 0)
            {
                ErrorProvider.SetError(ComboMaritalStatus, "Please Choose Marital Status");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxSpouseName.Text) && ComboMaritalStatus.SelectedIndex != 1)
            {
                ErrorProvider.SetError(TxtBoxSpouseName, "Please Enter Spouse Name");
                status = false;
            }
            if (string.IsNullOrEmpty(TxtBoxPost.Text))
            {
                ErrorProvider.SetError(TxtBoxPost, "Please Enter Post");
                status = false;
            }
            if (ComboPostStatus.SelectedIndex == 0)
            {
                ErrorProvider.SetError(ComboPostStatus, "Please Choose Post Status");
                status = false;
            }
            if (!IsValidDate(MaskAppointedDate.Text))
            {
                ErrorProvider.SetError(MaskAppointedDate, "Please Enter Appointment Date");
                status = false;
            }

            return status;
        }

        #endregion
    }
}
