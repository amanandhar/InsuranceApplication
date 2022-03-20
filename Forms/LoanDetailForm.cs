using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Linq;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class LoanDetailForm : Form, IInsuranceCompanyListForm
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();

        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private readonly ILoanDetailService _loanDetailService;

        private long _selectedLoanDetail;
        private string _baseImageFolder;

        #region Enum
        private enum Action
        {
            Load,
            SearchInsuranceCompany,
            AddInsuranceCompany,
            SearchMember,
            AddMember,
            ShowLoanDetail,
            SaveLoanDetail,
            EditLoanDetail,
            UpdateLoanDetail,
            ClearLoanDetail,
            DeleteLoanDetail,
            RenewInsurance,
            ShowDocumentDetail,
            ShowDistributedAmount,
            PopulateInsuranceCompany,
            PopulateMember,
            None
        }
        #endregion

        #region Constructor
        public LoanDetailForm(IInsuranceCompanyService insuranceCompanyService,
            ILoanDetailService loanDetailService)
        {
            InitializeComponent();
            _insuranceCompanyService = insuranceCompanyService;
            _loanDetailService = loanDetailService;
        }
        #endregion

        #region Form Load Event
        private void DashboardForm_Load(object sender, System.EventArgs e)
        {
            _baseImageFolder = ConfigurationManager.AppSettings[Constants.BASE_DOCUMENT_FOLDER].ToString();
        }
        #endregion

        #region Button Click Event

        private void BtnSearchInsuranceCompany_Click(object sender, System.EventArgs e)
        {
            var insuranceCompanyListForm = new InsuranceCompanyListForm(_insuranceCompanyService, this);
            insuranceCompanyListForm.ShowDialog();
        }

        private void BtnAddInsurance_Click(object sender, System.EventArgs e)
        {
            InsuranceCompanyForm insuranceForm = new InsuranceCompanyForm(_insuranceCompanyService);
            insuranceForm.ShowDialog();
        }

        private void BtnShowLoanDetail_Click(object sender, System.EventArgs e)
        {
            var loanDetails = GetLoanDetails();
            LoadLoanDetails(loanDetails);
        }

        private void BtnAddMember_Click(object sender, EventArgs e)
        {

        }

        private void BtnSaveLoanDetail_Click(object sender, EventArgs e)
        {
            var loanDetail = GetLoanDetail();

            _loanDetailService.AddLoanDetail(loanDetail);
        }

        private void BtnLoadDetailEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if (DataGridLoadDetailList.SelectedCells.Count == 1
                    || DataGridLoadDetailList.SelectedRows.Count == 1)
                {
                    DataGridViewRow selectedRow;
                    if (DataGridLoadDetailList.SelectedCells.Count == 1)
                    {
                        var selectedCell = DataGridLoadDetailList.SelectedCells[0];
                        selectedRow = DataGridLoadDetailList.Rows[selectedCell.RowIndex];
                    }
                    else
                    {
                        selectedRow = DataGridLoadDetailList.SelectedRows[0];
                    }

                    var selectedId = selectedRow?.Cells["Id"]?.Value?.ToString();
                    if (!string.IsNullOrWhiteSpace(selectedId))
                    {

                        var id = Convert.ToInt64(selectedId);
                        var loanDetail = _loanDetailService.GetLoanDetail(id);

                        TxtInsuranceCompanyId.Text = loanDetail.InsuranceCompanyId.ToString();
                        TxtInsuranceCompanyName.Text = "";
                        TxtMemberName.Text = loanDetail.MemberName;
                        TxtMemberAddress.Text = loanDetail.MemberAddress;
                        TxtMemberBenificiary.Text = loanDetail.MemberBeneficiary;
                        ComboMemberGender.Text = loanDetail.MemberGender;
                        MaskStartingDate.Text = loanDetail.StartingDate.ToString();
                        MaskRenewDate.Text = loanDetail.RenewDate.ToString();
                        RichPeriodInMonth.Text = loanDetail.PeriodInMonth.ToString();
                        MaskMaturatedDate.Text = loanDetail.MaturedDate.ToString();
                        TxtLoanAmount.Text = loanDetail.LoanAmount.ToString();
                        TxtPremium.Text = loanDetail.Premium.ToString();
                        TxtInsuranceAmount.Text = loanDetail.InsuranceAmount.ToString();
                        TxtMaturatedAmount.Text = loanDetail.MaturedDate.ToString();
                    }
                }
            }
            catch(Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }
        private void BtnUpdateLoanDetail_Click(object sender, EventArgs e)
        {
            var loanDetail = GetLoanDetail();

            _loanDetailService.UpdateLoanDetail(_selectedLoanDetail, loanDetail);
        }

        private void BtnClearLoanDetail_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        private void BtnDeleteLoanDetail_Click(object sender, System.EventArgs e)
        {
            try
            {
                if (DataGridLoadDetailList.SelectedCells.Count == 1
                    || DataGridLoadDetailList.SelectedRows.Count == 1)
                {
                    DataGridViewRow selectedRow;
                    if (DataGridLoadDetailList.SelectedCells.Count == 1)
                    {
                        var selectedCell = DataGridLoadDetailList.SelectedCells[0];
                        selectedRow = DataGridLoadDetailList.Rows[selectedCell.RowIndex];
                    }
                    else
                    {
                        selectedRow = DataGridLoadDetailList.SelectedRows[0];
                    }

                    var selectedId = selectedRow?.Cells["Id"]?.Value?.ToString();
                    if (!string.IsNullOrWhiteSpace(selectedId))
                    {
                        DialogResult deleteResult = MessageBox.Show(Constants.MESSAGE_BOX_DELETE_MESSAGE, "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                        if (deleteResult == DialogResult.Yes)
                        {
                            var id = Convert.ToInt64(selectedId);
                            if (_loanDetailService.DeleteLoanDetail(id))
                            {
                                DialogResult result = MessageBox.Show("Receipt has been deleted successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                if (result == DialogResult.OK)
                                {
                                    ClearInputFields();
                                    var loanDetails = GetLoanDetails();
                                    LoadLoanDetails(loanDetails);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnRenewInsurance_Click(object sender, EventArgs e)
        {

        }

        private void BtnDocumentDetails_Click(object sender, System.EventArgs e)
        {
            System.Diagnostics.Process.Start("explorer.exe", _baseImageFolder);
        }

        private void BtnDistributedAmount_Click(object sender, System.EventArgs e)
        {
            DistributedAmountForm distributedAmountForm = new DistributedAmountForm();
            distributedAmountForm.ShowDialog();
        }
        #endregion

        #region Data Grid Event
        private void DataGridLoadDetailList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridLoadDetailList.Columns["Id"].Visible = false;
            DataGridLoadDetailList.Columns["Beneficiary"].Visible = false;
            DataGridLoadDetailList.Columns["Gender"].Visible = false;
            DataGridLoadDetailList.Columns["StartingDate"].Visible = false;
            DataGridLoadDetailList.Columns["RenewDate"].Visible = false;
            DataGridLoadDetailList.Columns["PeriodInMonth"].Visible = false;
            DataGridLoadDetailList.Columns["MaturedDate"].Visible = false;
            DataGridLoadDetailList.Columns["LoanAmount"].Visible = false;
            DataGridLoadDetailList.Columns["Premium"].Visible = false;
            DataGridLoadDetailList.Columns["InsuranceAmount"].Visible = false;
            DataGridLoadDetailList.Columns["MaturedAmount"].Visible = false;
            DataGridLoadDetailList.Columns["ImagePath"].Visible = false;
            DataGridLoadDetailList.Columns["InsuranceCompanyId"].Visible = false;
            DataGridLoadDetailList.Columns["MemberId"].Visible = false;
            DataGridLoadDetailList.Columns["AddedBy"].Visible = false;
            DataGridLoadDetailList.Columns["AddedDate"].Visible = false;
            DataGridLoadDetailList.Columns["UpdatedBy"].Visible = false;
            DataGridLoadDetailList.Columns["UpdatedDate"].Visible = false;

            DataGridLoadDetailList.Columns["Name"].HeaderText = "Name";
            DataGridLoadDetailList.Columns["Name"].Width = 180;
            DataGridLoadDetailList.Columns["Name"].DisplayIndex = 0;

            DataGridLoadDetailList.Columns["Address"].HeaderText = "Address";
            DataGridLoadDetailList.Columns["Address"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridLoadDetailList.Columns["Address"].DisplayIndex = 1;

            foreach (DataGridViewRow row in DataGridLoadDetailList.Rows)
            {
                DataGridLoadDetailList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridLoadDetailList.RowHeadersWidth = 50;
                DataGridLoadDetailList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion 

        #region Helper Methods
        public void PopulateInsuranceCompany(long id)
        {
            var insuranceCompany = _insuranceCompanyService.GetInsuranceCompany(id);

            if(insuranceCompany != null)
            {
                TxtInsuranceCompanyId.Text = insuranceCompany?.SerialNumber;
                TxtInsuranceCompanyName.Text = insuranceCompany?.Name;
            }        
        }

        private List<LoanDetail> GetLoanDetails()
        {
            var loanDetails = _loanDetailService.GetLoanDetails().ToList();
            return loanDetails;
        }

        private void LoadLoanDetails(List<LoanDetail> loanDetails)
        {
            var bindingList = new BindingList<LoanDetail>(loanDetails);
            var source = new BindingSource(bindingList, null);
            DataGridLoadDetailList.DataSource = source;
        }

        private void ClearInputFields()
        {
            TxtInsuranceCompanyId.Clear();
            TxtInsuranceCompanyName.Clear();
            TxtMemberName.Clear();
            TxtMemberAddress.Clear();
            TxtMemberBenificiary.Clear();
            ComboMemberGender.Text = string.Empty;
            MaskStartingDate.Clear();
            MaskRenewDate.Clear();
            RichPeriodInMonth.Clear();
            MaskMaturatedDate.Clear();
            TxtLoanAmount.Clear();
            TxtPremium.Clear();
            TxtInsuranceAmount.Clear();
            TxtMaturatedAmount.Clear();
        }

        private void EnableFields(Action action = Action.None)
        {
            if(action == Action.Load)
            {
                TxtInsuranceCompanyId.Enabled = true;
                TxtInsuranceCompanyName.Enabled = true;
                TxtMemberName.Enabled = true;
                TxtMemberAddress.Enabled = true;
                TxtMemberBenificiary.Enabled = true;
                ComboMemberGender.Enabled = true;
                MaskStartingDate.Enabled = true;
                MaskRenewDate.Enabled = true;
                RichPeriodInMonth.Enabled = true;
                MaskMaturatedDate.Enabled = true;
                TxtLoanAmount.Enabled = true;
                TxtPremium.Enabled = true;
                TxtInsuranceAmount.Enabled = true;
                TxtMaturatedAmount.Enabled = true;
            }
            else
            {
                TxtInsuranceCompanyId.Enabled = false;
                TxtInsuranceCompanyName.Enabled = false;
                TxtMemberName.Enabled = false;
                TxtMemberAddress.Enabled = false;
                TxtMemberBenificiary.Enabled = false;
                ComboMemberGender.Enabled = false;
                MaskStartingDate.Enabled = false;
                MaskRenewDate.Enabled = false;
                RichPeriodInMonth.Enabled = false;
                MaskMaturatedDate.Enabled = false;
                TxtLoanAmount.Enabled = false;
                TxtPremium.Enabled = false;
                TxtInsuranceAmount.Enabled = false;
                TxtMaturatedAmount.Enabled = false;
            }
            
        }

        private LoanDetail GetLoanDetail()
        {
            var insuranceCompanyId = TxtInsuranceCompanyId.Text.Trim();
            var memberName = TxtMemberName.Text.Trim();
            var memberAddress = TxtMemberAddress.Text.Trim();
            var memberBenificiary = TxtMemberBenificiary.Text.Trim();
            var memberGender = ComboMemberGender.Text.Trim();
            var startingDate = MaskStartingDate.Text.Trim();
            var renewDate = MaskRenewDate.Text.Trim();
            var periodInMonth = RichPeriodInMonth.Text.Trim();
            var maturatedDate = MaskMaturatedDate.Text.Trim();
            var loanAmount = TxtLoanAmount.Text.Trim();
            var premium = TxtPremium.Text.Trim();
            var insuranceAmount = TxtInsuranceAmount.Text.Trim();
            var maturatedAmount = TxtMaturatedAmount.Text.Trim();

            var loanDetail = new LoanDetail()
            {
                InsuranceCompanyId = Convert.ToInt64(insuranceCompanyId),
                MemberName = memberName,
                MemberAddress = memberAddress,
                MemberBeneficiary = memberBenificiary,
                MemberGender = memberGender,
                StartingDate = Convert.ToDateTime(startingDate),
                RenewDate = Convert.ToDateTime(renewDate),
                PeriodInMonth = Convert.ToInt32(periodInMonth),
                MaturedDate = Convert.ToDateTime(maturatedDate),
                LoanAmount = Convert.ToDecimal(loanAmount),
                Premium = Convert.ToDecimal(premium),
                InsuranceAmount = Convert.ToDecimal(insuranceAmount),
                MaturedAmount = Convert.ToDecimal(maturatedAmount),
                AddedBy = "TestUser",
                AddedDate = DateTime.Now
            };

            return loanDetail;
        }
        #endregion
    }
}
