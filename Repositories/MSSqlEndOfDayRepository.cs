using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlEndOfDayRepository : IEndOfDayRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlEndOfDayRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public string GetDateInBs(DateTime date)
        {
            var dateInBs = string.Empty;
            var query = @"SELECT " +
                "[DateInBs] " +
                "FROM " + Constants.TABLE_END_OF_DAY + " " +
                "WHERE 1 = 1 " +
                "AND [DateInAd] = @DateInAd";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@DateInAd", ((object)date) ?? DBNull.Value);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    dateInBs = reader["DateInBs"].ToString();
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return dateInBs;
        }

        public bool IsDateInBsExist(string date)
        {
            var result = false;
            var query = @"SELECT " +
                "TOP 1 " +
                "[Id] " +
                "FROM " + Constants.TABLE_END_OF_DAY + " " +
                "WHERE 1 = 1 " +
                "AND [DateInBs] = @DateInBS ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@DateInBS", ((object)date) ?? DBNull.Value);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                result = true;
                            }

                        }
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
