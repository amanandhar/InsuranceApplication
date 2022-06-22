using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Shared;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace InsuranceApplication.Repositories
{
    public class MSSqlEmployeeRepository : IEmployeeRepository
    {
        private static readonly log4net.ILog logger = LogHelper.GetLogger();
        private readonly string connectionString;

        public MSSqlEmployeeRepository()
        {
            connectionString = UtilityService.GetConnectionString();
        }

        public IEnumerable<Employee> GetEmployees()
        {
            var employees = new List<Employee>();
            var query = "SELECT " +
                "[EmployeeId], [EmployeeName], [TempAddress], [PermAddress], [ContactNumber], " +
                "[Email], [CitizenshipNumber], [Education], [DateOfBirth], [Age], " +
                "[BloodGroup], [AppointmentDate], [FatherName], [MotherName], [Gender], " +
                "[MaritalStatus], [SpouseName], [Post], [PostStatus], [ResignationDate], " +
                "[ImageLocation] " +
                "FROM " + Constants.TABLE_EMPLOYEE + " " +
                "ORDER BY [EmployeeId]";
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlDataReader reader = null;
                    using (var command = new SqlCommand(query, connection))
                    {
                        reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            var employee = new Employee
                            {
                                EmployeeId = reader["EmployeeId"].ToString(),
                                EmployeeName = reader["EmployeeName"].ToString(),
                                TempAddress = reader["TempAddress"].ToString(),
                                PermAddress = reader["PermAddress"].ToString(),
                                ContactNumber = Convert.ToInt64(reader["ContactNumber"]),
                                Email = reader["Email"].ToString(),
                                CitizenshipNumber = reader["CitizenshipNumber"].ToString(),
                                Education = reader["Education"].ToString(),
                                DateOfBirth = reader["DateOfBirth"].ToString(),
                                Age = Convert.ToInt32(reader["Age"]),
                                BloodGroup = reader["BloodGroup"].ToString(),
                                AppointmentDate = reader["AppointmentDate"].ToString(),
                                FatherName = reader["FatherName"].ToString(),
                                MotherName = reader["MotherName"].ToString(),
                                Gender = reader["Gender"].ToString(),
                                MaritalStatus = reader["MaritalStatus"].ToString(),
                                SpouseName = reader["SpouseName"].ToString(),
                                Post = reader["Post"].ToString(),
                                PostStatus = reader["PostStatus"].ToString(),
                                ResignationDate = reader["ResignationDate"].ToString(),
                                ImageLocation = reader["ImageLocation"].ToString()
                            };

                            employees.Add(employee);
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employees;
        }

        public Employee GetEmployee(string employeeId)
        {
            var employee = new Employee();
            var query = "SELECT " +
                "[EmployeeId], [EmployeeName], [TempAddress], [PermAddress], [ContactNumber], " +
                "[Email], [CitizenshipNumber], [Education], [DateOfBirth], [Age], " +
                "[BloodGroup], [AppointmentDate], [FatherName], [MotherName], [Gender], " +
                "[MaritalStatus], [SpouseName], [Post], [PostStatus], [ResignationDate], " +
                "[ImageLocation] " + 
                "FROM " + Constants.TABLE_EMPLOYEE + " " +
                "WHERE 1 = 1 " +
                "AND [EmployeeId] = @EmployeeId";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlDataReader reader = null;
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@EmployeeId", employeeId);
                        reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            employee = new Employee
                            {
                                EmployeeId = reader["EmployeeId"].ToString(),
                                EmployeeName = reader["EmployeeName"].ToString(),
                                TempAddress = reader["TempAddress"].ToString(),
                                PermAddress = reader["PermAddress"].ToString(),
                                ContactNumber = Convert.ToInt64(reader["ContactNumber"]),
                                Email = reader["Email"].ToString(),
                                CitizenshipNumber = reader["CitizenshipNumber"].ToString(),
                                Education = reader["Education"].ToString(),
                                DateOfBirth = reader["DateOfBirth"].ToString(),
                                Age = Convert.ToInt32(reader["Age"]),
                                BloodGroup = reader["BloodGroup"].ToString(),
                                AppointmentDate = reader["AppointmentDate"].ToString(),
                                FatherName = reader["FatherName"].ToString(),
                                MotherName = reader["MotherName"].ToString(),
                                Gender = reader["Gender"].ToString(),
                                MaritalStatus = reader["MaritalStatus"].ToString(),
                                SpouseName = reader["SpouseName"].ToString(),
                                Post = reader["Post"].ToString(),
                                PostStatus = reader["PostStatus"].ToString(),
                                ResignationDate = reader["ResignationDate"].ToString(),
                                ImageLocation = reader["ImageLocation"].ToString()
                            };
                        }
                    }
                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employee;
        }

        public Employee AddEmployee(Employee employee)
        {
            var query = "INSERT INTO " + Constants.TABLE_EMPLOYEE + " " +
                    "(" +
                    "[Counter], [EmployeeId], [EmployeeName], [TempAddress], [PermAddress], [ContactNumber], [Email], [CitizenshipNumber], " +
                    "[Education], [DateOfBirth], [Age], [BloodGroup], [AppointmentDate], [FatherName], [MotherName], [Gender], [MaritalStatus], [SpouseName], " +
                    "[Post], [PostStatus], [ResignationDate], [ImageLocation], [AddedBy], [AddedDate] " +
                    ") " +
                    "VALUES " +
                    "(" +
                    "@Counter, @EmployeeId, @EmployeeName, @TempAddress, @PermAddress, @ContactNumber, @Email, @CitizenshipNumber, " +
                    "@Education, @DateOfBirth, @Age, @BloodGroup, @AppointmentDate, @FatherName, @MotherName, @Gender, @MaritalStatus, @SpouseName, " +
                    "@Post, @PostStatus, @ResignationDate, @ImageLocation, @AddedBy, @AddedDate " +
                    ")";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Counter", employee.Counter);
                        command.Parameters.AddWithValue("@EmployeeId", employee.EmployeeId);
                        command.Parameters.AddWithValue("@EmployeeName", employee.EmployeeName);
                        command.Parameters.AddWithValue("@TempAddress", employee.TempAddress);
                        command.Parameters.AddWithValue("@PermAddress", employee.PermAddress);
                        command.Parameters.AddWithValue("@ContactNumber", employee.ContactNumber);
                        command.Parameters.AddWithValue("@Email", employee.Email);
                        command.Parameters.AddWithValue("@CitizenshipNumber", employee.CitizenshipNumber);
                        command.Parameters.AddWithValue("@Education", employee.Education);
                        command.Parameters.AddWithValue("@DateOfBirth", employee.DateOfBirth);
                        command.Parameters.AddWithValue("@Age", employee.Age);
                        command.Parameters.AddWithValue("@BloodGroup", employee.BloodGroup);
                        command.Parameters.AddWithValue("@AppointmentDate", employee.AppointmentDate);
                        command.Parameters.AddWithValue("@FatherName", employee.FatherName);
                        command.Parameters.AddWithValue("@MotherName", employee.MotherName);
                        command.Parameters.AddWithValue("@Gender", employee.Gender);
                        command.Parameters.AddWithValue("@MaritalStatus", employee.MaritalStatus);
                        command.Parameters.AddWithValue("@SpouseName", employee.SpouseName);
                        command.Parameters.AddWithValue("@Post", employee.Post);
                        command.Parameters.AddWithValue("@PostStatus", employee.PostStatus);
                        command.Parameters.AddWithValue("@ResignationDate", employee.ResignationDate);
                        command.Parameters.AddWithValue("@ImageLocation", employee.ImageLocation);
                        command.Parameters.AddWithValue("@AddedBy", employee.AddedBy);
                        command.Parameters.AddWithValue("@AddedDate", employee.AddedDate);

                        command.ExecuteNonQuery();
                    }

                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employee;
        }

        public Employee UpdateEmployee(string employeeId, Employee employee)
        {
            var query = "UPDATE " + Constants.TABLE_EMPLOYEE + " SET " +
                    "[EmployeeId] = @EmployeeId, " +
                    "[EmployeeName] = @EmployeeName, " +
                    "[TempAddress] = @TempAddress, " +
                    "[PermAddress] = @PermAddress, " +
                    "[ContactNumber] = @ContactNumber, " +
                    "[Email] = @Email, " +
                    "[CitizenshipNumber] = @CitizenshipNumber, " +
                    "[Education] = @Education, " +
                    "[DateOfBirth] = @DateOfBirth, " +
                    "[Age] = @Age, " +
                    "[BloodGroup] = @BloodGroup, " +
                    "[AppointmentDate] = @AppointmentDate, " +
                    "[FatherName] = @FatherName, " +
                    "[MotherName] = @MotherName, " +
                    "[Gender] = @Gender, " +
                    "[MaritalStatus] = @MaritalStatus, " +
                    "[SpouseName] = @SpouseName, " +
                    "[Post] = @Post, " +
                    "[PostStatus] = @PostStatus, " +
                    "[ResignationDate] = @ResignationDate, " +
                    "[ImageLocation] = @ImageLocation " +
                    "[UpdatedBy] = @UpdatedBy " + 
                    "[UpdatedDate] = @UpdatedDate " +
                    "WHERE " +
                    "1 = 1 " +
                    "AND [EmployeeId] = @EmployeeId";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@EmployeeId", employee.EmployeeId);
                        command.Parameters.AddWithValue("@EmployeeName", employee.EmployeeName);
                        command.Parameters.AddWithValue("@TempAddress", employee.TempAddress);
                        command.Parameters.AddWithValue("@PermAddress", employee.PermAddress);
                        command.Parameters.AddWithValue("@ContactNumber", employee.ContactNumber);
                        command.Parameters.AddWithValue("@Email", employee.Email);
                        command.Parameters.AddWithValue("@CitizenshipNumber", employee.CitizenshipNumber);
                        command.Parameters.AddWithValue("@Education", employee.Education);
                        command.Parameters.AddWithValue("@DateOfBirth", employee.DateOfBirth);
                        command.Parameters.AddWithValue("@Age", employee.Age);
                        command.Parameters.AddWithValue("@BloodGroup", employee.BloodGroup);
                        command.Parameters.AddWithValue("@AppointmentDate", employee.AppointmentDate);
                        command.Parameters.AddWithValue("@FatherName", employee.FatherName);
                        command.Parameters.AddWithValue("@MotherName", employee.MotherName);
                        command.Parameters.AddWithValue("@Gender", employee.Gender);
                        command.Parameters.AddWithValue("@MaritalStatus", employee.MaritalStatus);
                        command.Parameters.AddWithValue("@SpouseName", employee.SpouseName);
                        command.Parameters.AddWithValue("@Post", employee.Post);
                        command.Parameters.AddWithValue("@PostStatus", employee.PostStatus);
                        command.Parameters.AddWithValue("@ResignationDate", employee.ResignationDate);
                        command.Parameters.AddWithValue("@ImageLocation", employee.ImageLocation);
                        command.Parameters.AddWithValue("@UpdatedBy", employee.UpdatedBy);
                        command.Parameters.AddWithValue("@UpdatedDate", employee.UpdatedDate);

                        command.ExecuteNonQuery();
                    }

                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employee;
        }

        public string DeleteEmployee(string employeeId)
        {
            string query = "DELETE FROM " + Constants.TABLE_EMPLOYEE + " " +
                "WHERE " +
                "1 = 1 " + 
                "AND [EmployeeId] = @EmployeeId";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@EmployeeId", employeeId);

                        command.ExecuteNonQuery();
                    }

                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employeeId;
        }

        public int GetLastEmployeeId()
        {
            int employeeId = 0;
            var query = "SELECT Top 1 [Counter] FROM " + Constants.TABLE_EMPLOYEE + " ORDER BY [Counter] DESC";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        var result = command.ExecuteScalar();
                        if (result != null && DBNull.Value != result)
                        {
                            employeeId = Convert.ToInt32(result);
                        };
                    }
                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return employeeId;
        }
    }
}
