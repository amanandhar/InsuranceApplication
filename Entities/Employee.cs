using System;

namespace InsuranceApplication.Entities
{
    public class Employee
    {
        public int Id { get; set; }
        public int EmpId { get; set; }
        public string EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public string TempAddress { get; set; }
        public string PermAddress { get; set; }
        public long? ContactNumber { get; set; }
        public string Email { get; set; }
        public string CitizenshipNumber { get; set; }
        public string Education { get; set; }
        public string DateOfBirth { get; set; }
        public int? Age { get; set; }
        public string BloodGroup { get; set; }
        public string AppointmentDate { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public string Gender { get; set; }
        public string MaritalStatus { get; set; }
        public string SpouseName { get; set; }
        public string Post { get; set; }
        public string PostStatus { get; set; }
        public string ResignationDate { get; set; }
        public string ImageLocation { get; set; }
        public string AddedBy { get; set; }
        public DateTime AddedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
    }
}
