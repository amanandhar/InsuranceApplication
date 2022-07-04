using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlLoanDetailRepository : ILoanDetailRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlLoanDetailRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public IEnumerable<LoanDetail> GetLoanDetails()
        {
            var loanDetails = new List<LoanDetail>();
            var query = @"SELECT " +
                "[Id], [InsuranceCompanyId], [MembershipNo], " +
                "[MemberName], [MemberAddress], [MemberBeneficiary], [MemberRelationship], [MemberGender], " +
                "[StartingDate], [PeriodInMonth], [MaturedDate], [RenewDate], " +
                "[LoanAmount], [Premium], [InsuranceAmount], [MaturedAmount], " +
                "[ImagePath], " +
                "[AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate] " +
                "FROM " + Constants.TABLE_LOAN_DETAIL + " " +
                "ORDER BY [MemberName] ";

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
                                var loanDetail = new LoanDetail
                                {
                                    Id = Convert.ToInt64(reader["Id"].ToString()),
                                    InsuranceCompanyId = Convert.ToInt64(reader["InsuranceCompanyId"].ToString()),
                                    MembershipNo = reader["MembershipNo"].ToString(),
                                    MemberName = reader["MemberName"].ToString(),
                                    MemberAddress = reader["MemberAddress"].ToString(),
                                    MemberBeneficiary = reader["MemberBeneficiary"].ToString(),
                                    MemberRelationship = reader["MemberRelationship"].ToString(),
                                    MemberGender = reader["MemberGender"].ToString(),
                                    StartingDate = Convert.ToDateTime(reader["StartingDate"].ToString()),
                                    PeriodInMonth = Convert.ToInt32(reader["PeriodInMonth"].ToString()),
                                    MaturedDate = Convert.ToDateTime(reader["MaturedDate"].ToString()),
                                    RenewDate = reader.IsDBNull(11) ? (DateTime?)null : Convert.ToDateTime(reader["RenewDate"].ToString()),
                                    LoanAmount = Convert.ToDecimal(reader["LoanAmount"].ToString()),
                                    Premium = Convert.ToDecimal(reader["Premium"].ToString()),
                                    InsuranceAmount = Convert.ToDecimal(reader["InsuranceAmount"].ToString()),
                                    MaturedAmount = Convert.ToDecimal(reader["MaturedAmount"].ToString()),
                                    ImagePath = reader["ImagePath"].ToString(),
                                    AddedBy = reader["AddedBy"].ToString(),
                                    AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString()),
                                    UpdatedBy = reader["UpdatedBy"].ToString(),
                                    UpdatedDate = reader.IsDBNull(20) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString())
                                };

                                loanDetails.Add(loanDetail);
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

            return loanDetails;
        }

        public LoanDetail GetLoanDetail(long id)
        {
            LoanDetail loanDetail = null;
            var query = @"SELECT " +
                "[Id], [InsuranceCompanyId], [MembershipNo], " +
                "[MemberName], [MemberAddress], [MemberBeneficiary], [MemberRelationship], [MemberGender], " +
                "[StartingDate], [PeriodInMonth], [MaturedDate], [RenewDate], " +
                "[LoanAmount], [Premium], [InsuranceAmount], [MaturedAmount], " +
                "[ImagePath], " +
                "[AddedBy], [AddedDate], [UpdatedBy], [UpdatedDate] " +
                "FROM " + Constants.TABLE_LOAN_DETAIL + " " +
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
                                loanDetail = new LoanDetail();
                                while (reader.Read())
                                {
                                    loanDetail.Id = Convert.ToInt64(reader["Id"].ToString());
                                    loanDetail.InsuranceCompanyId = Convert.ToInt64(reader["InsuranceCompanyId"].ToString());
                                    loanDetail.MembershipNo = reader["MembershipNo"].ToString();
                                    loanDetail.MemberName = reader["MemberName"].ToString();
                                    loanDetail.MemberAddress = reader["MemberAddress"].ToString();
                                    loanDetail.MemberBeneficiary = reader["MemberBeneficiary"].ToString();
                                    loanDetail.MemberRelationship = reader["MemberRelationship"].ToString();
                                    loanDetail.MemberGender = reader["MemberGender"].ToString();
                                    loanDetail.StartingDate = Convert.ToDateTime(reader["StartingDate"].ToString());
                                    loanDetail.PeriodInMonth = Convert.ToInt32(reader["PeriodInMonth"].ToString());
                                    loanDetail.MaturedDate = Convert.ToDateTime(reader["MaturedDate"].ToString());
                                    loanDetail.RenewDate = reader.IsDBNull(11) ? (DateTime?)null : Convert.ToDateTime(reader["RenewDate"].ToString());
                                    loanDetail.LoanAmount = Convert.ToDecimal(reader["LoanAmount"].ToString());
                                    loanDetail.Premium = Convert.ToDecimal(reader["Premium"].ToString());
                                    loanDetail.InsuranceAmount = Convert.ToDecimal(reader["InsuranceAmount"].ToString());
                                    loanDetail.MaturedAmount = Convert.ToDecimal(reader["MaturedAmount"].ToString());
                                    loanDetail.ImagePath = reader["ImagePath"].ToString(); 
                                    loanDetail.AddedBy = reader["AddedBy"].ToString();
                                    loanDetail.AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString());
                                    loanDetail.UpdatedBy = reader["UpdatedBy"].ToString();
                                    loanDetail.UpdatedDate = reader.IsDBNull(20) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString());
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

            return loanDetail;
        }

        public LoanDetail AddLoanDetail(LoanDetail loanDetail)
        {
            string query = @"INSERT INTO " +
                    " " + Constants.TABLE_LOAN_DETAIL + " " +
                    "( " +
                        "[InsuranceCompanyId], [MembershipNo], " +
                        "[MemberName], [MemberAddress], [MemberBeneficiary], [MemberRelationship], [MemberGender], " +
                        "[StartingDate], [PeriodInMonth], [MaturedDate], [RenewDate], " +
                        "[LoanAmount], [Premium], [InsuranceAmount], [MaturedAmount], " +
                        "[ImagePath], " +
                        "[AddedBy], [AddedDate] " +
                    ") " +
                    "VALUES " +
                    "( " +
                        "@InsuranceCompanyId, @MembershipNo, " +
                        "@MemberName, @MemberAddress, @MemberBeneficiary, @MemberRelationship, @MemberGender, " +
                        "@StartingDate, @PeriodInMonth, @MaturedDate, @RenewDate, " +
                        "@LoanAmount, @Premium, @InsuranceAmount, @MaturedAmount, " +
                        "@ImagePath, " +
                        "@AddedBy, @AddedDate " +
                    ") ";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@InsuranceCompanyId", ((object)loanDetail.InsuranceCompanyId) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MembershipNo", ((object)loanDetail.MembershipNo) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberName", ((object)loanDetail.MemberName) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberAddress", ((object)loanDetail.MemberAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberBeneficiary", ((object)loanDetail.MemberBeneficiary) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberRelationship", ((object)loanDetail.MemberRelationship) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberGender", ((object)loanDetail.MemberGender) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@StartingDate", ((object)loanDetail.StartingDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@PeriodInMonth", ((object)loanDetail.PeriodInMonth) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MaturedDate", ((object)loanDetail.MaturedDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@RenewDate", ((object)loanDetail.RenewDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@LoanAmount", ((object)loanDetail.LoanAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Premium", ((object)loanDetail.Premium) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@InsuranceAmount", ((object)loanDetail.InsuranceAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MaturedAmount", ((object)loanDetail.MaturedAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@ImagePath", ((object)loanDetail.ImagePath) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedBy", ((object)loanDetail.AddedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedDate", ((object)loanDetail.AddedDate) ?? DBNull.Value);
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return loanDetail;
        }

        public LoanDetail UpdateLoanDetail(long id, LoanDetail loanDetail)
        {
            string query = @"UPDATE " + Constants.TABLE_LOAN_DETAIL + " " +
                    "SET " +
                    "[InsuranceCompanyId] = @InsuranceCompanyId, " +
                    "[MembershipNo] = @MembershipNo, " +
                    "[MemberName] = @MemberName, " +
                    "[MemberAddress] = @MemberAddress, " +
                    "[MemberBeneficiary] = @MemberBeneficiary, " +
                    "[MemberRelationship] = @MemberRelationship, " +
                    "[MemberGender] = @MemberGender, " +
                    "[StartingDate] = @StartingDate, " +
                    "[PeriodInMonth] = @PeriodInMonth, " +
                    "[MaturedDate] = @MaturedDate, " +
                    "[RenewDate] = @RenewDate, " +
                    "[LoanAmount] = @LoanAmount, " +
                    "[Premium] = @Premium, " +
                    "[InsuranceAmount] = @InsuranceAmount, " +
                    "[MaturedAmount] = @MaturedAmount, " +
                    "[ImagePath] = @ImagePath, " +
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
                        command.Parameters.AddWithValue("@InsuranceCompanyId", ((object)loanDetail.InsuranceCompanyId) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MembershipNo", ((object)loanDetail.MembershipNo) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberName", ((object)loanDetail.MemberName) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberAddress", ((object)loanDetail.MemberAddress) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberBeneficiary", ((object)loanDetail.MemberBeneficiary) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberRelationship", ((object)loanDetail.MemberRelationship) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MemberGender", ((object)loanDetail.MemberGender) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@StartingDate", ((object)loanDetail.StartingDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@PeriodInMonth", ((object)loanDetail.PeriodInMonth) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MaturedDate", ((object)loanDetail.MaturedDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@RenewDate", ((object)loanDetail.RenewDate) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@LoanAmount", ((object)loanDetail.LoanAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Premium", ((object)loanDetail.Premium) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@InsuranceAmount", ((object)loanDetail.InsuranceAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@MaturedAmount", ((object)loanDetail.MaturedAmount) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@ImagePath", ((object)loanDetail.ImagePath) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedBy", ((object)loanDetail.UpdatedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedDate", ((object)loanDetail.UpdatedDate) ?? DBNull.Value);
                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return loanDetail;
        }

        public bool UpdateMaturatedDate(string date)
        {
            bool result = false;
            string query = @"UPDATE " + Constants.TABLE_LOAN_DETAIL + " " +
                    "SET " +
                    "[MaturedAmount] = [InsuranceAmount], " +
                    "[UpdatedBy] = @UpdatedBy, " +
                    "[UpdatedDate] = @UpdatedDate " +
                    "WHERE 1 = 1 " +
                    "AND [MaturedAmount] <> [InsuranceAmount] " +
                    "AND [MaturedDate] <= @MaturedDate";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@MaturedDate", ((object)date) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedBy", Constants.SYSTEM_USER);
                        command.Parameters.AddWithValue("@UpdatedDate", DateTime.Now);
                        command.ExecuteNonQuery();
                    }

                    result = true;
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return result;
        }

        public bool DeleteLoanDetail(long id)
        {
            bool result = false;
            string query = @"DELETE " +
                    "FROM " + Constants.TABLE_LOAN_DETAIL + " " +
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
