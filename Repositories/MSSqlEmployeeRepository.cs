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
            var query = "SELECT * FROM Employee order by EmployeeId";
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
            var query = "SELECT * FROM Employee WHERE EmployeeId = @EmployeeId";

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
            var query = "INSERT INTO Employee " +
                    "(" +
                    "EmpId, EmployeeId, EmployeeName, TempAddress, PermAddress, ContactNumber, Email, CitizenshipNumber, Education, " +
                    "DateOfBirth, Age, BloodGroup, AppointmentDate, FatherName, MotherName, Gender, MaritalStatus, SpouseName, " +
                    "Post, PostStatus, ResignationDate, ImageLocation" +
                    ") " +
                    "VALUES " +
                    "(" +
                    "@EmpId, @EmployeeId, @EmployeeName, @TempAddress, @PermAddress, @ContactNumber, @Email, @CitizenshipNumber, @Education, " +
                    "@DateOfBirth, @Age, @BloodGroup, @AppointmentDate, @FatherName, @MotherName, @Gender, @MaritalStatus, @SpouseName, " +
                    "@Post, @PostStatus, @ResignationDate, @ImageLocation" +
                    ")";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@EmpId", employee.EmpId);
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
            var query = "UPDATE Employee SET " +
                    "EmployeeId = @EmployeeId, " +
                    "EmployeeName = @EmployeeName, " +
                    "TempAddress = @TempAddress, " +
                    "PermAddress = @PermAddress, " +
                    "ContactNumber = @ContactNumber, " +
                    "Email = @Email, " +
                    "CitizenshipNumber = @CitizenshipNumber, " +
                    "Education = @Education, " +
                    "DateOfBirth = @DateOfBirth, " +
                    "Age = @Age, " +
                    "BloodGroup = @BloodGroup, " +
                    "AppointmentDate = @AppointmentDate, " +
                    "FatherName = @FatherName, " +
                    "MotherName = @MotherName, " +
                    "Gender = @Gender, " +
                    "MaritalStatus = @MaritalStatus, " +
                    "SpouseName = @SpouseName, " +
                    "Post = @Post, " +
                    "PostStatus = @PostStatus, " +
                    "ResignationDate = @ResignationDate, " +
                    "ImageLocation = @ImageLocation " +
                    "WHERE " +
                    "EmployeeId = @EmployeeId";

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
            string query = "DELETE FROM Employee " +
                "WHERE " +
                "EmployeeId = @EmployeeId";

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
            int employeeId;
            var query = "SELECT Top 1 EmpId FROM Employee ORDER BY EmpId DESC";

            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (var command = new SqlCommand(query, connection))
                    {
                        employeeId = Convert.ToInt32(command.ExecuteScalar());

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
