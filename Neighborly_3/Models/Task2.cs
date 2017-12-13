//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Neighborly_3.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Task2
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Task2()
        {
            this.Messages = new HashSet<Message>();
        }
    
        public int TaskID { get; set; }
        [Display(Name = "Description")]
        public string TaskDescription { get; set; }
        [Display(Name = "Title")]
        public string TaskTitle { get; set; }
        public Nullable<bool> IsDone { get; set; }
        [Display(Name = "Time Created")]
        public System.DateTime TimeStamp { get; set; }
        public Nullable<bool> IsAssigned { get; set; }
        public string HelpProviderID { get; set; }
        public string TaskCreatorID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Messages { get; set; }
        public virtual AspNetUser AspNetUser { get; set; }
    }
}
