using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;

namespace Modelo
{
    public class ClsPersonaDAO
    {
        // crear los DAO y los DTO=atributos y las clases, los metodos
        //En este caso no se crea ya que eso está en el ORM
        //int idPersona;
        //string nombres;
        //DateTime fechaNacimiento;
        //string telefono;
        //string celular;
        //string direccion;
        //string correo;
        //string clave;
        //Rol rol;
        //va a recibir los atrubitos de la clase Persona ORM 
        //y van a llegar de la caja de texto los valores
        //método que reciba por parametros las variables
        public void registrarPersona(int _cedula, string _nombres, DateTime _fechaNacimiento, string _telefono, string _celular, string _direccion, string _correo, string _clave, int _rol)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //ASIGNAR LOS VALORES A UN OBJETO DE CLASE PERSONA
            Persona objPersona = new Persona();
            //nombre del objeto y el atributo
            try
            {
                objPersona.Cedula = _cedula;
                objPersona.Nombres = _nombres;
                objPersona.FechaNacimiento = _fechaNacimiento;
                objPersona.Telefono = _telefono;
                objPersona.Celular = _celular;
                objPersona.Direccion = _direccion;
                objPersona.Correo = _correo;
                objPersona.Clave = _clave;
                objPersona.idRol = _rol;
                //LA INSTANCIA QUE SE LE DA AL ORM+TABLA A INSERTAR REGISTROS.METODO INSERT
                bd.Persona.InsertOnSubmit(objPersona);
                //ejecutar cambios para que registre en la bd
                bd.SubmitChanges();
                MessageBox.Show("Se registró correctamente");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" +ex.Message);
            }


            
        }
        public void actualizarPersona(int _cedula, string _nombres, DateTime _fechaNacimiento, string _telefono, string _celular, string _direccion, string _correo, string _clave, int _rol)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer el objeto que se quiere modificar, se trae con una consulta para traer una persona que ya exista en la bd

            var objPersona = (from a in bd.Persona
                             where a.Cedula == _cedula
                             select a).First();


            //nombre del objeto y el atributo
            objPersona.Cedula = _cedula;
            objPersona.Nombres = _nombres;
            objPersona.FechaNacimiento = _fechaNacimiento;
            objPersona.Telefono = _telefono;
            objPersona.Celular = _celular;
            objPersona.Direccion = _direccion;
            objPersona.Correo = _correo;
            objPersona.Clave = _clave;
            objPersona.idRol = _rol;

            //ejecutar cambios para que registre en la bd
            bd.SubmitChanges();
            MessageBox.Show("Se actualizó correctamente");
        }
        public object consultarTodos()
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            var consulta = from a in bd.Persona
                           join b in bd.Rol on a.idRol equals b.idRol
                           select new
                           {
                               a.Cedula,
                               a.Nombres,
                               a.FechaNacimiento,
                               a.Telefono,
                               a.Celular,
                               a.Direccion,
                               a.Correo,
                               a.Clave,
                               rol = b.nombreRol
                           };
            //por si hay campos repetidos

            return consulta.Distinct();
        }
        //consultar por nombre y recibe el parametro nombres
        public object consultarNombre(string _nombres)
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            var consulta = from a in bd.Persona
                           join b in bd.Rol on a.idRol equals b.idRol
                           //trae los que inician por cada letra que ingrese
                           where a.Nombres.StartsWith(_nombres)
                           select new
                           {
                               a.Cedula,
                               a.Nombres,
                               a.FechaNacimiento,
                               a.Telefono,
                               a.Celular,
                               a.Direccion,
                               a.Correo,
                               a.Clave,
                               rol = b.nombreRol
                           };
            return consulta.Distinct();
        }
        public void eliminarPersona(int _cedula)
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer objeto que se obtiene de una consulta
            var objPersona = (from a in bd.Persona
                              where a.Cedula == _cedula
                              select a).FirstOrDefault();//trae el primer objeto que encuentre y el default muestra null sino trae
                                //first genera excepcion y default controla dicha excepción
            bd.Persona.DeleteOnSubmit(objPersona);
            bd.SubmitChanges();
            MessageBox.Show("Se eliminó la persona");

        }
    }
}
