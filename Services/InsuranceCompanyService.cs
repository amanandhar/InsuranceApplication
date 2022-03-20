using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System.Collections.Generic;

namespace InsuranceApplication.Services
{
    public class InsuranceCompanyService : IInsuranceCompanyService
    {
        private readonly IInsuranceCompanyRepository _insuranceCompanyRepository;

        public InsuranceCompanyService(IInsuranceCompanyRepository insuranceCompanyRepository)
        {
            _insuranceCompanyRepository = insuranceCompanyRepository;
        }

        public IEnumerable<InsuranceCompany> GetInsuranceCompanies()
        {
            return _insuranceCompanyRepository.GetInsuranceCompanies();
        }

        public InsuranceCompany GetInsuranceCompany(long id)
        {
            return _insuranceCompanyRepository.GetInsuranceCompany(id);
        }

        public InsuranceCompany AddInsuranceCompany(InsuranceCompany insuranceCompany)
        {
            return _insuranceCompanyRepository.AddInsuranceCompany(insuranceCompany);
        }

        public InsuranceCompany UpdateInsuranceCompany(long id, InsuranceCompany insuranceCompany)
        {
            return _insuranceCompanyRepository.UpdateInsuranceCompany(id, insuranceCompany);
        }

        public bool DeleteInsuranceCompany(long id)
        {
            return _insuranceCompanyRepository.DeleteInsuranceCompany(id);
        }
    }
}
