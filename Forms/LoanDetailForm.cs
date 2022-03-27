using InsuranceApplication.DTOs;
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
    public partial class LoanDetailForm : Form, IInsuranceCompanyListForm, ILoanDetailListForm
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();

        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private readonly ILoanDetailService _loanDetailService;

        private long _selectedLoanDetailId = 0;
        private long _selectedInsuranceCompanyId = 0;
        private string _baseImageFolder;

        #region Enum
        private enum Action
        {
            LoadForm,
            AddInsuranceCompany,
            ShowLoanDetail,
            AddLoanDetail,
            SaveLoanDetail,
            EditLoanDetail,
            UpdateLoanDetail,
            ClearLoanDetail,
            DeleteLoanDetail,
            RenewInsurance,
            ShowDocumentDetail,
            ShowDistributedAmount,
            PopulateInsuranceCompany,
            PopulateLoanDetail,
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
            LoadRelationships();
            LoadGenders();

            EnableFields();
            EnableFields(Action.LoadForm);
        }
        #endregion

        #region Button Click Event

        private void BtnSearchInsuranceCompany_Click(object sender, System.EventArgs e)
        {
            var insuranceCompanyListForm = new InsuranceCompanyListForm(_insuranceCompanyService, this);
            insuranceCompanyListForm.ShowDialog();

            TxtMembershipNo.Focus();
        }

        private void BtnSearchLoanDetail_Click(object sender, EventArgs e)
        {
            var loanDetailListForm = new LoanDetailListForm(_loanDetailService, this);
            loanDetailListForm.ShowDialog();
        }

        private void BtnAddInsuranceCompany_Click(object sender, EventArgs e)
        {
            InsuranceCompanyForm insuranceForm = new InsuranceCompanyForm(_insuranceCompanyService);
            insuranceForm.ShowDialog();
        }

        private void BtnShowLoanDetail_Click(object sender, System.EventArgs e)
        {
            var loanDetails = GetLoanDetails();
            LoadLoanDetails(loanDetails);

            EnableFields();
            EnableFields(Action.ShowLoanDetail);
        }

        private void BtnAddLoanDetail_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.AddLoanDetail);
        }

        private void BtnSaveLoanDetail_Click(object sender, EventArgs e)
        {
            try
            {
                var loanDetail = GetLoanDetail();
                _loanDetailService.AddLoanDetail(loanDetail);
                DialogResult result = MessageBox.Show("Loan detail has been saved successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (result == DialogResult.OK)
                {
                    ClearInputFields();
                    EnableFields();
                    EnableFields(Action.SaveLoanDetail);
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnEditLoadDetail_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.EditLoanDetail);
        }

        private void BtnUpdateLoanDetail_Click(object sender, EventArgs e)
        {
            try
            {
                var loanDetail = GetLoanDetail();
                _loanDetailService.UpdateLoanDetail(_selectedLoanDetailId, loanDetail);
                DialogResult result = MessageBox.Show("Loan detail has been updated successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (result == DialogResult.OK)
                {
                    ClearInputFields();
                    EnableFields();
                    EnableFields(Action.UpdateLoanDetail);
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnClearLoanDetail_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        private void BtnDeleteLoanDetail_Click(object sender, System.EventArgs e)
        {
            try
            {
                if (DataGridLoanDetailList.SelectedCells.Count == 1
                    || DataGridLoanDetailList.SelectedRows.Count == 1)
                {
                    DataGridViewRow selectedRow;
                    if (DataGridLoanDetailList.SelectedCells.Count == 1)
                    {
                        var selectedCell = DataGridLoanDetailList.SelectedCells[0];
                        selectedRow = DataGridLoanDetailList.Rows[selectedCell.RowIndex];
                    }
                    else
                    {
                        selectedRow = DataGridLoanDetailList.SelectedRows[0];
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
                                DialogResult result = MessageBox.Show("Loan detail has been deleted successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
                else if (_selectedLoanDetailId != 0)
                {
                    DialogResult deleteResult = MessageBox.Show(Constants.MESSAGE_BOX_DELETE_MESSAGE, "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (deleteResult == DialogResult.Yes)
                    {
                        var id = Convert.ToInt64(_selectedLoanDetailId);
                        if (_loanDetailService.DeleteLoanDetail(id))
                        {
                            DialogResult result = MessageBox.Show("Loan detail has been deleted successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            if (result == DialogResult.OK)
                            {
                                ClearInputFields();
                                var loanDetails = GetLoanDetails();
                                LoadLoanDetails(loanDetails);
                            }
                        }
                    }
                }

                EnableFields();
                EnableFields(Action.DeleteLoanDetail);
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

        #region TextField Event

        private void TxtPeriodInMonth_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void TxtLoanAmount_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
        }

        private void TxtPremium_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
        }

        private void TxtInsuranceAmount_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
        }

        private void TxtMaturatedAmount_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }
        }
        #endregion

        #region Combobox Event
        private void ComboRelationship_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void ComboMemberGender_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }
        #endregion

        #region MaskedTextbox Event
        private void MaskStartingDate_KeyUp(object sender, KeyEventArgs e)
        {
            var startingDate = MaskStartingDate.Text.Trim();
            if (DateTime.TryParse(startingDate, out _))
            {
                var date = DateTime.Parse(startingDate);
                MaskRenewDate.Text = date.AddYears(1).ToString("yyyy-MM-dd");
            }
            else
            {
                MaskRenewDate.Text = string.Empty;
            }
        }
        #endregion

        #region Data Grid Event
        private void DataGridLoanDetailList_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridLoanDetailList.Columns["Id"].Visible = false;
            DataGridLoanDetailList.Columns["InsuranceCompanyId"].Visible = false;
            DataGridLoanDetailList.Columns["MemberBeneficiary"].Visible = false;
            DataGridLoanDetailList.Columns["MemberRelationship"].Visible = false;
            DataGridLoanDetailList.Columns["MemberGender"].Visible = false;
            DataGridLoanDetailList.Columns["ImagePath"].Visible = false;
            DataGridLoanDetailList.Columns["AddedBy"].Visible = false;
            DataGridLoanDetailList.Columns["AddedDate"].Visible = false;
            DataGridLoanDetailList.Columns["UpdatedBy"].Visible = false;
            DataGridLoanDetailList.Columns["UpdatedDate"].Visible = false;

            DataGridLoanDetailList.Columns["MembershipNo"].HeaderText = "Membership No";
            DataGridLoanDetailList.Columns["MembershipNo"].Width = 150;
            DataGridLoanDetailList.Columns["MembershipNo"].DisplayIndex = 0;

            DataGridLoanDetailList.Columns["MemberName"].HeaderText = "Name";
            DataGridLoanDetailList.Columns["MemberName"].Width = 100;
            DataGridLoanDetailList.Columns["MemberName"].DisplayIndex = 1;

            DataGridLoanDetailList.Columns["MemberAddress"].HeaderText = "Address";
            DataGridLoanDetailList.Columns["MemberAddress"].Width = 100;
            DataGridLoanDetailList.Columns["MemberAddress"].DisplayIndex = 2;

            DataGridLoanDetailList.Columns["StartingDate"].HeaderText = "Starting Date";
            DataGridLoanDetailList.Columns["StartingDate"].Width = 100;
            DataGridLoanDetailList.Columns["StartingDate"].DisplayIndex = 3;

            DataGridLoanDetailList.Columns["RenewDate"].HeaderText = "Renew Date";
            DataGridLoanDetailList.Columns["RenewDate"].Width = 100;
            DataGridLoanDetailList.Columns["RenewDate"].DisplayIndex = 4;

            DataGridLoanDetailList.Columns["PeriodInMonth"].HeaderText = "Period";
            DataGridLoanDetailList.Columns["PeriodInMonth"].Width = 50;
            DataGridLoanDetailList.Columns["PeriodInMonth"].DisplayIndex = 5;

            DataGridLoanDetailList.Columns["MaturedDate"].HeaderText = "Matured Date";
            DataGridLoanDetailList.Columns["MaturedDate"].Width = 100;
            DataGridLoanDetailList.Columns["MaturedDate"].DisplayIndex = 6;

            DataGridLoanDetailList.Columns["LoanAmount"].HeaderText = "Loan";
            DataGridLoanDetailList.Columns["LoanAmount"].Width = 100;
            DataGridLoanDetailList.Columns["LoanAmount"].DisplayIndex = 7;

            DataGridLoanDetailList.Columns["Premium"].HeaderText = "Premium";
            DataGridLoanDetailList.Columns["Premium"].Width = 100;
            DataGridLoanDetailList.Columns["Premium"].DisplayIndex = 8;

            DataGridLoanDetailList.Columns["InsuranceAmount"].HeaderText = "Insurance";
            DataGridLoanDetailList.Columns["InsuranceAmount"].Width = 100;
            DataGridLoanDetailList.Columns["InsuranceAmount"].DisplayIndex = 9;

            DataGridLoanDetailList.Columns["MaturedAmount"].HeaderText = "Matured Amount";
            DataGridLoanDetailList.Columns["MaturedAmount"].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            DataGridLoanDetailList.Columns["MaturedAmount"].DisplayIndex = 10;

            foreach (DataGridViewRow row in DataGridLoanDetailList.Rows)
            {
                DataGridLoanDetailList.Rows[row.Index].HeaderCell.Value = string.Format("{0} ", row.Index + 1).ToString();
                DataGridLoanDetailList.RowHeadersWidth = 50;
                DataGridLoanDetailList.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            }
        }
        #endregion 

        #region Helper Methods
        public void PopulateInsuranceCompany(long id)
        {
            _selectedInsuranceCompanyId = id;
            var insuranceCompany = _insuranceCompanyService.GetInsuranceCompany(id);

            if(insuranceCompany != null)
            {
                TxtInsuranceCompanySerialNo.Text = insuranceCompany?.SerialNumber;
                TxtInsuranceCompanyName.Text = insuranceCompany?.Name;
            }        
        }

        public void PopulateLoanDetail(long id)
        {
            _selectedLoanDetailId = id;
            var loanDetail = _loanDetailService.GetLoanDetail(id);

            if (loanDetail != null)
            {
                _selectedInsuranceCompanyId = loanDetail.InsuranceCompanyId;

                var insuranceCompany = _insuranceCompanyService.GetInsuranceCompany(loanDetail.InsuranceCompanyId);
                TxtInsuranceCompanySerialNo.Text = insuranceCompany.SerialNumber;
                TxtInsuranceCompanyName.Text = insuranceCompany.Name;
                TxtMembershipNo.Text = loanDetail.MembershipNo;
                TxtMemberName.Text = loanDetail.MemberName;
                TxtMemberAddress.Text = loanDetail.MemberAddress;
                TxtMemberBenificiary.Text = loanDetail.MemberBeneficiary;
                ComboRelationship.Text = loanDetail.MemberRelationship;
                ComboMemberGender.Text = loanDetail.MemberGender;
                MaskStartingDate.Text = loanDetail.StartingDate.ToString("yyyy-MM-dd");
                MaskRenewDate.Text = loanDetail.RenewDate.ToString("yyyy-MM-dd");
                TxtPeriodInMonth.Text = loanDetail.PeriodInMonth.ToString();
                MaskMaturatedDate.Text = loanDetail.MaturedDate.ToString("yyyy-MM-dd");
                TxtLoanAmount.Text = loanDetail.LoanAmount.ToString();
                TxtPremium.Text = loanDetail.Premium.ToString();
                TxtInsuranceAmount.Text = loanDetail.InsuranceAmount.ToString();
                TxtMaturatedAmount.Text = loanDetail.MaturedAmount.ToString();
            }

            EnableFields();
            EnableFields(Action.PopulateLoanDetail);
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
            DataGridLoanDetailList.DataSource = source;
        }

        private void ClearInputFields()
        {
            _selectedLoanDetailId = 0;
            _selectedInsuranceCompanyId = 0;

            TxtInsuranceCompanySerialNo.Clear();
            TxtInsuranceCompanyName.Clear();
            TxtMembershipNo.Clear();
            TxtMemberName.Clear();
            TxtMemberAddress.Clear();
            TxtMemberBenificiary.Clear();
            ComboRelationship.Text = string.Empty;
            ComboMemberGender.Text = string.Empty;
            MaskStartingDate.Clear();
            MaskRenewDate.Clear();
            TxtPeriodInMonth.Clear();
            MaskMaturatedDate.Clear();
            TxtLoanAmount.Clear();
            TxtPremium.Clear();
            TxtInsuranceAmount.Clear();
            TxtMaturatedAmount.Clear();
        }

        private void EnableFields(Action action = Action.None)
        {
            if(action == Action.LoadForm)
            {
                BtnAddLoanDetail.Enabled = true;
            }
            else if (action == Action.ShowLoanDetail)
            {
                BtnAddLoanDetail.Enabled = true;
            }
            else if (action == Action.AddLoanDetail)
            {
                TxtMembershipNo.Enabled = true;
                TxtMemberName.Enabled = true;
                TxtMemberAddress.Enabled = true;
                TxtMemberBenificiary.Enabled = true;
                ComboRelationship.Enabled = true;
                ComboMemberGender.Enabled = true;
                MaskStartingDate.Enabled = true;
                MaskRenewDate.Enabled = true;
                TxtPeriodInMonth.Enabled = true;
                MaskMaturatedDate.Enabled = true;
                TxtLoanAmount.Enabled = true;
                TxtPremium.Enabled = true;
                TxtInsuranceAmount.Enabled = true;
                TxtMaturatedAmount.Enabled = true;

                BtnSearchInsuranceCompany.Enabled = true;
                BtnSaveLoanDetail.Enabled = true;
                BtnClearLoanDetail.Enabled = true;
            }
            else if (action == Action.SaveLoanDetail)
            {
                BtnAddLoanDetail.Enabled = true;
            }
            else if (action == Action.EditLoanDetail)
            {
                TxtMembershipNo.Enabled = true;
                TxtMemberName.Enabled = true;
                TxtMemberAddress.Enabled = true;
                TxtMemberBenificiary.Enabled = true;
                ComboRelationship.Enabled = true;
                ComboMemberGender.Enabled = true;
                MaskStartingDate.Enabled = true;
                MaskRenewDate.Enabled = true;
                TxtPeriodInMonth.Enabled = true;
                MaskMaturatedDate.Enabled = true;
                TxtLoanAmount.Enabled = true;
                TxtPremium.Enabled = true;
                TxtInsuranceAmount.Enabled = true;
                TxtMaturatedAmount.Enabled = true;

                BtnSearchInsuranceCompany.Enabled = true;
                BtnUpdateLoanDetail.Enabled = true;
                BtnClearLoanDetail.Enabled = true;
                BtnDeleteLoanDetail.Enabled = true;
            }
            else if (action == Action.UpdateLoanDetail)
            {
                BtnAddLoanDetail.Enabled = true;
            }
            else if (action == Action.DeleteLoanDetail)
            {
                BtnAddLoanDetail.Enabled = true;
            }
            else if (action == Action.ClearLoanDetail)
            {
            }
            else if (action == Action.PopulateInsuranceCompany)
            {
                BtnSaveLoanDetail.Enabled = true;
            }
            else if (action == Action.PopulateLoanDetail)
            {
                BtnAddLoanDetail.Enabled = true;
                BtnEditLoadDetail.Enabled = true;
                BtnDeleteLoanDetail.Enabled = true;
            }
            else
            {
                TxtInsuranceCompanySerialNo.Enabled = false;
                TxtInsuranceCompanyName.Enabled = false;
                TxtMembershipNo.Enabled = false;
                TxtMemberName.Enabled = false;
                TxtMemberAddress.Enabled = false;
                TxtMemberBenificiary.Enabled = false;
                ComboRelationship.Enabled = false;
                ComboMemberGender.Enabled = false;
                MaskStartingDate.Enabled = false;
                MaskRenewDate.Enabled = false;
                TxtPeriodInMonth.Enabled = false;
                MaskMaturatedDate.Enabled = false;
                TxtLoanAmount.Enabled = false;
                TxtPremium.Enabled = false;
                TxtInsuranceAmount.Enabled = false;
                TxtMaturatedAmount.Enabled = false;

                BtnSearchInsuranceCompany.Enabled = false;
                BtnAddLoanDetail.Enabled = false;
                BtnSaveLoanDetail.Enabled = false;
                BtnEditLoadDetail.Enabled = false;
                BtnUpdateLoanDetail.Enabled = false;
                BtnClearLoanDetail.Enabled = false;
                BtnDeleteLoanDetail.Enabled = false;
            }
        }

        private LoanDetail GetLoanDetail()
        {
            var id = _selectedLoanDetailId;
            var insuranceCompanyId = _selectedInsuranceCompanyId;
            var membershipNo = TxtMembershipNo.Text.Trim();
            var memberName = TxtMemberName.Text.Trim();
            var memberAddress = TxtMemberAddress.Text.Trim();
            var memberBenificiary = TxtMemberBenificiary.Text.Trim();
            var memberRelationship = ComboRelationship.Text.Trim();
            var memberGender = ComboMemberGender.Text.Trim();
            var startingDate = UtilityService.GetDate(MaskStartingDate.Text.Trim());
            var renewDate = UtilityService.GetDate(MaskRenewDate.Text.Trim());
            var periodInMonth = TxtPeriodInMonth.Text.Trim();
            var maturatedDate = UtilityService.GetDate(MaskMaturatedDate.Text.Trim());
            var loanAmount = TxtLoanAmount.Text.Trim();
            var premium = TxtPremium.Text.Trim();
            var insuranceAmount = TxtInsuranceAmount.Text.Trim();
            var maturatedAmount = TxtMaturatedAmount.Text.Trim();
            var imagePath = "";

            var loanDetail = new LoanDetail()
            {
                Id = id,
                InsuranceCompanyId = Convert.ToInt64(insuranceCompanyId),
                MembershipNo = membershipNo,
                MemberName = memberName,
                MemberAddress = memberAddress,
                MemberBeneficiary = memberBenificiary,
                MemberRelationship = memberRelationship,
                MemberGender = memberGender,
                StartingDate = Convert.ToDateTime(startingDate),
                RenewDate = Convert.ToDateTime(renewDate),
                PeriodInMonth = Convert.ToInt32(periodInMonth),
                MaturedDate = Convert.ToDateTime(maturatedDate),
                LoanAmount = Convert.ToDecimal(loanAmount),
                Premium = Convert.ToDecimal(premium),
                InsuranceAmount = Convert.ToDecimal(insuranceAmount),
                MaturedAmount = Convert.ToDecimal(maturatedAmount),
                ImagePath = imagePath,
                AddedBy = "TestUser",
                AddedDate = DateTime.Now
            };

            return loanDetail;
        }

        private void LoadRelationships()
        {
            ComboRelationship.Items.Clear();
            ComboRelationship.ValueMember = "Id";
            ComboRelationship.DisplayMember = "Value";

            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.HUSBAND, Value = Constants.HUSBAND });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.WIFE, Value = Constants.WIFE });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.SON, Value = Constants.SON });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.DAUGHTER, Value = Constants.DAUGHTER });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.FATHER, Value = Constants.FATHER });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.MOTHER, Value = Constants.MOTHER });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.UNCLE, Value = Constants.UNCLE });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.AUNT, Value = Constants.AUNT });
            ComboRelationship.Items.Add(new ComboBoxItem { Id = Constants.OTHERS, Value = Constants.OTHERS });
        }

        private void LoadGenders()
        {
            ComboMemberGender.Items.Clear();
            ComboMemberGender.ValueMember = "Id";
            ComboMemberGender.DisplayMember = "Value";

            ComboMemberGender.Items.Add(new ComboBoxItem { Id = Constants.MALE, Value = Constants.MALE });
            ComboMemberGender.Items.Add(new ComboBoxItem { Id = Constants.FEMALE, Value = Constants.FEMALE });
        }
        #endregion
    }
}
