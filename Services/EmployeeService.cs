using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;
using System.Collections.Generic;

namespace InsuranceApplication.Services
{
    public class EmployeeService : IEmployeeService
    {
        private readonly IEmployeeRepository _employeeRepository;

        public EmployeeService(IEmployeeRepository employeeRepository)
        {
            _employeeRepository = employeeRepository;
        }

        public IEnumerable<Employee> GetEmployees()
        {
            return _employeeRepository.GetEmployees();
        }

        public Employee GetEmployee(string employeeId)
        {
            return _employeeRepository.GetEmployee(employeeId);
        }

        public Employee AddEmployee(Employee employee)
        {
            string empId = employee.EmployeeId;
            empId = empId.Replace("E", "");
            empId = empId.TrimStart(new char[] { '0' });
            employee.Counter = Convert.ToInt32(empId);
            return _employeeRepository.AddEmployee(employee);
        }

        public Employee UpdateEmployee(string employeeId, Employee employee)
        {
            return _employeeRepository.UpdateEmployee(employeeId, employee);
        }

        public bool DeleteEmployee(string employeeId)
        {
            return _employeeRepository.DeleteEmployee(employeeId);
        }

        public string GetLastEmployeeId()
        {
            string employeeId;
            var id = (_employeeRepository.GetLastEmployeeId() + 1).ToString();
            if (id.Length == 1)
            {
                employeeId = "000" + id;
            }
            else if (id.Length == 2)
            {
                employeeId = "00" + id;
            }
            else if (id.Length == 3)
            {
                employeeId = "0" + id;
            }
            else
            {
                employeeId = id;
            }

            return "E" + employeeId;
        }
    }
}
