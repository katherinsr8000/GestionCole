using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrudApi.Models;

namespace CrudApi.Data.Interfaces
{
    public interface IPruebaRepository
    {
        Task<IEnumerable<lst_Alumno>> lstAlumno();
        Task<IEnumerable<lst_Profesor>> lstProfesor();
        bool InsertarAlumno(Add_Alumno a);
        bool InsertarProfesor(Add_Profesor p);
        bool InsertarAsignatura(Add_Asignatura asig);
        bool Add_CrearAsignatura(Add_CrearAsignatura s);
        bool UpdAlumno(int IdAlumno, Add_Alumno a);
        bool upd_profesor(int IdProfesor, Add_Profesor a);
        Task<IEnumerable<lst_Asignatura>> lstAsignatura();
        Task<IEnumerable<Get_Profesor>> GetProfesor();
        Task<IEnumerable<Get_Alumno>> GetAlumno();
    }
}
