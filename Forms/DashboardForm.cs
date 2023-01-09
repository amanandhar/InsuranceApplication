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
        private readonly IUserService _userService;

        private readonly string _username;

        #region Constructor
        public DashboardForm(string username,
            IEndOfDayService endOfDayService, IInsuranceCompanyService insuranceCompanyService, 
            ILoanDetailService loanDetailService, IEmployeeService employeeService,
            IUserService userService)
        {
            InitializeComponent();

            _username = username;

            _endOfDayService = endOfDayService;
            _insuranceCompanyService = insuranceCompanyService;
            _loanDetailService = loanDetailService;
            _employeeService = employeeService;
            _userService = userService;
        }
        #endregion

        #region
        private void DashboardForm_Load(object sender, EventArgs e)
        {
            var dateInBS = _endOfDayService.GetDateInBs(Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd")));
            _loanDetailService.UpdateMaturatedDate(dateInBS);
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

        private void BtnUser_Click(object sender, EventArgs e)
        {
            UserForm userForm = new UserForm(_username, _userService);
            userForm.ShowDialog();
        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion
    }
}
