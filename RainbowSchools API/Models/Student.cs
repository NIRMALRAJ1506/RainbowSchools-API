using System;
using System.Collections.Generic;

namespace RainbowSchools_API.Models
{
    public partial class Student
    {
        public Student()
        {
            Marks = new HashSet<Mark>();
        }

        public int StudentId { get; set; }
        public string StudentName { get; set; } = null!;
        public string? Class { get; set; }

        public virtual ICollection<Mark> Marks { get; set; }
    }
}
