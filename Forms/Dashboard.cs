using InsuranceApplication.Services.Interfaces;
using System;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class Dashboard : Form
    {
        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private readonly ILoanDetailService _loanDetailService;
        private readonly IEmployeeService _employeeService;

        public Dashboard(IInsuranceCompanyService insuranceCompanyService, 
            ILoanDetailService loanDetailService, IEmployeeService employeeService)
        {
            InitializeComponent();

            _insuranceCompanyService = insuranceCompanyService;
            _loanDetailService = loanDetailService;
            _employeeService = employeeService;
        }

        private void BtnInsurance_Click(object sender, EventArgs e)
        {
            LoanInsuranceDetailForm loanDetailForm = new LoanInsuranceDetailForm(_insuranceCompanyService, _loanDetailService);
            loanDetailForm.ShowDialog();
        }

        private void BtnEmployee_Click(object sender, EventArgs e)
        {
            EmployeeForm employeeDetails = new EmployeeForm(_employeeService);
            employeeDetails.ShowDialog();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
