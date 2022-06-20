using InsuranceApplication.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace InsuranceApplication.Repositories.Interfaces
{
    public interface ISettingRepository
    {
        IEnumerable<Setting> GetSettings();

        Setting AddSetting(Setting setting, bool truncate = false);

        Setting UpdateSetting(long id, Setting setting);

        bool DeletePreviousTransactions(string endOfDay);
    }
}
