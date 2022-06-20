using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface IEmployeeRepository
    {
        IEnumerable<Employee> GetEmployees();
        Employee GetEmployee(string employeeId);
        Employee AddEmployee(Employee employee);
        Employee UpdateEmployee(string employeeId, Employee employee);
        string DeleteEmployee(string employeeId);
        int GetLastEmployeeId();
    }
}
