using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class EmployeeListForm : Form
    {
        private readonly IEmployeeService _employeeService;
        public IEmployeeListForm _employeeListForm;
        private List<EmployeeView> _employeeViewList = new List<EmployeeView>();

        #region Constructor
        public EmployeeListForm(IEmployeeService employeeService, IEmployeeListForm employeeListForm)
        {
            _employeeService = employeeService;
            _employeeListForm = employeeListForm;
            InitializeComponent();
        }

        #endregion

        #region Form Load Event
        private void EmployeeListForm_Load(object sender, EventArgs e)
        {
            var employeeViewList = GetEmployees();
            LoadEmployees(employeeViewList);
            TxtBoxEmployeeName.Select();
        }
        #endregion

        #region Data Grid Event
        private void DataGridEmployeeList_CellDoubleClick_1(object sender, DataGridViewCellEventArgs e)
        {
            if (!(sender is DataGridView dgv))
            {
                return;
            }
            else if (dgv.SelectedRows.Count == 1)
            {
                var selectedRow = dgv.SelectedRows[0];
                string employeeId = selectedRow.Cells["EmployeeId"].Value.ToString();
                _employeeListForm.PopulateEmployee(employeeId);
                Close();
            }
            else if (e.RowIndex > -1 && e.ColumnIndex > -1 && DataGridEmployeeList.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                var selectedRow = DataGridEmployeeList.CurrentRow;
                string memberId = selectedRow.Cells["EmployeeId"].Value.ToString();
                _employeeListForm.PopulateEmployee(memberId);
                Close();
            }
        }

        private void DataGridEmployeeList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridEmployeeList.Columns["Id"].Visible = false;

            DataGridEmployeeList.Columns["EmployeeId"].HeaderText = "Id";
            DataGridEmployeeList.Columns["EmployeeId"].Width = 100;
            DataGridEmployeeList.Columns["EmployeeId"].DisplayIndex = 0;

            DataGridEmployeeList.Columns["EmployeeName"].HeaderText = "Name";
            DataGridEmployeeList.Columns["EmployeeName"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridEmployeeList.Columns["EmployeeName"].DisplayIndex = 1;

            foreach (DataGridViewRow row in DataGridEmployeeList.Rows)
            {
                DataGridEmployeeList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridEmployeeList.RowHeadersWidth = 50;
                DataGridEmployeeList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion

        private void dataGridEmployeeList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dgv = sender as DataGridView;
            if (dgv == null)
                return;
            if (dgv.CurrentRow.Selected && dgv.CurrentRow.Cells[0].Value != null)
            {
                string employeeId = dgv.CurrentRow.Cells[0].Value.ToString();
                _employeeListForm.PopulateEmployee(employeeId);
            }

            this.Close();
        }

        #region Rich Textbox Event
        private void TxtBoxEmployeeName_KeyUp(object sender, KeyEventArgs e)
        {
            SearchEmployees();
        }

        private void TxtBoxEmployeeId_KeyUp(object sender, KeyEventArgs e)
        {
            SearchEmployees();
        }
        #endregion

        #region Helper Methods
        private List<EmployeeView> GetEmployees()
        {
            var employees = _employeeService.GetEmployees();
            _employeeViewList = employees.ToList().Select(x => new EmployeeView()
            {
                Id = x.Id,
                EmployeeId = x.EmployeeId,
                EmployeeName = x.EmployeeName,
            }).OrderBy(x => x.EmployeeId).ToList();

            return _employeeViewList;
        }

        private void LoadEmployees(List<EmployeeView> employeeViewList)
        {
            var bindingList = new BindingList<EmployeeView>(employeeViewList);
            var source = new BindingSource(bindingList, null);
            DataGridEmployeeList.DataSource = source;
        }

        private void SearchEmployees()
        {
            var employeeName = TxtBoxEmployeeName.Text;
            var employeeId = TxtBoxEmployeeId.Text;

            var employees = _employeeViewList.Where(x => x.EmployeeName.ToLower().StartsWith(employeeName.ToLower()) && x.EmployeeId.ToLower().StartsWith(employeeId.ToLower())).ToList();
            LoadEmployees(employees);
        }
        #endregion

    }
}
