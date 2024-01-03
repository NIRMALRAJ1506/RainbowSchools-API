using System;
using System.Collections.Generic;

namespace RainbowSchools_API.Models
{
    public partial class Mark
    {
        public int MarkId { get; set; }
        public int? StudentId { get; set; }
        public int? SubjectId { get; set; }
        public int? TeacherId { get; set; }
        public decimal? MarksObtained { get; set; }

        public virtual Student? Student { get; set; }
        public virtual Subject? Subject { get; set; }
        public virtual Teacher? Teacher { get; set; }
    }
}
