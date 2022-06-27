using System;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface IEndOfDayRepository
    {
        string GetDateInBs(DateTime date);
        bool IsDateInBsExist(string date);
    }
}
