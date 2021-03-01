using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrudApi.Data.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using CrudApi.Models;

namespace CrudApi.Controllers
{

    [Route("api/[controller]")]

    [ApiController]
    public class PruebaController : ControllerBase
    {

        public readonly IPruebaRepository al;

        public PruebaController(IPruebaRepository al)
        {
            this.al = al;
        }

        [HttpGet]
        [Route("Alumno")]
        public async Task<IActionResult> Get()
        {
            try
            {
                return Ok(await al.lstAlumno());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }

        [HttpGet]
        [Route("Profesor")]
        public async Task<IActionResult> Get_profesor()
        {
            try
            {
                return Ok(await al.lstProfesor());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }
        [HttpPost]
        [Route("AddProfesor")]
        public IActionResult Post([FromBody] Add_Profesor p)
        {
            try
            {
                return Ok(al.InsertarProfesor(p));

            }
            catch (Exception e)
            {

                throw e;
            }


        }
        [HttpPost]
        [Route("AddAlumn")]
        public IActionResult InsertAlumno([FromBody] Add_Alumno a)
        {
            try
            {
                return Ok(al.InsertarAlumno(a));
            }
            catch (Exception e)
            {

                throw e;
            }
        }
        [HttpPost]
        [Route("Addasignatura")]
        public IActionResult InsertAsignatura([FromBody] Add_Asignatura asig)
        {
            try
            {
                return Ok(al.InsertarAsignatura(asig));
            }
            catch (Exception e)
            {

                throw e;
            }
        }
        [HttpPost]
        [Route("AddMateria")]
        public IActionResult Add_CrearAsignatura([FromBody] Add_CrearAsignatura s)
        {
            try
            {
                return Ok(al.Add_CrearAsignatura(s));
            }
            catch (Exception e)
            {

                throw e;
            }
        }

        [HttpPut("{id}")]
        //[Route("UpdAlumno")]
        public IActionResult Put(int Id, [FromBody] Add_Alumno p)
        {
            try
            {
                return Ok(al.UpdAlumno(Id, p));

            }
            catch (Exception e)
            {

                throw e;
            }
        }
        ///[HttpPut]
        [Route("UpdProfesor")]
        public IActionResult PutProfesor(int IdProfesor, [FromBody] Add_Profesor a)
        {
            try
            {
                return Ok(al.upd_profesor(IdProfesor, a));

            }
            catch (Exception e)
            {

                throw e;
            }
        }
        [HttpGet]
        [Route("Materia")]
        public async Task<IActionResult> GetMaterias()
        {
            try
            {
                return Ok(await al.lstAsignatura());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }
        [HttpGet]
        [Route("Alumnos")]
        public async Task<IActionResult> GetAlumnos()
        {
            try
            {
                return Ok(await al.GetAlumno());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }
        [HttpGet]
        [Route("Docentes")]
        public async Task<IActionResult> GetDocentes()
        {
            try
            {
                return Ok(await al.GetProfesor());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }

        [HttpPost]
        [Route("AddNota")]
        public IActionResult Add_NotasAlumno([FromBody] Add_NotasAlumno n)
        {
            try
            {
                return Ok(al.Add_NotasAlumno(n));
            }
            catch (Exception e)
            {

                throw e;
            }
        }
        [HttpGet]
        [Route("GetReporte")]
        public async Task<IActionResult> GetReporte()
        {
            try
            {
                return Ok(await al.Get_ReporteNotas());
            }

            catch (Exception e)
            {
                return StatusCode(500, e);
            }
        }


        //[HttpDelete ("[action]")]
        //public IActionResult ElimnarCliente (string Identificacion)
        //{
        //    try
        //    {
        //        return Ok(al.DelClientes(Identificacion));

        //    }
        //    catch (Exception e)
        //    {

        //        throw e;
        //    }
        //}

    }
}
