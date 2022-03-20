using System;
using System.Collections.Generic;
using System.Text;

namespace InsuranceApplication.Entities
{
    public class LoanDetail
    {
        public long Id { get; set; }
        public string MemberName { get; set; }
        public string MemberAddress { get; set; }
        public string MemberBeneficiary { get; set; }
        public string MemberGender { get; set; }
        public DateTime StartingDate { get; set; }
        public DateTime RenewDate { get; set; }
        public int PeriodInMonth { get; set; }
        public DateTime MaturedDate { get; set; }
        public decimal LoanAmount { get; set; }
        public decimal Premium { get; set; }
        public decimal InsuranceAmount { get; set; }
        public decimal MaturedAmount { get; set; }
        public string ImagePath { get; set; }
        public long InsuranceCompanyId { get; set; }
        public long MemberId { get; set; }
        public string AddedBy { get; set; }
        public DateTime AddedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }
    }
}
