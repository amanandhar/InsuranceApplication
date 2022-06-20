using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class EmployeeListForm : Form
    {
        private readonly IEmployeeService _employeeService;
        public IEmployeeListForm _employeeListForm;

        public EmployeeListForm(IEmployeeService employeeService, IEmployeeListForm employeeListForm)
        {
            _employeeService = employeeService;
            _employeeListForm = employeeListForm;
            InitializeComponent();
        }

        private void EmployeeListForm_Load(object sender, EventArgs e)
        {
            var employees = _employeeService.GetEmployees();
            var bindingList = new BindingList<Employee>(employees.ToList());
            var source = new BindingSource(bindingList, null);

            dataGridEmployeeList.AutoGenerateColumns = false;

            //Set Columns Count
            dataGridEmployeeList.ColumnCount = 2;

            //Add Columns
            dataGridEmployeeList.Columns[0].Name = "EmployeeId";
            dataGridEmployeeList.Columns[0].HeaderText = "Employee Id";
            dataGridEmployeeList.Columns[0].DataPropertyName = "EmployeeId";
            dataGridEmployeeList.Columns[0].Width = 100;

            dataGridEmployeeList.Columns[1].Name = "EmployeeName";
            dataGridEmployeeList.Columns[1].HeaderText = "Employee Name";
            dataGridEmployeeList.Columns[1].DataPropertyName = "EmployeeName";
            dataGridEmployeeList.Columns[1].Width = 265;

            dataGridEmployeeList.DataSource = source;
        }

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
    }
}
