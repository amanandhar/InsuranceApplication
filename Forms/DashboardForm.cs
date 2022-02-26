using InsuranceApplication.Shared;
using System.Configuration;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class DashboardForm : Form
    {
        private string _baseImageFolder;

        public DashboardForm()
        {
            InitializeComponent();
        }

        #region Form Load Event
        private void DashboardForm_Load(object sender, System.EventArgs e)
        {
            _baseImageFolder = ConfigurationManager.AppSettings[Constants.BASE_DOCUMENT_FOLDER].ToString();
        }
        #endregion

        #region Button Click Event
        private void BtnAddInsurance_Click(object sender, System.EventArgs e)
        {
            InsuranceForm insuranceForm = new InsuranceForm();
            insuranceForm.ShowDialog();
        }

        private void BtnDistributedAmount_Click(object sender, System.EventArgs e)
        {
            DistributedAmountForm distributedAmountForm = new DistributedAmountForm();
            distributedAmountForm.ShowDialog();
        }

        private void BtnDocumentDetails_Click(object sender, System.EventArgs e)
        {
            System.Diagnostics.Process.Start("explorer.exe", _baseImageFolder);
        }
        #endregion
    }
}
