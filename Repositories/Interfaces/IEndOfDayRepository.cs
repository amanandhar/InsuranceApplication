using InsuranceApplication.Entities;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface IEndOfDayRepository
    {
        EndOfDay GetEndOfDay(string date);
        EndOfDay GetNextEndOfDay(long id);
        bool IsEndOfDayExist(string endOfDay);
    }
}
