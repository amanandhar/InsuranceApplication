using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services.Interfaces;
using System;

namespace InsuranceApplication.Services
{
    public class EndOfDayService : IEndOfDayService
    {
        private readonly IEndOfDayRepository _endOfDayRepository;

        public EndOfDayService(IEndOfDayRepository endOfDayRepository)
        {
            _endOfDayRepository = endOfDayRepository;
        }

        public string GetDateInBs(DateTime date)
        {
            return _endOfDayRepository.GetDateInBs(date);
        }

        public bool IsDateInBsExist(string endOfDay)
        {
            return _endOfDayRepository.IsDateInBsExist(endOfDay);
        }
    }
}
