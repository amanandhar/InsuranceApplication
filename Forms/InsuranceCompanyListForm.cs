using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class InsuranceCompanyListForm : Form
    {
        private readonly IInsuranceCompanyService _insuranceCompanyService;
        public IInsuranceCompanyListForm _insuranceCompanyListForm;

        #region Constructor
        public InsuranceCompanyListForm(IInsuranceCompanyService insuranceCompanyService,
            IInsuranceCompanyListForm insuranceCompanyListForm)
        {
            InitializeComponent();

            _insuranceCompanyService = insuranceCompanyService;
            _insuranceCompanyListForm = insuranceCompanyListForm;
        }
        #endregion

        #region Form Load
        private void InsuranceCompanyListForm_Load(object sender, EventArgs e)
        {
            LoadInsuranceCompanies();
        }
        #endregion

        #region Data Grid Event
        private void DataGridInsuranceCompanyList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (!(sender is DataGridView dgv))
            {
                return;
            }
            else if (dgv.SelectedRows.Count == 1)
            {
                var selectedRow = dgv.SelectedRows[0];
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _insuranceCompanyListForm.PopulateInsuranceCompany(id);
                Close();
            }
            else if (e.RowIndex > -1 && e.ColumnIndex > -1 && DataGridInsuranceCompanyList.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                var selectedRow = DataGridInsuranceCompanyList.CurrentRow;
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _insuranceCompanyListForm.PopulateInsuranceCompany(id);
                Close();
            }
        }

        private void DataGridInsuranceCompanyList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridInsuranceCompanyList.Columns["Id"].Visible = false;
            DataGridInsuranceCompanyList.Columns["HeadOfficeAddress"].Visible = false;
            DataGridInsuranceCompanyList.Columns["BranchOfficeAddress"].Visible = false;
            DataGridInsuranceCompanyList.Columns["HeadOfDepartment"].Visible = false;
            DataGridInsuranceCompanyList.Columns["Position"].Visible = false;
            DataGridInsuranceCompanyList.Columns["AgreementDate"].Visible = false;
            DataGridInsuranceCompanyList.Columns["EstablishedDate"].Visible = false;
            DataGridInsuranceCompanyList.Columns["AddedBy"].Visible = false;
            DataGridInsuranceCompanyList.Columns["AddedDate"].Visible = false;
            DataGridInsuranceCompanyList.Columns["UpdatedBy"].Visible = false;
            DataGridInsuranceCompanyList.Columns["UpdatedDate"].Visible = false;

            DataGridInsuranceCompanyList.Columns["SerialNumber"].HeaderText = "Serial Number";
            DataGridInsuranceCompanyList.Columns["SerialNumber"].Width = 180;
            DataGridInsuranceCompanyList.Columns["SerialNumber"].DisplayIndex = 0;

            DataGridInsuranceCompanyList.Columns["Name"].HeaderText = "Name";
            DataGridInsuranceCompanyList.Columns["Name"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridInsuranceCompanyList.Columns["Name"].DisplayIndex = 1;

            foreach (DataGridViewRow row in DataGridInsuranceCompanyList.Rows)
            {
                DataGridInsuranceCompanyList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridInsuranceCompanyList.RowHeadersWidth = 50;
                DataGridInsuranceCompanyList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion

        #region Helper Methods
        private void LoadInsuranceCompanies()
        {
            var insuranceCompanies = _insuranceCompanyService.GetInsuranceCompanies().ToList();

            var bindingList = new BindingList<InsuranceCompany>(insuranceCompanies);
            var source = new BindingSource(bindingList, null);
            DataGridInsuranceCompanyList.DataSource = source;
        }
        #endregion
    }
}
