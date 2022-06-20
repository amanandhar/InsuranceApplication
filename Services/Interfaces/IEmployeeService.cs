using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Services.Interfaces
{
    public interface IEmployeeService
    {
        IEnumerable<Employee> GetEmployees();
        Employee GetEmployee(string employeeId);
        Employee AddEmployee(Employee employee);
        Employee UpdateEmployee(string employeeId, Employee employee);
        string DeleteEmployee(string employeeId);
        string GetLastEmployeeId();
    }
}
