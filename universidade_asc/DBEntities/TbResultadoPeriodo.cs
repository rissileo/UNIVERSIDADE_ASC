using System;
using System.Collections.Generic;

namespace universidade_asc
{
    public partial class TbResultadoPeriodo
    {
        public int IdResultadoPeriodo { get; set; }
        public int? IdAluno { get; set; }
        public int? IdMateria { get; set; }
        public double? NotaAv1 { get; set; }
        public decimal? NotaAv2 { get; set; }
        public decimal? NotaAv3 { get; set; }
        public decimal? NotaFinal { get; set; }
        public string Resultado { get; set; }
        public DateTime? DtInsert { get; set; }
    }
}
