using System;

namespace InsuranceApplication.Entities
{
    public class InsuranceCompany
    {
        public long Id { get; set; }
        public string SerialNumber { get; set; }
        public string Name { get; set; }
        public string HeadOfficeAddress { get; set; }
        public string BranchOfficeAddress { get; set; }
        public string HeadOfDepartment { get; set; }
        public string Position { get; set; }
        public DateTime AgreementDate { get; set; }
        public DateTime? EstablishedDate { get; set; }
        public string AddedBy { get; set; }
        public DateTime AddedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
    }
}
