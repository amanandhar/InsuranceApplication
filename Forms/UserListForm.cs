using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class UserListForm : Form
    {
        private readonly IUserService _userService;
        public IUserListForm _userListForm;

        private readonly string _username;

        public UserListForm(string username, IUserService userService, IUserListForm userListForm)
        {
            InitializeComponent();

            _username = username;
            _userService = userService;
            _userListForm = userListForm;
        }

        #region Form Load Event
        private void UserListForm_Load(object sender, EventArgs e)
        {
            LoadUsers();
        }
        #endregion

        #region Data Grid Event
        private void DataGridUserList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (!(sender is DataGridView dgv))
            {
                return;
            }
            else if (dgv.SelectedRows.Count == 1)
            {
                var selectedRow = dgv.SelectedRows[0];
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _userListForm.PopulateUser(id);
                Close();
            }
            else if (e.RowIndex > -1 && e.ColumnIndex > -1 && DataGridUserList.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                var selectedRow = DataGridUserList.CurrentRow;
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _userListForm.PopulateUser(id);
                Close();
            }
        }

        private void DataGridUserList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridUserList.Columns["Id"].Visible = false;
            DataGridUserList.Columns["Password"].Visible = false;
            DataGridUserList.Columns["IsReadOnly"].Visible = false;
            DataGridUserList.Columns["AddedDate"].Visible = false;
            DataGridUserList.Columns["AddedBy"].Visible = false;
            DataGridUserList.Columns["UpdatedDate"].Visible = false;
            DataGridUserList.Columns["UpdatedBy"].Visible = false;

            DataGridUserList.Columns["Username"].HeaderText = "Username";
            DataGridUserList.Columns["Username"].Width = 180;
            DataGridUserList.Columns["Username"].DisplayIndex = 0;

            DataGridUserList.Columns["Type"].HeaderText = "Type";
            DataGridUserList.Columns["Type"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridUserList.Columns["Type"].DisplayIndex = 1;

            foreach (DataGridViewRow row in DataGridUserList.Rows)
            {
                DataGridUserList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridUserList.RowHeadersWidth = 50;
                DataGridUserList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion

        #region Helper Methods
        private void LoadUsers()
        {
            var user = _userService.GetUser(_username);
            var users = _userService.GetUsers(_username, user.Type).ToList();

            var bindingList = new BindingList<User>(users);
            var source = new BindingSource(bindingList, null);
            DataGridUserList.DataSource = source;
        }
        #endregion
    }
}
