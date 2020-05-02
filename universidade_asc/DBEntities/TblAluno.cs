using System;
using System.Collections.Generic;

namespace universidade_asc
{
    public partial class TblAluno
    {
        public int IdAluno { get; set; }
        public string NmAluno { get; set; }
        public int? IdTurma { get; set; }
        public DateTime? DtInsert { get; set; }
    }
}
