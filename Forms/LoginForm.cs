using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Configuration;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class LoginForm : Form
    {
        private readonly IUserService _userService;
        private readonly IDatabaseService _databaseService;

        public string Username { get; private set; }

        #region Constructor
        public LoginForm(IUserService userService, IDatabaseService databaseService)
        {
            InitializeComponent();
            _userService = userService;
            _databaseService = databaseService;
        }
        #endregion

        #region Form Event
        private void LoginForm_Load(object sender, EventArgs e)
        {
            TxtBoxUsername.Focus();
        }
        #endregion

        #region Button Event
        private void BtnLogin_Click(object sender, EventArgs e)
        {
            Login();
        }

        private void BtnCancel_Click(object sender, EventArgs e)
        {
            Close();
        }
        #endregion

        #region Checkbox Events
        private void ChkBoxShow_CheckedChanged(object sender, EventArgs e)
        {
            if (ChkBoxShow.Checked == true)
            {
                TxtBoxPassword.UseSystemPasswordChar = false;
            }
            else
            {
                TxtBoxPassword.UseSystemPasswordChar = true;
            }
        }
        #endregion

        #region Textbox Event
        private void TxtBoxPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                e.Handled = e.SuppressKeyPress = true;
                Login();
            }
        }
        #endregion

        #region Helper Methods
        private void Login()
        {
            try
            {
                var username = TxtBoxUsername.Text.Trim();
                var password = TxtBoxPassword.Text.Trim();

                if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
                {
                    var error = MessageBox.Show("Username or Password is empty.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    if (error == DialogResult.OK)
                    {
                        return;
                    }
                }

                var encryptedPassword = Cryptography.Encrypt(password);
                var result = _userService.IsUserExist(username, encryptedPassword);
                if (result)
                {
                    BackupDatabsase();
                    Username = username;
                    DialogResult = DialogResult.OK;
                }
                else
                {
                    var error = MessageBox.Show("Username or Password is invalid.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    if (error == DialogResult.OK)
                    {
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BackupDatabsase()
        {
            var dbBackupPrefix = ConfigurationManager.AppSettings[Constants.DB_BACKUP_PREFIX].ToString();
            var dbBackupLocation = ConfigurationManager.AppSettings[Constants.DB_BACKUP_LOCATION].ToString();

            if (!string.IsNullOrWhiteSpace(dbBackupPrefix) && !string.IsNullOrWhiteSpace(dbBackupLocation))
            {
                _databaseService.BackupDatabase(dbBackupPrefix, dbBackupLocation);
            }
        }

        #endregion
    }
}
