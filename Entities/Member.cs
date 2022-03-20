using System;
using System.Collections.Generic;
using System.Text;

namespace InsuranceApplication.Entities
{
    public class Member
    {
        public long Id { get; set; }
        public string AddedBy { get; set; }
        public DateTime AddedDate { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime UpdatedDate { get; set; }

    }
}
