using InsuranceApplication.Repositories.Interfaces;
using InsuranceApplication.Services.Interfaces;

namespace InsuranceApplication.Services
{
    public class DatabaseService : IDatabaseService
    {
        private readonly IDatabaseRepository _databaseRepository;

        public DatabaseService(IDatabaseRepository databaseRepository)
        {
            _databaseRepository = databaseRepository;
        }

        public bool BackupDatabase(string dbBackupPrefix, string dbBackupFolder)
        {
            return _databaseRepository.BackupDatabase(dbBackupPrefix, dbBackupFolder);
        }
    }
}
