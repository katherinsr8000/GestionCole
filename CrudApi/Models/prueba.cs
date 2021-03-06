﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CrudApi.Models
{
	public class Add_Alumno
	{
		public string NumeroIdentificacion { get; set; }
		public string Nombres { get; set; }
		public string Apellidos { get; set; }
		public string direccion { get; set; }
		public int Telefono { get; set; }

	}
	public class Add_Asignatura
	{
		public string NombreMateria { get; set; }
		public int IdAlumno { get; set; }
		public int IdProfesor { get; set; }

	}
	public class Add_Profesor
	{
		public string Nombres { get; set; }
		public string Apellidos { get; set; }
		public string direccion { get; set; }
		public int Telefono { get; set; }

	}

	public class lst_Alumno
	{
		public int IdAlumno { get; set; }
		public string NumeroIdentificacion { get; set; }
		public string Nombres { get; set; }
		public string Apellidos { get; set; }
		public string direccion { get; set; }
		public int Telefono { get; set; }
	}
	public class lst_Profesor
	{
		public int IdProfesor { get; set; }
		public string Nombres { get; set; }
		public string Apellidos { get; set; }
		public string direccion { get; set; }
		public int Telefono { get; set; }

	}

	public class Add_CrearAsignatura
	{
		public string NombreMateria { get; set; }
	}
	public class lst_Asignatura
	{
		public int IdAsignatura { get; set; }
		public string NombreMateria { get; set; }
	}

	public class Get_Profesor
	{
		public int IdProfesor { get; set; }
		public string Nombre { get; set; }
	}
	public class Get_Alumno
	{
		public int IdAlumno { get; set; }
		public string Nombre { get; set; }

	}
}

