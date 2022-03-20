using InsuranceApplication.Entities;
using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System.Collections.Generic;

namespace InsuranceApplication.Services
{
    public class LoanDetailService : ILoanDetailService
    {
        private readonly ILoanDetailRepository _loadDetailRepository;

        public LoanDetailService(ILoanDetailRepository loadDetailRepository)
        {
            _loadDetailRepository = loadDetailRepository;
        }

        public IEnumerable<LoanDetail> GetLoanDetails()
        {
            return _loadDetailRepository.GetLoanDetails();
        }

        public LoanDetail GetLoanDetail(long id)
        {
            return _loadDetailRepository.GetLoanDetail(id);
        }

        public LoanDetail AddLoanDetail(LoanDetail loanDetail)
        {
            return _loadDetailRepository.AddLoanDetail(loanDetail);
        }

        public LoanDetail UpdateLoanDetail(long id, LoanDetail loanDetail)
        {
            return _loadDetailRepository.UpdateLoanDetail(id, loanDetail);
        }

        public bool DeleteLoanDetail(long id)
        {
            return _loadDetailRepository.DeleteLoanDetail(id);
        }
    }
}
