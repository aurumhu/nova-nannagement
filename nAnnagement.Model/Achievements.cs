//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace nAnnagement.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Achievements
    {
        public int Id { get; set; }
        public string Parent_Id { get; set; }
        public string Project_Id { get; set; }
        public string Details { get; set; }
        public string Cost { get; set; }
        public System.DateTime Start { get; set; }
        public System.DateTime End { get; set; }
        public string URL { get; set; }
        public int Employee_Id { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public Nullable<System.DateTime> Deleted { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}