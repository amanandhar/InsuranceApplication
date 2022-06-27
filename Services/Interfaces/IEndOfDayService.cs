using System;

namespace InsuranceApplication.Services.Interfaces
{
    public interface IEndOfDayService
    {
        string GetDateInBs(DateTime date);
        bool IsDateInBsExist(string date);
    }
}
