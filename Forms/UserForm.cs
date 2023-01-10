using InsuranceApplication.DTOs;
using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class UserForm : Form, IUserListForm
    {
        private readonly IUserService _userService;
        private bool _isPasswordChanged;
        private readonly string _username;

        #region Enum
        private enum Action
        {
            Add,
            Save,
            Edit,
            Update,
            Delete,
            Load,
            PopulateUser,
            None
        }
        #endregion 

        public UserForm(string username, IUserService userService)
        {
            InitializeComponent();
            _username = username;
            _userService = userService;
        }

        private void UserForm_Load(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Load);
            LoadUserTypes();
        }

        #region Combo Box Event
        private void ComboUserType_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }
        #endregion

        #region Button Click Event
        private void BtnSearch_Click(object sender, EventArgs e)
        {
            UserListForm userListForm = new UserListForm(_username, _userService, this);
            userListForm.ShowDialog();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            ClearAllFields();
            EnableFields();
            EnableFields(Action.Add);
            TxtBoxUsername.Focus();
        }
        private void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateUserInfo())
                {
                    var username = TxtBoxUsername.Text.Trim();
                    var password = TxtBoxPassword.Text.Trim();
                    var confirmPassword = TxtBoxConfirmPassword.Text.Trim();

                    if (string.IsNullOrWhiteSpace(username))
                    {
                        var errorResult = MessageBox.Show("Username is empty.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxUsername.Focus();
                        }
                    }
                    else if (string.IsNullOrWhiteSpace(password))
                    {
                        var errorResult = MessageBox.Show("Password is empty.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxPassword.Focus();
                        }
                    }
                    else if (string.IsNullOrWhiteSpace(confirmPassword) || (password != confirmPassword))
                    {
                        var errorResult = MessageBox.Show("Password does not match.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxPassword.Focus();
                        }
                    }
                    else if (_userService.IsUserExist(username))
                    {
                        var errorResult = MessageBox.Show("Username already exists.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxUsername.Focus();
                        }
                    }
                    else
                    {
                        var user = new User
                        {
                            Username = TxtBoxUsername.Text.Trim(),
                            Password = Cryptography.Encrypt(TxtBoxPassword.Text.Trim()),
                            Type = ComboUserType.Text.Trim(),
                            AddedBy = _username,
                            AddedDate = DateTime.Now
                        };

                        _userService.AddUser(user);

                        DialogResult result = MessageBox.Show(user.Username + " has been added successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (result == DialogResult.OK)
                        {
                            ClearAllFields();
                            EnableFields();
                            EnableFields(Action.Save);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnEdit_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Edit);
        }

        private void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateUserInfo())
                {
                    var username = TxtBoxUsername.Text.Trim();
                    var password = TxtBoxPassword.Text.Trim();
                    var confirmPassword = TxtBoxConfirmPassword.Text.Trim();

                    if (string.IsNullOrWhiteSpace(username))
                    {
                        var errorResult = MessageBox.Show("Username is empty.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxUsername.Focus();
                        }
                    }
                    else if (string.IsNullOrWhiteSpace(password))
                    {
                        var errorResult = MessageBox.Show("Password is empty.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxPassword.Focus();
                        }
                    }
                    else if (string.IsNullOrWhiteSpace(confirmPassword) || (password != confirmPassword))
                    {
                        var errorResult = MessageBox.Show("Password does not match.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        if (errorResult == DialogResult.OK)
                        {
                            TxtBoxPassword.Focus();
                        }
                    }
                    else
                    {
                        var user = new User
                        {
                            Username = TxtBoxUsername.Text.Trim(),
                            Password = _isPasswordChanged ? Cryptography.Encrypt(TxtBoxPassword.Text.Trim()) : TxtBoxPassword.Text.Trim(),
                            Type = ComboUserType.Text.Trim(),
                            UpdatedBy = _username,
                            UpdatedDate = DateTime.Now
                        };

                        _userService.UpdateUser(username, user);
                        DialogResult result = MessageBox.Show(username + " has been updated successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (result == DialogResult.OK)
                        {
                            ClearAllFields();
                            EnableFields();
                            EnableFields(Action.Update);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult deleteResult = MessageBox.Show(Constants.MESSAGE_BOX_DELETE_MESSAGE, "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (deleteResult == DialogResult.Yes)
                {
                    var username = TxtBoxUsername.Text.Trim();
                    if (_userService.DeleteUser(username))
                    {
                        DialogResult result = MessageBox.Show(username + " has been deleted successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (result == DialogResult.OK)
                        {
                            ClearAllFields();
                            EnableFields();
                            EnableFields(Action.Delete);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }
        #endregion

        #region TextBox Event
        private void TxtBoxPassword_KeyDown(object sender, KeyEventArgs e)
        {
            _isPasswordChanged = true;
        }

        private void TxtBoxConfirmPassword_KeyDown(object sender, KeyEventArgs e)
        {
            _isPasswordChanged = true;
        }
        #endregion

        #region Helper Methods
        private void ClearAllFields()
        {
            TxtBoxUsername.Clear();
            TxtBoxPassword.Clear();
            TxtBoxConfirmPassword.Clear();
            ComboUserType.Text = string.Empty;
        }

        public void PopulateUser(long id)
        {
            var user = _userService.GetUser(id);

            TxtBoxUsername.Text = user.Username;
            ComboUserType.Text = user.Type;
            TxtBoxPassword.Text = user.Password;
            TxtBoxConfirmPassword.Text = user.Password;

            EnableFields();
            EnableFields(Action.PopulateUser);
            _isPasswordChanged = false;
        }

        private void EnableFields(Action action = Action.None)
        {
            if (action == Action.Load)
            {
                BtnAdd.Enabled = true;
            }
            else if (action == Action.Add)
            {
                BtnSave.Enabled = true;

                TxtBoxUsername.Enabled = true;
                TxtBoxPassword.Enabled = true;
                TxtBoxConfirmPassword.Enabled = true;
                ComboUserType.Enabled = true;
            }
            else if (action == Action.Save)
            {
                BtnAdd.Enabled = true;
            }
            else if (action == Action.Edit)
            {
                TxtBoxUsername.Enabled = true;
                TxtBoxPassword.Enabled = true;
                TxtBoxConfirmPassword.Enabled = true;
                ComboUserType.Enabled = true;

                BtnUpdate.Enabled = true;
                BtnDelete.Enabled = true;
            }
            else if (action == Action.Update)
            {
                BtnAdd.Enabled = true;
            }
            else if (action == Action.Delete)
            {
                BtnAdd.Enabled = true;
            }
            else if (action == Action.PopulateUser)
            {
                BtnAdd.Enabled = true;
                BtnEdit.Enabled = true;
                BtnDelete.Enabled = true;
            }
            else
            {
                TxtBoxUsername.Enabled = false;
                TxtBoxPassword.Enabled = false;
                TxtBoxConfirmPassword.Enabled = false;
                ComboUserType.Enabled = false;

                BtnAdd.Enabled = false;
                BtnSave.Enabled = false;
                BtnEdit.Enabled = false;
                BtnUpdate.Enabled = false;
                BtnDelete.Enabled = false;
            }
        }

        private void LoadUserTypes()
        {
            ComboUserType.Items.Clear();
            ComboUserType.ValueMember = "Id";
            ComboUserType.DisplayMember = "Value";

            ComboUserType.Items.Add(new ComboBoxItem { Id = Constants.ADMIN, Value = Constants.ADMIN });
            ComboUserType.Items.Add(new ComboBoxItem { Id = Constants.STAFF, Value = Constants.STAFF });
            ComboUserType.Items.Add(new ComboBoxItem { Id = Constants.GUEST, Value = Constants.GUEST });
        }
        #endregion

        #region Validation
        private bool ValidateUserInfo()
        {
            var isValidated = false;

            var username = TxtBoxUsername.Text.Trim();
            var userType = ComboUserType.Text.Trim();
            var password = TxtBoxPassword.Text.Trim();
            var confirmPassword = TxtBoxConfirmPassword.Text.Trim();

            if (string.IsNullOrWhiteSpace(username)
                || string.IsNullOrWhiteSpace(userType)
                || string.IsNullOrWhiteSpace(password)
                || string.IsNullOrWhiteSpace(confirmPassword))
            {
                MessageBox.Show("Please enter following fields: " +
                    "\n * Username " +
                    "\n * User Type " +
                    "\n * Password " +
                    "\n * Confirm Password", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                isValidated = true;
            }

            return isValidated;
        }
        #endregion
    }
}
