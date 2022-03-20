using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Services.Interfaces
{
    public interface IInsuranceCompanyService
    {
        IEnumerable<InsuranceCompany> GetInsuranceCompanies();
        InsuranceCompany GetInsuranceCompany(long id);

        InsuranceCompany AddInsuranceCompany(InsuranceCompany insuranceCompany);

        InsuranceCompany UpdateInsuranceCompany(long id, InsuranceCompany insuranceCompany);

        bool DeleteInsuranceCompany(long id);
    }
}
