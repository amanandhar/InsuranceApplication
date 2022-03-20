using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface IInsuranceCompanyRepository
    {
        IEnumerable<InsuranceCompany> GetInsuranceCompanies();
        InsuranceCompany GetInsuranceCompany(long id);

        InsuranceCompany AddInsuranceCompany(InsuranceCompany insuranceCompany);

        InsuranceCompany UpdateInsuranceCompany(long id, InsuranceCompany insuranceCompany);

        bool DeleteInsuranceCompany(long id);
    }
}
