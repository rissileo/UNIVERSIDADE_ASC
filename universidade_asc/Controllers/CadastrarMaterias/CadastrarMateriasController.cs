using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using universidade_asc.DBEntities;
using universidade_asc.Helper;
using universidade_asc.Models;

namespace universidade_asc.Controllers.CadastrarMaterias
{
    public class CadastrarMateriasController : Controller
    {
        Log lg = new Log();
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult CadastrarMaterias([FromBody]MateriasViewModel mv)
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
                    lg.GeraLog("Cadastrando Matéria");

                    UNIVERSIDADE_ASCContext ctx = new UNIVERSIDADE_ASCContext();

                    dbResult = ctx.spCadastraMaterias.FromSql<Result_spCadastraMaterias>("EXEC sp_Cadastra_Materiais @idMateria = {0}, @dcMateria = {1}, @pesoAV1 = {2},  @pesoAV2 = {3}, @pesoAV3 = {4}", mv.@idMateria, mv.dcMateria, mv.pesoAV1, mv.pesoAV2, mv.pesoAV3).FirstOrDefault();
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
        public IActionResult ListaMaterias()
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
                    lg.GeraLog("Cadastrando Matéria");

                    UNIVERSIDADE_ASCContext ctx = new UNIVERSIDADE_ASCContext();

                    dbResult = ctx.TblMateria.ToList();
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