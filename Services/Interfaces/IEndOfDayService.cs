using InsuranceApplication.Entities;

namespace InsuranceApplication.Services.Interfaces
{
    public interface IEndOfDayService
    {
        EndOfDay GetEndOfDay(string date);
        EndOfDay GetNextEndOfDay(long id);
        bool IsEndOfDayExist(string endOfDay);
    }
}
