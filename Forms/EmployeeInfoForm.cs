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
using System.Threading;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public enum Action
    {
        AddNew,
        Save,
        Edit,
        Update,
        Delete,
        ClearAll
    }

    public partial class EmployeeInfoForm : Form, IEmployeeListForm
    {
        private readonly IEmployeeService _employeeService;
        private string _documentsDirectory;
        private const string IMAGE_FOLDER = "Image";
        private string _uploadedImagePath = string.Empty;
        public EmployeeInfoForm(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
            InitializeComponent();
            Thread thread = new Thread(new ThreadStart(StartForm));
            thread.Start();
            Thread.Sleep(5000);
            thread.Abort();
            //this.TopMost = true;
        }

        public static void StartForm()
        {
            Application.Run(new SplashScreenForm());
        }

        #region Controls Events
        private void EmployeeInfoForm_Load(object sender, EventArgs e)
        {
            AutoPopulateControls();
            _documentsDirectory = ConfigurationManager.AppSettings["DocumentsDirectory"].ToString();
        }

        #region Buttons Events
        private void BtnShowEmployee_Click(object sender, EventArgs e)
        {
            EmployeeListForm employeeListForm = new EmployeeListForm(_employeeService, this);
            employeeListForm.Show();
        }
        private void BtnAddNew_Click(object sender, EventArgs e)
        {
            var employeeId = _employeeService.GetLastEmployeeId();
            RichTextBoxEmployeeId.Text = employeeId;

            ClearAll(Action.AddNew);
            EnableControls(Action.AddNew);
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateFields())
            {
                string destinationFileName = string.Empty;
                if (UtilityService.CreateFolder(_documentsDirectory, RichTextBoxEmployeeId.Text))
                {
                    if (UtilityService.CreateFolder(_documentsDirectory + RichTextBoxEmployeeId.Text, IMAGE_FOLDER))
                    {
                        var sourceFileName = _uploadedImagePath;
                        destinationFileName = Path.Combine(Path.Combine(_documentsDirectory, RichTextBoxEmployeeId.Text), IMAGE_FOLDER) + "\\" + Path.GetFileName(sourceFileName);
                        File.Copy(sourceFileName, destinationFileName);
                    }
                }

                var employee = _employeeService.AddEmployee(new Employee
                {
                    EmployeeId = RichTextBoxEmployeeId.Text,
                    EmployeeName = RichTextBoxName.Text,
                    TempAddress = RichTextBoxTempAddress.Text,
                    PermAddress = RichTextBoxPermAddress.Text,
                    ContactNumber = Convert.ToInt64(RichTextBoxContactNo.Text),
                    Email = RichTextBoxEmail.Text,
                    CitizenshipNumber = RichTextBoxCitizenshipNo.Text,
                    Education = RichTextBoxEducation.Text,
                    DateOfBirth = MaskDateOfBirth.Text,
                    Age = Convert.ToInt32(RichTextBoxAge.Text),
                    BloodGroup = CmbBloodGroup.Text,
                    AppointmentDate = MaskAppointmentDate.Text,
                    FatherName = RichTextBoxFatherName.Text,
                    MotherName = RichTextBoxMotherName.Text,
                    Gender = CmbGender.Text,
                    MaritalStatus = CmbMaritalStatus.Text,
                    SpouseName = RichTextBoxMotherName.Text,
                    Post = RichTextBoxPost.Text,
                    PostStatus = CmbPostStatus.Text,
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
        private void BtnEdit_Click(object sender, EventArgs e)
        {
            EnableControls(Action.Edit);
        }
        private void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(RichTextBoxEmployeeId.Text))
            {
                var employee = _employeeService.UpdateEmployee(RichTextBoxEmployeeId.Text, new Employee
                {
                    EmployeeId = RichTextBoxEmployeeId.Text,
                    EmployeeName = RichTextBoxName.Text,
                    TempAddress = RichTextBoxTempAddress.Text,
                    PermAddress = RichTextBoxPermAddress.Text,
                    ContactNumber = Convert.ToInt64(RichTextBoxContactNo.Text),
                    Email = RichTextBoxEmail.Text,
                    CitizenshipNumber = RichTextBoxCitizenshipNo.Text,
                    Education = RichTextBoxEducation.Text,
                    DateOfBirth = MaskDateOfBirth.Text,
                    Age = Convert.ToInt32(RichTextBoxAge.Text),
                    BloodGroup = CmbBloodGroup.Text,
                    AppointmentDate = MaskAppointmentDate.Text,
                    FatherName = RichTextBoxFatherName.Text,
                    MotherName = RichTextBoxMotherName.Text,
                    Gender = CmbGender.Text,
                    MaritalStatus = CmbMaritalStatus.Text,
                    SpouseName = RichTextBoxSpouseName.Text,
                    Post = RichTextBoxPost.Text,
                    PostStatus = CmbPostStatus.Text,
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
        private void BtnDelete_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(RichTextBoxEmployeeId.Text))
            {
                DialogResult confirm = MessageBox.Show("Are you really want to delete this employee record?", "Message", MessageBoxButtons.YesNo);
                if (confirm == DialogResult.Yes)
                {
                    var employeeId = _employeeService.DeleteEmployee(RichTextBoxEmployeeId.Text);
                    DialogResult result = MessageBox.Show(employeeId + " has been deleted successfully.", "Message", MessageBoxButtons.OK);
                    if (result == DialogResult.OK)
                    {
                        ClearAll(Action.Delete);
                    }
                }
            }
        }
        private void BtnClearAll_Click(object sender, EventArgs e)
        {
            ErrorProvider.Clear();
            ClearAll(Action.ClearAll);
        }

        private void BtnShowSalary_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start(_documentsDirectory);
        }

        private void BtnAddPhoto_Click(object sender, EventArgs e)
        {
            OpenFileDialog.InitialDirectory = _documentsDirectory;
            OpenFileDialog.Filter = "All files |*.*";
            OpenFileDialog.ShowDialog();
        }

        private void BtnDeletePhoto_Click(object sender, EventArgs e)
        {
            PicBoxPhoto.Image = null;
        }

        #endregion

        #region ComboBox Events
        private void CmbMaritalStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CmbMaritalStatus.Text.ToLower() == "married")
            {
                RichTextBoxSpouseName.ReadOnly = false;
            }
        }

        #endregion

        #region MaskTextbox Events
        private void MaskDateOfBirth_KeyUp(object sender, KeyEventArgs e)
        {
            if (IsValidDate(MaskDateOfBirth.Text))
            {
                string currentEnglishDate = DateTime.Now.ToString("yyyy/MM/dd");
                string currentNepaliDate = DateMapper.MapEnglishToNepali(currentEnglishDate);
                string currentNepaliYear = currentNepaliDate.Substring(0, 4);

                string dateOfBirth = MaskDateOfBirth.Text;
                string birthYear = dateOfBirth.Substring(0, 4);
                RichTextBoxAge.Text = (Convert.ToInt32(currentNepaliYear) - Convert.ToInt32(birthYear)).ToString();
            }
            else
            {
                RichTextBoxAge.Text = string.Empty;
            }
        }

        #endregion

        #region RichTextbox Events

        private void RichTextBoxContactNo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void RichTextBoxCitizenshipNo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '-') && (e.KeyChar != '/'))
            {
                e.Handled = true;
            }
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

        #endregion

        #region Helper Functions

        public void PopulateEmployee(string employeeId)
        {
            ErrorProvider.Clear();

            var employee = _employeeService.GetEmployee(employeeId);

            RichTextBoxEmployeeId.Text = employeeId;
            RichTextBoxName.Text = employee.EmployeeName;
            RichTextBoxTempAddress.Text = employee.TempAddress;
            RichTextBoxPermAddress.Text = employee.PermAddress;
            RichTextBoxContactNo.Text = employee.ContactNumber.ToString();
            RichTextBoxEmail.Text = employee.Email;
            RichTextBoxCitizenshipNo.Text = employee.CitizenshipNumber.ToString();
            RichTextBoxEducation.Text = employee.Education;
            MaskDateOfBirth.Text = employee.DateOfBirth;
            RichTextBoxAge.Text = employee.Age.ToString();
            CmbBloodGroup.Text = employee.BloodGroup;
            MaskAppointmentDate.Text = employee.AppointmentDate;
            RichTextBoxFatherName.Text = employee.FatherName;
            RichTextBoxMotherName.Text = employee.MotherName;
            CmbGender.SelectedIndex = employee.Gender.ToLower() == "male" ? 1 : (employee.MaritalStatus.ToLower() == "single" ? 2 : 0);
            CmbMaritalStatus.SelectedIndex = employee.MaritalStatus.ToLower() == "single" ? 1 : (employee.MaritalStatus.ToLower() == "married" ? 2 : 0);
            RichTextBoxSpouseName.Text = employee.SpouseName;
            RichTextBoxPost.Text = employee.Post;
            CmbPostStatus.Text = employee.PostStatus;
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

            RichTextBoxName.Enabled = false;
            RichTextBoxTempAddress.Enabled = false;
            RichTextBoxPermAddress.Enabled = false;
            RichTextBoxContactNo.Enabled = false;
            RichTextBoxEmail.Enabled = false;
            RichTextBoxCitizenshipNo.Enabled = false;
            RichTextBoxEducation.Enabled = false;
            MaskDateOfBirth.Enabled = false;
            CmbBloodGroup.Enabled = false;
            MaskAppointmentDate.Enabled = false;
            RichTextBoxFatherName.Enabled = false;
            RichTextBoxMotherName.Enabled = false;
            CmbGender.Enabled = false;
            CmbMaritalStatus.Enabled = false;
            RichTextBoxSpouseName.Enabled = false;
            RichTextBoxPost.Enabled = false;
            CmbPostStatus.Enabled = false;
            MaskResignationDate.Enabled = false;

            BtnSave.Enabled = false;
            BtnEdit.Enabled = true;
            BtnUpdate.Enabled = false;
            BtnDelete.Enabled = true;
            BtnAddPhoto.Enabled = false;
            BtnDeletePhoto.Enabled = false;
        }

        private void AutoPopulateControls()
        {
            this.ActiveControl = RichTextBoxName;

            CmbBloodGroup.SelectedIndex = 0;
            CmbGender.SelectedIndex = 0;
            CmbMaritalStatus.SelectedIndex = 0;
            CmbPostStatus.SelectedIndex = 0;
            RichTextBoxSpouseName.ReadOnly = true;
            MaskResignationDate.Enabled = false;

            BtnSave.Enabled = false;
            BtnEdit.Enabled = false;
            BtnUpdate.Enabled = false;
            BtnDelete.Enabled = false;
        }

        private void ClearAll(Action action)
        {
            if (action == Action.Save || action == Action.Update || action == Action.Delete || action == Action.ClearAll)
            {
                RichTextBoxEmployeeId.Clear();
            }
            RichTextBoxName.Clear();
            RichTextBoxTempAddress.Clear();
            RichTextBoxPermAddress.Clear();
            RichTextBoxContactNo.Clear();
            RichTextBoxEmail.Clear();
            RichTextBoxCitizenshipNo.Clear();
            RichTextBoxEducation.Clear();
            MaskDateOfBirth.Clear();
            CmbBloodGroup.SelectedIndex = 0;
            RichTextBoxAge.Clear();
            MaskAppointmentDate.Clear();
            RichTextBoxFatherName.Clear();
            RichTextBoxMotherName.Clear();
            CmbGender.SelectedIndex = 0;
            CmbMaritalStatus.SelectedIndex = 0;
            RichTextBoxSpouseName.Clear();
            RichTextBoxPost.Clear();
            CmbPostStatus.SelectedIndex = 0;
            MaskResignationDate.Clear();
            PicBoxPhoto.Image = null;
        }

        private void EnableControls(Action action)
        {
            RichTextBoxName.Enabled = true;
            RichTextBoxTempAddress.Enabled = true;
            RichTextBoxPermAddress.Enabled = true;
            RichTextBoxContactNo.Enabled = true;
            RichTextBoxEmail.Enabled = true;
            RichTextBoxCitizenshipNo.Enabled = true;
            RichTextBoxEducation.Enabled = true;
            MaskDateOfBirth.Enabled = true;
            CmbBloodGroup.Enabled = true;
            MaskAppointmentDate.Enabled = true;
            RichTextBoxFatherName.Enabled = true;
            RichTextBoxMotherName.Enabled = true;
            CmbGender.Enabled = true;
            CmbMaritalStatus.Enabled = true;
            RichTextBoxSpouseName.Enabled = true;
            RichTextBoxPost.Enabled = true;
            CmbPostStatus.Enabled = true;

            if (action == Action.AddNew)
            {
                CmbGender.SelectedIndex = 0;
                CmbMaritalStatus.SelectedIndex = 0;
                CmbPostStatus.SelectedIndex = 0;

                BtnAddNew.Enabled = false;
                BtnSave.Enabled = true;
                BtnEdit.Enabled = false;
                BtnUpdate.Enabled = false;
                BtnDelete.Enabled = false;
                BtnClearAll.Enabled = true;
                BtnAddPhoto.Enabled = true;
                BtnDeletePhoto.Enabled = true;
            }

            else if (action == Action.Edit)
            {
                MaskResignationDate.Enabled = true;

                BtnSave.Enabled = false;
                BtnUpdate.Enabled = true;
                BtnClearAll.Enabled = false;

                BtnAddPhoto.Enabled = true;
                BtnDeletePhoto.Enabled = true;
            }

            else if (action == Action.Update)
            {
                BtnAddNew.Enabled = true;
                BtnEdit.Enabled = false;
                BtnUpdate.Enabled = false;
                BtnDelete.Enabled = false;
                BtnClearAll.Enabled = true;
                BtnSave.Enabled = false;
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

            if (string.IsNullOrEmpty(RichTextBoxName.Text))
            {
                ErrorProvider.SetError(RichTextBoxName, "Please Enter Employee Name");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxTempAddress.Text))
            {
                ErrorProvider.SetError(RichTextBoxTempAddress, "Please Enter Temp Address");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxPermAddress.Text))
            {
                ErrorProvider.SetError(RichTextBoxPermAddress, "Please Enter Perm Address");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxContactNo.Text))
            {
                ErrorProvider.SetError(RichTextBoxContactNo, "Please Enter Contact No");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxEmail.Text))
            {
                ErrorProvider.SetError(RichTextBoxEmail, "Please Enter Email Id");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxCitizenshipNo.Text))
            {
                ErrorProvider.SetError(RichTextBoxCitizenshipNo, "Please Enter Citizenship No");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxEducation.Text))
            {
                ErrorProvider.SetError(RichTextBoxEducation, "Please Enter Education");
                status = false;
            }
            if (!IsValidDate(MaskDateOfBirth.Text))
            {
                ErrorProvider.SetError(MaskDateOfBirth, "Please Enter Date Of Birth");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxAge.Text))
            {
                ErrorProvider.SetError(RichTextBoxAge, "Please Enter Age");
                status = false;
            }
            if (CmbBloodGroup.SelectedIndex == 0)
            {
                ErrorProvider.SetError(CmbBloodGroup, "Please Choose Blood Group");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxFatherName.Text))
            {
                ErrorProvider.SetError(RichTextBoxFatherName, "Please Enter Father Name");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxMotherName.Text))
            {
                ErrorProvider.SetError(RichTextBoxMotherName, "Please Enter Mother Name");
                status = false;
            }
            if (CmbGender.SelectedIndex == 0)
            {
                ErrorProvider.SetError(CmbGender, "Please Choose Gender");
                status = false;
            }
            if (CmbMaritalStatus.SelectedIndex == 0)
            {
                ErrorProvider.SetError(CmbMaritalStatus, "Please Choose Marital Status");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxSpouseName.Text) && CmbMaritalStatus.SelectedIndex != 1)
            {
                ErrorProvider.SetError(RichTextBoxSpouseName, "Please Enter Spouse Name");
                status = false;
            }
            if (string.IsNullOrEmpty(RichTextBoxPost.Text))
            {
                ErrorProvider.SetError(RichTextBoxPost, "Please Enter Post");
                status = false;
            }
            if (CmbPostStatus.SelectedIndex == 0)
            {
                ErrorProvider.SetError(CmbPostStatus, "Please Choose Post Status");
                status = false;
            }
            if (!IsValidDate(MaskAppointmentDate.Text))
            {
                ErrorProvider.SetError(MaskAppointmentDate, "Please Enter Appointment Date");
                status = false;
            }

            return status;
        }

        #endregion
    }
}
