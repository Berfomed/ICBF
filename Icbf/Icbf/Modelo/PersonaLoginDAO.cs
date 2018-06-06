using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//IMPORTAR DatosBD
using Datos;

namespace Modelo
{
    //SE DEJAN PÚBLICAS LAS CLASES PARA PODER ACCEDERLAS DESDE OTRO LADO
    public class PersonaLoginDAO
    {
        public bool iniciarSesion(string correo, string clave)
        {
            // Instanciar DataContext aparece ya que es un contexto de datos.
            ORMicbfDataDataContext bdcx = new ORMicbfDataDataContext();
            //Ejecutar la función y esa retornaría un resultado o nada
            //Crear consulta--que llama el procedimiento
            var consulta = (from alias in bdcx.SP_LOGIN(correo, clave)
                           select alias).FirstOrDefault();

            //Validar si la consulta trajo algo o nada
            if (consulta != null)
            {
                //se asignan las variables de sesiòn
                Sesion.idPersona = consulta.Correo;
                Sesion.nombres = consulta.Nombres;
                Sesion.idRol = consulta.idRol;
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
