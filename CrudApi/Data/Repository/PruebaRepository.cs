using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using CrudApi.Data.Interfaces;
using CrudApi.Models;
using Dapper;

namespace CrudApi.Data.Repository
{
    public class PruebaRepository : BaseRepository, IPruebaRepository
    {
        public PruebaRepository(string CnnString) : base(CnnString)
        {
        }
        public async Task<IEnumerable<lst_Alumno>> lstAlumno()
        {
            try
            {
                using (IDbConnection db = GetConnection())
                {
                    return await db.QueryAsync<lst_Alumno>("colegio.lst_Alumno", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {

                throw;
            }

        }
        public async Task<IEnumerable<lst_Profesor>> lstProfesor()
        {
            try
            {
                using (IDbConnection db = GetConnection())
                {
                    return await db.QueryAsync<lst_Profesor>("colegio.lst_Profesor", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {

                throw;
            }

        }

        public bool InsertarAlumno(Add_Alumno a)
        {

            IDbCommand dbTransation;
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NumeroIdentificacion", a.NumeroIdentificacion);
            parameters.Add("@Nombres", a.Nombres);
            parameters.Add("@Apellidos", a.Apellidos);
            parameters.Add("@direccion", a.direccion);
            parameters.Add("@Telefono", Convert.ToInt32(a.Telefono));

            using (IDbConnection db = GetConnection())
            {
                db.Open();

                try
                {
                    db.ExecuteScalar("colegio.Add_Alumno",
                        commandType: CommandType.StoredProcedure,
                        param: parameters);
                    db.Close();
                    return true;
                }
                catch (Exception e)
                {
                    db.Close();
                    return false;
                    throw e;
                }
            }
        }
        public bool InsertarProfesor(Add_Profesor p)
        {

            IDbCommand dbTransation;
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@Nombres", p.Nombres);
            parameters.Add("@Apellidos", p.Apellidos);
            parameters.Add("@direccion", p.direccion);
            parameters.Add("@Telefono", Convert.ToInt32(p.Telefono));

            using (IDbConnection db = GetConnection())
            {
                db.Open();

                try
                {
                    db.ExecuteScalar("colegio.Add_Profesor",
                        commandType: CommandType.StoredProcedure,
                        param: parameters);
                    db.Close();
                    return true;
                }
                catch (Exception e)
                {
                    db.Close();
                    return false;
                    throw e;
                }
            }
        }
        public bool InsertarAsignatura(Add_Asignatura asig)
        {

            IDbCommand dbTransation;
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NombreMateria", asig.NombreMateria);
            parameters.Add("@IdAlumno", asig.IdAlumno);
            parameters.Add("@IdProfesor", asig.IdProfesor);

            using (IDbConnection db = GetConnection())
            {
                db.Open();

                try
                {
                    db.ExecuteScalar("colegio.Add_Asignatura",
                        commandType: CommandType.StoredProcedure,
                        param: parameters);
                    db.Close();
                    return true;
                }
                catch (Exception e)
                {
                    db.Close();
                    return false;
                    throw e;
                }
            }
        }
        public bool Add_CrearAsignatura(Add_CrearAsignatura s)
        {

            IDbCommand dbTransation;
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@NombreMateria", s.NombreMateria);
           
            using (IDbConnection db = GetConnection())
            {
                db.Open();

                try
                {
                    db.ExecuteScalar("colegio.Add_CrearAsignatura",
                        commandType: CommandType.StoredProcedure,
                        param: parameters);
                    db.Close();
                    return true;
                }
                catch (Exception e)
                {
                    db.Close();
                    return false;
                    throw e;
                }
            }
        }

        public bool UpdAlumno(int IdAlumno, Add_Alumno a)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@IdAlumno", IdAlumno);
                parameters.Add("@Nombres", a.Nombres);
                parameters.Add("@Apellidos", a.Apellidos);
                parameters.Add("@direccion", a.direccion);
                parameters.Add("@Telefono", a.Telefono);

                using (IDbConnection db = GetConnection())
                {
                    db.Open();

                    try
                    {
                        db.ExecuteScalar("colegio.upd_Alumno", commandType: CommandType.StoredProcedure, param: parameters);
                        db.Close();
                        return true;
                    }
                    catch (Exception e)
                    {
                        db.Close();
                        return false;
                        throw e;
                    }
                }
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        public bool upd_profesor(int IdProfesor, Add_Profesor a)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@IdProfesor", IdProfesor);
                parameters.Add("@Nombres", a.Nombres);
                parameters.Add("@Apellidos", a.Apellidos);
                parameters.Add("@direccion", a.direccion);
                parameters.Add("@Telefono", a.Telefono);

                using (IDbConnection db = GetConnection())
                {
                    db.Open();

                    try
                    {
                        db.ExecuteScalar("colegio.upd_profesor", commandType: CommandType.StoredProcedure, param: parameters);
                        db.Close();
                        return true;
                    }
                    catch (Exception e)
                    {
                        db.Close();
                        return false;
                        throw e;
                    }
                }
            }
            catch (Exception e)
            {

                throw e;
            }

        }
        public async Task<IEnumerable<lst_Asignatura>> lstAsignatura()
        {
            try
            {
                using (IDbConnection db = GetConnection())
                {
                    return await db.QueryAsync<lst_Asignatura>("colegio.lst_Asignatura", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {

                throw;
            }

        }
        public async Task<IEnumerable<Get_Profesor>> GetProfesor()
        {
            try
            {
                using (IDbConnection db = GetConnection())
                {
                    return await db.QueryAsync<Get_Profesor>("colegio.Get_Profesor", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {

                throw;
            }

        }
        public async Task<IEnumerable<Get_Alumno>> GetAlumno()
        {
            try
            {
                using (IDbConnection db = GetConnection())
                {
                    return await db.QueryAsync<Get_Alumno>("colegio.Get_Alumno", commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {

                throw;
            }

        }
        //public bool DelClientes(string Identificacion)
        //{
        //    try
        //    {
        //        DynamicParameters parameters = new DynamicParameters();
        //        parameters.Add("@identificacion", Identificacion);

        //        using (IDbConnection db = GetConnection())
        //        {
        //            db.Open();

        //            try
        //            {
        //                db.ExecuteScalar("Facturacion.Del_Clientes", commandType: CommandType.StoredProcedure, param: parameters);
        //                db.Close();
        //                return true;
        //            }
        //            catch (Exception e)
        //            {
        //                db.Close();
        //                return false;
        //                throw e;
        //            }
        //        }
        //    }
        //    catch (Exception e)
        //    {

        //        throw e;
        //    }

        //}
    }
    
}

