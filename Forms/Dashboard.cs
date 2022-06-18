using InsuranceApplication.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace InsuranceApplication.Forms
{
    public partial class Dashboard : Form
    {
        private readonly IInsuranceCompanyService _insuranceCompanyService;
        private readonly ILoanDetailService _loanDetailService;

        public Dashboard(IInsuranceCompanyService insuranceCompanyService, ILoanDetailService loanDetailService)
        {
            InitializeComponent();

            _insuranceCompanyService = insuranceCompanyService;
            _loanDetailService = loanDetailService;
        }

        private void BtnInsurance_Click(object sender, EventArgs e)
        {
            LoanInsuranceDetailForm loanDetailForm = new LoanInsuranceDetailForm(_insuranceCompanyService, _loanDetailService);
            loanDetailForm.Show();
        }
    }
}
