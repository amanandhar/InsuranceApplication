using InsuranceApplication.Forms;
using InsuranceApplication.Repositories;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services;
using InsuranceApplication.Services.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Windows.Forms;
using Unity;

namespace InsuranceApplication
{
    static class Program
    {
        // Use below if you are using dot net framework below 4.5
        //private static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static readonly log4net.ILog logger = LogHelper.GetLogger();

        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                var container = BuildUnityContainer();
                Application.SetHighDpiMode(HighDpiMode.SystemAware);
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new DashboardForm(
                    container.Resolve<IEndOfDayService>(),
                    container.Resolve<IInsuranceCompanyService>(),
                    container.Resolve<ILoanDetailService>(),
                    container.Resolve<IEmployeeService>()
                    )
                );
            }
            catch(Exception ex)
            {
                logger.Error(ex);
                UtilityService.ShowExceptionMessageBox();
            }
        }


        private static IUnityContainer BuildUnityContainer()
        {
            var container = new UnityContainer();
            container.RegisterType<IEndOfDayService, EndOfDayService>();
            container.RegisterType<IInsuranceCompanyService, InsuranceCompanyService>();
            container.RegisterType<ILoanDetailService, LoanDetailService>();
            container.RegisterType<IEmployeeService, EmployeeService>();

            container.RegisterType<IEndOfDayRepository, MSSqlEndOfDayRepository>();
            container.RegisterType<IInsuranceCompanyRepository, MSSqlInsuranceCompanyRepository>();
            container.RegisterType<ILoanDetailRepository, MSSqlLoanDetailRepository>();
            container.RegisterType<IEmployeeRepository, MSSqlEmployeeRepository>();

            return container;
        }
    }
}
