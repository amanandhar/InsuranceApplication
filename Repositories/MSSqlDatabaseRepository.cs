﻿using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlDatabaseRepository : IDatabaseRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlDatabaseRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public bool BackupDatabase(string dbBackupPrefix, string dbBackupFolder)
        {
            var result = false;
            dbBackupFolder = dbBackupFolder.TrimEnd('\\');
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "BACKUP DATABASE [" + connection.Database + "] TO DISK= '" + dbBackupFolder + "\\" + dbBackupPrefix + "-" + DateTime.Now.ToString("yyyy-MM-dd--HH-mm-ss") + ".bak'";
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.ExecuteNonQuery();
                        result = true;
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return result;
        }
    }
}
