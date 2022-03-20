using System.Configuration;
using System.Windows.Forms;

namespace InsuranceApplication.Shared
{
    public static class UtilityService
    {
        public static string GetConnectionString()
        {
            string connectionString = ConfigurationManager.ConnectionStrings[Constants.DB_CONNECTION_STRING].ConnectionString;
            return connectionString;
        }

        public static string GetDate(string value)
        {
            if (!string.IsNullOrWhiteSpace(value.Replace("-", string.Empty).Trim()))
            {
                return value.Trim();
            }

            return null;
        }

        public static void ShowExceptionMessageBox()
        {
            MessageBox.Show("Fatal error occurred. \nPlease contact administrator.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
    }
}
