namespace InsuranceApplication.Services.Interfaces
{
    public interface IDatabaseService
    {
        bool BackupDatabase(string dbBackupPrefix, string dbBackupFolder);
    }
}
