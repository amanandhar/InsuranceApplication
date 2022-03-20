using InsuranceApplication.Entities;
using System.Collections.Generic;

namespace InsuranceApplication.Services.Interfaces
{
    public interface ILoanDetailService
    {
        IEnumerable<LoanDetail> GetLoanDetails();
        LoanDetail GetLoanDetail(long id);

        LoanDetail AddLoanDetail(LoanDetail loanDetail);

        LoanDetail UpdateLoanDetail(long id, LoanDetail loanDetail);

        bool DeleteLoanDetail(long id);
    }
}
