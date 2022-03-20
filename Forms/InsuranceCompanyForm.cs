using InsuranceApplication.Entities;
using InsuranceApplication.Forms.Interfaces;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
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
            Save,
            Add,
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
            EnableFields(Action.None);
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

        private void BtnSave_Click(object sender, EventArgs e)
        {
            var serialNumber = TxtSerialNumber.Text.Trim();
            var name = TxtName.Text.Trim();
            var establishedDate = UtilityService.GetDate(MaskEstablishedDate.Text.Trim());
            var headOfficeAddress = TxtHeadOfficeAddress.Text.Trim();
            var branchOfficeAddress = TxtBranchOfficeAddress.Text.Trim();
            var headOfDepartment = TxtHeadOfDepartment.Text.Trim();
            var position = TxtPosition.Text.Trim();
            var agreementDate = UtilityService.GetDate(MaskAgreementDate.Text.Trim());

            var insuranceCompany = new InsuranceCompany()
            {
                SerialNumber = serialNumber,
                Name = name,
                EstablishedDate = Convert.ToDateTime(establishedDate),
                HeadOfficeAddress = headOfficeAddress,
                BranchOfficeAddress = branchOfficeAddress,
                HeadOfDepartment = headOfDepartment,
                Position = position,
                AgreementDate = Convert.ToDateTime(agreementDate),
                AddedBy = "TestUser",
                AddedDate = DateTime.Now
            };

            try
            {
                _insuranceCompanyService.AddInsuranceCompany(insuranceCompany);

                ClearInputFields();
                EnableFields();
                EnableFields(Action.Save);
            }
            catch(Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }

        private void BtnAdd_Click(object sender, EventArgs e)
        {
            EnableFields();
            EnableFields(Action.Add);
        }
        #endregion

        #region Helper Methods
        private void ClearInputFields()
        {
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
                BtnSave.Enabled = false;
                BtnAdd.Enabled = false;
            }
        }

        public void PopulateInsuranceCompany(long id)
        {
            var insuranceCompany = _insuranceCompanyService.GetInsuranceCompany(id);

            if(insuranceCompany != null)
            {
                _selectedInsuranceCompanyId = insuranceCompany.Id;
                TxtSerialNumber.Text = insuranceCompany.SerialNumber;
                TxtName.Text = insuranceCompany.Name;
                MaskEstablishedDate.Text = insuranceCompany.EstablishedDate.ToString();
                TxtHeadOfficeAddress.Text = insuranceCompany.HeadOfficeAddress;
                TxtBranchOfficeAddress.Text = insuranceCompany.BranchOfficeAddress;
                TxtHeadOfDepartment.Text = insuranceCompany.HeadOfDepartment;
                TxtPosition.Text = insuranceCompany.Position;
                MaskAgreementDate.Text = insuranceCompany.AgreementDate.ToString();
            }
            
            EnableFields();
            EnableFields(Action.PopulateInsuranceCompany);
        }
        #endregion
    }
}
