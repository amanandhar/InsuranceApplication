﻿namespace InsuranceApplication.Shared
{
    public class Constants
    {
        // Default Value
        public const decimal DEFAULT_DECIMAL_VALUE = 0.00m;

        public const string BASE_DOCUMENT_FOLDER = "BaseDocumentFolder";

        //Images
        public const string BASE_IMAGE_FOLDER = "BaseImageFolder";
        public const string EMPLOYEE_IMAGE_FOLDER = "EmployeeImageFolder";
        public const string MEMBER_IMAGE_FOLDER = "MemberImageFolder";

        // Database
        public const string DB_CONNECTION_STRING = "DBConnectionString";
        public const string TABLE_EMPLOYEE = "Employee";
        public const string TABLE_END_OF_DAY = "EndOfDay";
        public const string TABLE_INSURANCE_COMPANY = "InsuranceCompany";
        public const string TABLE_LOAN_DETAIL = "LoanDetail";
        public const string TABLE_SETTING = "Setting";
        public const string TABLE_USER = "User";

        // MessageBox Message
        public const string MESSAGE_BOX_DELETE_MESSAGE = "Do you want to delete?";
        public const string MESSAGE_BOX_UPDATE_MESSAGE = "Do you want to update?";

        // Relationships
        public const string HUSBAND = "Husband";
        public const string WIFE = "Wife";
        public const string SON = "Son";
        public const string DAUGHTER = "Daughter";
        public const string FATHER = "Father";
        public const string MOTHER = "Mother";
        public const string UNCLE = "Uncle";
        public const string AUNT = "Aunt";
        public const string OTHERS = "Others";

        // Gender
        public const string MALE = "Male";
        public const string FEMALE = "Female";

        // Database
        public const string DB_BACKUP_LOCATION = "DatabaseBackupLocation";
        public const string DB_BACKUP_PREFIX = "DatabaseBackupPrefix";

        // Temporary Variables
        public const string TEST_USER = "TEST_USER";
        public const string SYSTEM_USER = "SYSTEM_USER";

        //Users
        public const string ADMIN = "Admin";
        public const string STAFF = "Staff";
        public const string GUEST = "Guest";
    }
}
