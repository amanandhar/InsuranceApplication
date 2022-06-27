using InsuranceApplication.Services.Interfaces;
using System;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class DashboardForm : Form
    {
        private readonly IEndOfDayService _endOfDayService;
        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private readonly ILoanDetailService _loanDetailService;
        private readonly IEmployeeService _employeeService;

        #region Constructor
        public DashboardForm(IEndOfDayService endOfDayService, IInsuranceCompanyService insuranceCompanyService, 
            ILoanDetailService loanDetailService, IEmployeeService employeeService)
        {
            InitializeComponent();

            _endOfDayService = endOfDayService;
            _insuranceCompanyService = insuranceCompanyService;
            _loanDetailService = loanDetailService;
            _employeeService = employeeService;
        }
        #endregion

        #region Button Click Events
        private void BtnInsurance_Click(object sender, EventArgs e)
        {
            LoanInsuranceForm loanInsuranceForm = new LoanInsuranceForm(_endOfDayService, _insuranceCompanyService,
                _loanDetailService);
            loanInsuranceForm.ShowDialog();
        }

        private void BtnEmployee_Click(object sender, EventArgs e)
        {
            EmployeeForm employeeDetails = new EmployeeForm(_endOfDayService, _employeeService);
            employeeDetails.ShowDialog();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion
    }
}
