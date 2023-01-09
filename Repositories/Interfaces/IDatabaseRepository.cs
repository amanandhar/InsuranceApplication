namespace InsuranceApplication.Repositories.Interfaces
{
    public interface IDatabaseRepository
    {
        bool BackupDatabase(string dbBackupPrefix, string dbBackupFolder);
    }
}
