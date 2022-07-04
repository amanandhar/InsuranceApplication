using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface ILoanDetailRepository
    {
        IEnumerable<LoanDetail> GetLoanDetails();

        LoanDetail GetLoanDetail(long id);

        LoanDetail AddLoanDetail(LoanDetail loanDetail);

        LoanDetail UpdateLoanDetail(long id, LoanDetail loanDetail);

        bool UpdateMaturatedDate(string date);

        bool DeleteLoanDetail(long id);
    }
}
