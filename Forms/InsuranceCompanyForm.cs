using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Globalization;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class InsuranceCompanyForm : Form, IInsuranceCompanyListForm
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();

        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private long _selectedInsuranceCompanyId;

        #region Enum
        private enum Action
        {
            Load,
            Search,
            Delete,
            Clear,
            Add,
            Edit,
            Save,
            PopulateInsuranceCompany,
            None
        }
        #endregion 

        public InsuranceCompanyForm(IInsuranceCompanyService insuranceCompanyService)
        {
            InitializeComponent();

            _insuranceCompanyService = insuranceCompanyService;
        }

        private void InsuranceForm_Load(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Load);
        }

        #region Button Click Events
        private void BtnSearch_Click(object sender, EventArgs e)
        {
            var insuranceCompanyListForm = new InsuranceCompanyListForm(_insuranceCompanyService, this);
            insuranceCompanyListForm.ShowDialog();
        }

        private void BtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult deleteResult = MessageBox.Show(Constants.MESSAGE_BOX_DELETE_MESSAGE, "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (deleteResult == DialogResult.Yes)
                {
                    if (_insuranceCompanyService.DeleteInsuranceCompany(_selectedInsuranceCompanyId))
                    {
                        DialogResult result = MessageBox.Show("Insurance Company has been deleted successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        if (result == DialogResult.OK)
                        {
                            ClearInputFields();
                            EnableFields();
                            EnableFields(Action.Delete);
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

        private void BtnClear_Click(object sender, EventArgs e)
        {
            ClearInputFields();
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Add);
            _selectedInsuranceCompanyId = 0;
            TxtSerialNumber.Focus();
        }

        private void BtnEdit_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Edit);
            TxtSerialNumber.Focus();
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateInsuranceCompanyInfo())
                {
                    var serialNumber = TxtSerialNumber.Text.Trim();
                    var name = TxtName.Text.Trim();
                    var headOfficeAddress = TxtHeadOfficeAddress.Text.Trim();
                    var branchOfficeAddress = TxtBranchOfficeAddress.Text.Trim();
                    var headOfDepartment = TxtHeadOfDepartment.Text.Trim();
                    var position = TxtPosition.Text.Trim();
                    var agreementDate = UtilityService.GetDate(MaskAgreementDate.Text.Trim());
                    var establishedDate = UtilityService.GetDate(MaskEstablishedDate.Text.Trim());
                    var insuranceCompany = new InsuranceCompany
                    {
                        Id = _selectedInsuranceCompanyId,
                        SerialNumber = serialNumber,
                        Name = name,
                        HeadOfficeAddress = headOfficeAddress,
                        BranchOfficeAddress = branchOfficeAddress,
                        HeadOfDepartment = headOfDepartment,
                        Position = position,
                        AgreementDate = Convert.ToDateTime(agreementDate),
                        EstablishedDate = string.IsNullOrWhiteSpace(establishedDate) ? (DateTime?)null : Convert.ToDateTime(establishedDate)
                    };

                    if (_selectedInsuranceCompanyId > 0)
                    {
                        insuranceCompany.UpdatedBy = Constants.TEST_USER;
                        insuranceCompany.UpdatedDate = DateTime.Now;

                        _insuranceCompanyService.UpdateInsuranceCompany(_selectedInsuranceCompanyId, insuranceCompany);
                        DialogResult result = MessageBox.Show("Insurance Company has been updated successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        insuranceCompany.AddedBy = Constants.TEST_USER;
                        insuranceCompany.AddedDate = DateTime.Now;

                        _insuranceCompanyService.AddInsuranceCompany(insuranceCompany);
                        DialogResult result = MessageBox.Show("Insurance Company has been added successfully.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                    ClearInputFields();
                    EnableFields();
                    EnableFields(Action.Save);
                }
            }
            catch(Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }
        #endregion

        #region Helper Methods
        private void ClearInputFields()
        {
            _selectedInsuranceCompanyId = 0;

            TxtSerialNumber.Clear();
            TxtName.Clear();
            MaskEstablishedDate.Clear();
            TxtHeadOfficeAddress.Clear();
            TxtBranchOfficeAddress.Clear();
            TxtHeadOfDepartment.Clear();
            TxtPosition.Clear();
            MaskAgreementDate.Clear();
        }

        private void EnableFields(Action action = Action.None)
        {
            if (action == Action.Load || action == Action.Delete || action == Action.Save)
            {
                BtnSearch.Enabled = true;
                BtnAdd.Enabled = true;
            }
            else if (action == Action.Search)
            {
                BtnSearch.Enabled = true;
                BtnDelete.Enabled = true;
                BtnAdd.Enabled = true;
            }
            else if (action == Action.PopulateInsuranceCompany)
            {
                BtnSearch.Enabled = true;
                BtnDelete.Enabled = true;
                BtnAdd.Enabled = true;
                BtnEdit.Enabled = true;
            }
            else if (action == Action.Add)
            {
                TxtSerialNumber.Enabled = true;
                TxtName.Enabled = true;
                MaskEstablishedDate.Enabled = true;
                TxtHeadOfficeAddress.Enabled = true;
                TxtBranchOfficeAddress.Enabled = true;
                TxtHeadOfDepartment.Enabled = true;
                TxtPosition.Enabled = true;
                MaskAgreementDate.Enabled = true;

                BtnSearch.Enabled = true;
                BtnDelete.Enabled = true;
                BtnClear.Enabled = true;
                BtnSave.Enabled = true;
            }
            else if (action == Action.Edit)
            {
                TxtSerialNumber.Enabled = true;
                TxtName.Enabled = true;
                MaskEstablishedDate.Enabled = true;
                TxtHeadOfficeAddress.Enabled = true;
                TxtBranchOfficeAddress.Enabled = true;
                TxtHeadOfDepartment.Enabled = true;
                TxtPosition.Enabled = true;
                MaskAgreementDate.Enabled = true;

                BtnSearch.Enabled = true;
                BtnDelete.Enabled = true;
                BtnClear.Enabled = true;
                BtnSave.Enabled = true;
            }
            else
            {
                TxtSerialNumber.Enabled = false;
                TxtName.Enabled = false;
                MaskEstablishedDate.Enabled = false;
                TxtHeadOfficeAddress.Enabled = false;
                TxtBranchOfficeAddress.Enabled = false;
                TxtHeadOfDepartment.Enabled = false;
                TxtPosition.Enabled = false;
                MaskAgreementDate.Enabled = false;

                BtnSearch.Enabled = false;
                BtnDelete.Enabled = false;
                BtnClear.Enabled = false;
                BtnAdd.Enabled = false;
                BtnEdit.Enabled = false;
                BtnSave.Enabled = false;
            }
        }

        public void PopulateInsuranceCompany(long id)
        {
            var insuranceCompany = _insuranceCompanyService.GetInsuranceCompany(id);

            if(insuranceCompany != null)
            {
                IFormatProvider culture = new CultureInfo("en-US", true);

                _selectedInsuranceCompanyId = insuranceCompany.Id;
                TxtSerialNumber.Text = insuranceCompany.SerialNumber;
                TxtName.Text = insuranceCompany.Name;
                TxtHeadOfficeAddress.Text = insuranceCompany.HeadOfficeAddress;
                TxtBranchOfficeAddress.Text = insuranceCompany.BranchOfficeAddress;
                TxtHeadOfDepartment.Text = insuranceCompany.HeadOfDepartment;
                TxtPosition.Text = insuranceCompany.Position;
                MaskAgreementDate.Text = insuranceCompany.AgreementDate.ToString("yyyy-MM-dd");
                MaskEstablishedDate.Text = insuranceCompany.EstablishedDate == null ? "" : insuranceCompany.EstablishedDate?.ToString("yyyy-MM-dd");
            }
            
            EnableFields();
            EnableFields(Action.PopulateInsuranceCompany);
        }
        #endregion

        #region Validation
        private bool ValidateInsuranceCompanyInfo()
        {
            var isValidated = false;

            var serialNumber = TxtSerialNumber.Text.Trim();
            var name = TxtName.Text.Trim();
            var headOfficeAddress = TxtHeadOfficeAddress.Text.Trim();
            var branchOfficeAddress = TxtBranchOfficeAddress.Text.Trim();
            var headOfDepartment = TxtHeadOfDepartment.Text.Trim();
            var position = TxtPosition.Text.Trim();
            var agreementDate = UtilityService.GetDate(MaskAgreementDate.Text.Trim());

            if (string.IsNullOrWhiteSpace(serialNumber)
                || string.IsNullOrWhiteSpace(name)
                || string.IsNullOrWhiteSpace(headOfficeAddress)
                || string.IsNullOrWhiteSpace(branchOfficeAddress)
                || string.IsNullOrWhiteSpace(headOfDepartment)
                || string.IsNullOrWhiteSpace(position)
                || string.IsNullOrWhiteSpace(agreementDate))
            {
                MessageBox.Show("Please enter following fields: " +
                    "\n * Serial No " +
                    "\n * Name " +
                    "\n * Head Office Address " +
                    "\n * Branch Office Address " +
                    "\n * Head Of Department " +
                    "\n * Position " +
                    "\n * Agreement Date ", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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
