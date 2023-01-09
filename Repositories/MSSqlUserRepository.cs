using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlUserRepository : IUserRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlUserRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public IEnumerable<User> GetUsers(string username, string type)
        {
            var users = new List<User>();
            var query = @"SELECT " +
                "[Id], [Username], [Type], " +
                "[Password], [IsReadOnly], [AddedDate], [UpdatedDate] " +
                "FROM [" + Constants.TABLE_USER + "] " +
                "WHERE 1 = 1 ";

            if (type == Constants.STAFF || type == Constants.GUEST)
            {
                query += "AND ISNULL([Username], '') = @Username ";
            }

            query += "ORDER BY [Username] ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var user = new User
                                {
                                    Id = Convert.ToInt64(reader["Id"].ToString()),
                                    Username = reader["Username"].ToString(),
                                    Password = reader["Password"].ToString(),
                                    Type = reader["Type"].ToString(),
                                    IsReadOnly = Convert.ToBoolean(reader["IsReadOnly"].ToString()),
                                    AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString()),
                                    UpdatedDate = reader.IsDBNull(18) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString())
                                };

                                users.Add(user);
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

            return users;
        }

        public User GetUser(long id)
        {
            var user = new User();
            var query = @"SELECT " +
                "[Id], [Username], [Type], " +
                "[Password], [IsReadOnly], [AddedDate], [UpdatedDate] " +
                "FROM [" + Constants.TABLE_USER + "] " +
                "WHERE 1 = 1 " +
                "AND [Id] = @Id ";

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
                                while (reader.Read())
                                {
                                    user.Id = Convert.ToInt64(reader["Id"].ToString());
                                    user.Username = reader["Username"].ToString();
                                    user.Password = reader["Password"].ToString();
                                    user.Type = reader["Type"].ToString();
                                    user.IsReadOnly = Convert.ToBoolean(reader["IsReadOnly"].ToString());
                                    user.AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString());
                                    user.UpdatedDate = reader.IsDBNull(18) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString());
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

            return user;
        }

        public User GetUser(string username)
        {
            var user = new User();
            var query = @"SELECT " +
                "[Id], [Username], [Type], " +
                "[Password], [IsReadOnly], [AddedDate], [UpdatedDate] " +
                "FROM [" + Constants.TABLE_USER + "] " +
                "WHERE 1 = 1 " +
                "AND ISNULL([Username], '') = @Username ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    user.Id = Convert.ToInt64(reader["Id"].ToString());
                                    user.Username = reader["Username"].ToString();
                                    user.Password = reader["Password"].ToString();
                                    user.Type = reader["Type"].ToString();
                                    user.IsReadOnly = Convert.ToBoolean(reader["IsReadOnly"].ToString());
                                    user.AddedDate = Convert.ToDateTime(reader["AddedDate"].ToString());
                                    user.UpdatedDate = reader.IsDBNull(18) ? (DateTime?)null : Convert.ToDateTime(reader["UpdatedDate"].ToString());
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

            return user;
        }

        public bool IsUserExist(string username)
        {
            var result = false;
            var query = @"SELECT " +
                "1 " +
                "FROM [" + Constants.TABLE_USER + "] " +
                "WHERE 1 = 1 " +
                "AND ISNULL([Username], '') = @Username ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);
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

        public bool IsUserExist(string username, string password)
        {
            var result = false;
            var query = @"SELECT " +
                "1 " +
                "FROM [" + Constants.TABLE_USER + "] " +
                "WHERE 1 = 1 " +
                "AND ISNULL([Username], '') = @Username " +
                "AND ISNULL([Password], '') = @Password ";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Password", ((object)password) ?? DBNull.Value);
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

        public User AddUser(User user)
        {
            string query = @"INSERT INTO " +
                    " [" + Constants.TABLE_USER + "] " +
                    "( " +
                        "[Username], [Type], " +
                        "[Password], [IsReadOnly], [AddedBy], [AddedDate] " +
                    ") " +
                    "VALUES " +
                    "( " +
                        "@Username, @Type, " +
                        "@Password, @IsReadOnly, @AddedBy, @AddedDate " +
                    ") ";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)user.Username) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Password", ((object)user.Password) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Type", ((object)user.Type) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@IsReadOnly", ((object)user.IsReadOnly) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedBy", ((object)user.AddedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@AddedDate", ((object)user.AddedDate) ?? DBNull.Value);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return user;
        }

        public User UpdateUser(string username, User user)
        {
            string query = @"UPDATE [" + Constants.TABLE_USER + "] " +
                    "SET " +
                    "[Type] = @Type, " +
                    "[Password] = @Password, [IsReadOnly] = @IsReadOnly, " +
                    "[UpdatedBy] = @UpdatedBy, [UpdatedDate] = @UpdatedDate " +
                    "WHERE 1 = 1 " +
                    "AND ISNULL([Username], '') = @Username";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Password", ((object)user.Password) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Type", ((object)user.Type) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@IsReadOnly", ((object)user.IsReadOnly) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedBy", ((object)user.UpdatedBy) ?? DBNull.Value);
                        command.Parameters.AddWithValue("@UpdatedDate", ((object)user.UpdatedDate) ?? DBNull.Value);

                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                throw ex;
            }

            return user;
        }

        public bool DeleteUser(string username)
        {
            bool result = false;
            string query = @"DELETE " +
                    "FROM [" + Constants.TABLE_USER + "] " +
                    "WHERE 1 = 1 " +
                    "AND ISNULL([Username], '') = @Username";
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", ((object)username) ?? DBNull.Value);
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
