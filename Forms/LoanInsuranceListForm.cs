using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class LoanInsuranceListForm : Form
    {
        private readonly ILoanDetailService _loanDetailService;
        public ILoanDetailListForm _loanDetailListForm;

        #region Constructor
        public LoanInsuranceListForm(ILoanDetailService loanDetailService, ILoanDetailListForm loanDetailListForm)
        {
            InitializeComponent();

            _loanDetailService = loanDetailService;
            _loanDetailListForm = loanDetailListForm;
        }
        #endregion

        #region Form Load Event
        private void LoanDetailListForm_Load(object sender, EventArgs e)
        {
            LoadLoanDetails();
        }
        #endregion

        #region Data Grid Event
        private void DataGridLoanDetailList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (!(sender is DataGridView dgv))
            {
                return;
            }
            else if (dgv.SelectedRows.Count == 1)
            {
                var selectedRow = dgv.SelectedRows[0];
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _loanDetailListForm.PopulateLoanDetail(id);
                Close();
            }
            else if (e.RowIndex > -1 && e.ColumnIndex > -1 && DataGridLoanDetailList.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
            {
                var selectedRow = DataGridLoanDetailList.CurrentRow;
                long id = Convert.ToInt64(selectedRow.Cells["Id"].Value.ToString());
                _loanDetailListForm.PopulateLoanDetail(id);
                Close();
            }
        }

        private void DataGridLoanDetailList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridLoanDetailList.Columns["Id"].Visible = false;
            DataGridLoanDetailList.Columns["InsuranceCompanyId"].Visible = false;
            DataGridLoanDetailList.Columns["MemberAddress"].Visible = false;
            DataGridLoanDetailList.Columns["MemberBeneficiary"].Visible = false;
            DataGridLoanDetailList.Columns["MemberRelationship"].Visible = false;
            DataGridLoanDetailList.Columns["MemberGender"].Visible = false;
            DataGridLoanDetailList.Columns["StartingDate"].Visible = false;
            DataGridLoanDetailList.Columns["RenewDate"].Visible = false;
            DataGridLoanDetailList.Columns["PeriodInMonth"].Visible = false;
            DataGridLoanDetailList.Columns["MaturedDate"].Visible = false;
            DataGridLoanDetailList.Columns["LoanAmount"].Visible = false;
            DataGridLoanDetailList.Columns["Premium"].Visible = false;
            DataGridLoanDetailList.Columns["InsuranceAmount"].Visible = false;
            DataGridLoanDetailList.Columns["MaturedAmount"].Visible = false;
            DataGridLoanDetailList.Columns["ImagePath"].Visible = false;
            DataGridLoanDetailList.Columns["AddedBy"].Visible = false;
            DataGridLoanDetailList.Columns["AddedDate"].Visible = false;
            DataGridLoanDetailList.Columns["UpdatedBy"].Visible = false;
            DataGridLoanDetailList.Columns["UpdatedDate"].Visible = false;

            DataGridLoanDetailList.Columns["MembershipNo"].HeaderText = "Membership No";
            DataGridLoanDetailList.Columns["MembershipNo"].Width = 150;
            DataGridLoanDetailList.Columns["MembershipNo"].DisplayIndex = 0;

            DataGridLoanDetailList.Columns["MemberName"].HeaderText = "Name";
            DataGridLoanDetailList.Columns["MemberName"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridLoanDetailList.Columns["MemberName"].DisplayIndex = 1;

            foreach (DataGridViewRow row in DataGridLoanDetailList.Rows)
            {
                DataGridLoanDetailList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridLoanDetailList.RowHeadersWidth = 50;
                DataGridLoanDetailList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion

        #region Helper Methods
        private void LoadLoanDetails()
        {
            var loanDetails = _loanDetailService.GetLoanDetails().ToList();

            var bindingList = new BindingList<LoanDetail>(loanDetails);
            var source = new BindingSource(bindingList, null);
            DataGridLoanDetailList.DataSource = source;
        }
        #endregion
    }
}
