using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using universidade_asc.DBEntities;
using universidade_asc.Helper;
using universidade_asc.Models;

namespace universidade_asc.Controllers.TurmaAluno
{
    public class GerarTurmasAlunosController : Controller
    {
        Log lg = new Log();
        public IActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public IActionResult ExecutaCriacaoTurmasAlunos([FromBody]TurmasAlunosViewModel mv)
        {
            try
            {
                var dbResult = (dynamic)null;
                if (!ModelState.IsValid)
                {
                    var result = new { retorno = 80, retornO_MESSAGE = "Bad Request"};
                    return Json(result);
                }
                else
                {
                    if (mv.iQtdAlunosPorTurma > 0 && mv.iQtdTurmas > 0)
                    {
                        lg.GeraLog("Gerando Turmas e Alunos");

                        UNIVERSIDADE_ASCContext ctx = new UNIVERSIDADE_ASCContext();

                        dbResult = ctx.spRoboticCadastraTurmas.FromSql<Result_spRoboticCadastraTurmas>("EXEC sp_Robotic_Cadastra_Turmas @qtdTurmas = {0}, @qtdAlunosPorTurmas = {1}", mv.iQtdTurmas, mv.iQtdAlunosPorTurma).FirstOrDefault();
                    }
                    else
                    {
                        var result = new { retorno = 81, retornO_MESSAGE = "Dados Inválidos!" };
                        return Json(result);
                    }
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