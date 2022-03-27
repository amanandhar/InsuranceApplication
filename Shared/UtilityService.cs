using System;
using System.Configuration;
using System.IO;
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

        public static bool CreateFolder(string rootPath, string folderName)
        {
            bool result = false;
            string folderPath = Path.Combine(rootPath, folderName);
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
                result = true;
            }

            return result;
        }

        public static bool DeleteImage(string imagePath)
        {
            var result = false;
            if (File.Exists(imagePath))
            {
                File.Delete(imagePath);
                result = true;
            }

            return result;

        }
        public static string GetDate(string value)
        {
            if (!string.IsNullOrWhiteSpace(value.Replace("-", string.Empty).Trim()) &&
                Convert.ToDateTime(value) != DateTime.MinValue)
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
