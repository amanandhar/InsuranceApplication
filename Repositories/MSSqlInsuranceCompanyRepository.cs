using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlInsuranceCompanyRepository: IInsuranceCompanyRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlInsuranceCompanyRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public IEnumerable<InsuranceCompany> GetInsuranceCompanies()
        {
            var insuranceCompanys = new List<InsuranceCompany>();
            var query = @"SELECT " +
                "[Id], [SerialNumber], [Name], [HeadOfficeAddress], [BranchOfficeAddress], " +
                "[HeadOfDepartment], [Position], [AgreementDate], [EstablishedDate], " +
                "[AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate] " +
                "FROM " + Constants.TABLE_INSURANCE_COMPANY + " " +
                "ORDER BY [Name] ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var insuranceCompany = new InsuranceCompany
                                {
                                    Id = Convert.ToInt64(reader["Id"].ToString()),
                                    SerialNumber = reader["SerialNumber"].ToString(),
                                    Name = reader["Name"].ToString(),
                                    HeadOfficeAddress = reader["HeadOfficeAddress"].ToString(),
                                    BranchOfficeAddress = reader["BranchOfficeAddress"].ToString(),
                                    HeadOfDepartment = reader["HeadOfDepartment"].ToString(),
                                    Position = reader["Position"].ToString(),
                                    AgreementDate = Convert.ToDateTime(reader["AgreementDate"].ToString()),
                                    EstablishedDate = reader.IsDBNull(8) ? (DateTime?)null : Convert.ToDateTime(reader["EstablishedDate"].ToString()),
                                    AddedBy = reader["AddedBy"].ToString(),
                                    AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString()),
                                    UpdatedBy = reader["UpdatedBy"].ToString(),
                                    UpdatedDate = reader.IsDBNull(12) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString())
                                };

                                insuranceCompanys.Add(insuranceCompany);
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

            return insuranceCompanys;
        }

        public InsuranceCompany GetInsuranceCompany(long id)
        {
            InsuranceCompany insuranceCompany = null;
            var query = @"SELECT " +
                "[Id], [SerialNumber], [Name], [HeadOfficeAddress], [BranchOfficeAddress], " +
                "[HeadOfDepartment], [Position], [AgreementDate], [EstablishedDate], " +
                "[AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate] " +
                "FROM " + Constants.TABLE_INSURANCE_COMPANY + " " +
                "WHERE 1 = 1 " +
                "AND Id = @Id";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Id", ((object)id) ?? DBNull.Value);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                insuranceCompany = new InsuranceCompany();
                                while (reader.Read())
                                {
                                    insuranceCompany.Id = Convert.ToInt64(reader["Id"].ToString());
                                    insuranceCompany.SerialNumber = reader["SerialNumber"].ToString();
                                    insuranceCompany.Name = reader["Name"].ToString();
                                    insuranceCompany.HeadOfficeAddress = reader["HeadOfficeAddress"].ToString();
                                    insuranceCompany.BranchOfficeAddress = reader["BranchOfficeAddress"].ToString();
                                    insuranceCompany.HeadOfDepartment = reader["HeadOfDepartment"].ToString();
                                    insuranceCompany.Position = reader["Position"].ToString();
                                    insuranceCompany.AgreementDate = Convert.ToDateTime(reader["AgreementDate"].ToString());
                                    insuranceCompany.EstablishedDate = reader.IsDBNull(8) ? (DateTime?)null : Convert.ToDateTime(reader["EstablishedDate"].ToString());
                                    insuranceCompany.AddedBy = reader["AddedBy"].ToString();
                                    insuranceCompany.AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString());
                                    insuranceCompany.UpdatedBy = reader["UpdatedBy"].ToString();
                                    insuranceCompany.UpdatedDate = reader.IsDBNull(12) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString());
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

            return insuranceCompany;
        }

        public InsuranceCompany AddInsuranceCompany(InsuranceCompany insuranceCompany)
        {
            string query = @"INSERT INTO " +
                    " " + Constants.TABLE_INSURANCE_COMPANY + " " +
                    "( " +
                         "[SerialNumber], [Name], [HeadOfficeAddress], [BranchOfficeAddress], " +
                         "[HeadOfDepartment], [Position], [AgreementDate], [EstablishedDate], " +
                         "[AddedBy], [AddedDate] " +
                    ") " +
                    "VALUES " +
                    "( " +
                        "@SerialNumber, @Name, @HeadOfficeAddress, @BranchOfficeAddress, " +
                        "@HeadOfDepartment, @Position, @AgreementDate, @EstablishedDate, " +
                        "@AddedBy, @AddedDate " +
                    ") ";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@SerialNumber", ((object)insuranceCompany.SerialNumber) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Name", ((object)insuranceCompany.Name) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@HeadOfficeAddress", ((object)insuranceCompany.HeadOfficeAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@BranchOfficeAddress", ((object)insuranceCompany.BranchOfficeAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@HeadOfDepartment", ((object)insuranceCompany.HeadOfDepartment) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Position", ((object)insuranceCompany.Position) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AgreementDate", ((object)insuranceCompany.AgreementDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@EstablishedDate", ((object)insuranceCompany.EstablishedDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedBy", ((object)insuranceCompany.AddedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedDate", ((object)insuranceCompany.AddedDate) ?? DBNull.Value);
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return insuranceCompany;
        }

        public InsuranceCompany UpdateInsuranceCompany(long id, InsuranceCompany insuranceCompany)
        {
            string query = @"UPDATE " + Constants.TABLE_INSURANCE_COMPANY + " " +
                    "SET " +
                    "[SerialNumber] = @SerialNumber, " +
                    "[Name] = @Name, " +
                    "[HeadOfficeAddress] = @HeadOfficeAddress, " +
                    "[BranchOfficeAddress] = @BranchOfficeAddress, " +
                    "[HeadOfDepartment] = @HeadOfDepartment, " +
                    "[Position] = @Position, " +
                    "[AgreementDate] = @AgreementDate, " +
                    "[EstablishedDate] = @EstablishedDate, " +
                    "[UpdatedBy] = @UpdatedBy, " +
                    "[UpdatedDate] = @UpdatedDate " +
                    "WHERE 1 = 1 " +
                    "AND [Id] = @Id";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Id", ((object)id) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@SerialNumber", ((object)insuranceCompany.SerialNumber) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Name", ((object)insuranceCompany.Name) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@HeadOfficeAddress", ((object)insuranceCompany.HeadOfficeAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@BranchOfficeAddress", ((object)insuranceCompany.BranchOfficeAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@HeadOfDepartment", ((object)insuranceCompany.HeadOfDepartment) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Position", ((object)insuranceCompany.Position) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AgreementDate", ((object)insuranceCompany.AgreementDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@EstablishedDate", ((object)insuranceCompany.EstablishedDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedBy", ((object)insuranceCompany.UpdatedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedDate", ((object)insuranceCompany.UpdatedDate) ?? DBNull.Value);
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return insuranceCompany;
        }

        public bool DeleteInsuranceCompany(long id)
        {
            bool result = false;
            string query = @"DELETE " +
                    "FROM " + Constants.TABLE_INSURANCE_COMPANY + " " +
                    "WHERE 1 = 1 " +
                    "AND [Id] = @Id";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Id", ((object)id) ?? DBNull.Value);
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
