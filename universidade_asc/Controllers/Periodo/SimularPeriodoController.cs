using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using universidade_asc.DBEntities;
using universidade_asc.Helper;

namespace universidade_asc.Controllers.Periodo
{
    public class SimularPeriodoController : Controller
    {
        Log lg = new Log();
        public IActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public IActionResult SimularPeriodo()
        {
            try
            {
                var dbResult = (dynamic)null;
                if (!ModelState.IsValid)
                {
                    var result = new { retorno = 80, retornO_MESSAGE = "Bad Request" };
                    return Json(result);
                }
                else
                {
                    lg.GeraLog("Simulando Periodo");

                    UNIVERSIDADE_ASCContext ctx = new UNIVERSIDADE_ASCContext();

                    dbResult = ctx.spSimulaPeriodo.FromSql<Result_spSimulaPeriodo>("EXEC sp_Simula_Periodo").FirstOrDefault();
                }

                lg.GeraLog("json ---> " + dbResult);

                return Ok(dbResult);

            }
            catch (Exception ex)
            {
                var result = new { retorno = 81, retornO_MESSAGE = ex.Message.ToString() };
                return Json(result);
            }
        }

        [HttpPost]
        public IActionResult ListarResultadoSimulacao()
        {
            try
            {
                var dbResult = (dynamic)null;
                if (!ModelState.IsValid)
                {
                    var result = new { retorno = 80, retornO_MESSAGE = "Bad Request" };
                    return Json(result);
                }
                else
                {
                    lg.GeraLog("Listando Simulação");

                    UNIVERSIDADE_ASCContext ctx = new UNIVERSIDADE_ASCContext();

                    dbResult = (
                    from p in ctx.TbResultadoPeriodo
                    join al in ctx.TblAluno on p.IdAluno equals al.IdAluno
                    join tm in ctx.TblTurma on al.IdTurma equals tm.IdTurma
                    join mat in ctx.TblMateria on p.IdMateria equals mat.IdMateria
                    orderby tm.DcTurma, al.NmAluno, mat.DcMateria
                    select new
                    {
                        nmAluno = al.NmAluno,
                        nmTurma = tm.DcTurma,
                        nmMateria = mat.DcMateria,
                        notaAV1 = p.NotaAv1,
                        notaAV2 = p.NotaAv2,
                        notaAV3 = p.NotaAv3,
                        notaFinal = p.NotaFinal,
                        resultado = p.Resultado
                    }).ToList();
                }

                lg.GeraLog("json ---> " + dbResult);

                return Ok(dbResult);

            }
            catch (Exception ex)
            {
                var result = new { retorno = 81, retornO_MESSAGE = ex.Message.ToString() };
                return Json(result);
            }
        }
    }
}