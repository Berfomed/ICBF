using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;


namespace Modelo
{
    public class ClsJardinDAO
    {
        public void registrarJardin(string _nombreJardin, string _direccion, string _estado, int _madreComunitaria)
        {
            ORMicbfDataDataContext dbicbf = new ORMicbfDataDataContext();
            var consulta = (from a in dbicbf.Registro_Jardin
                            where a.IdMadreComunitaria.Equals(_madreComunitaria) && a.NombreJardin.Equals(_nombreJardin)
                            select a).First();
            if (consulta == null)
            {
                //crear la instancia del ORM
                ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
                //ASIGNAR LOS VALORES A UN OBJETO DE CLASE PERSONA
                Registro_Jardin objJardin = new Registro_Jardin();
                //nombre del objeto y el atributo
                try
                {
                    objJardin.NombreJardin = _nombreJardin;
                    objJardin.DireccionJardin = _direccion;
                    objJardin.EstadoJardin = _estado;
                    objJardin.IdMadreComunitaria = _madreComunitaria;
                    //LA INSTANCIA QUE SE LE DA AL ORM+TABLA A INSERTAR REGISTROS.METODO INSERT
                    bd.Registro_Jardin.InsertOnSubmit(objJardin);
                    //ejecutar cambios para que registre en la bd
                    bd.SubmitChanges();
                    MessageBox.Show("Se registró correctamente");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:" + ex.Message);
                }
            }
            else
            {
                MessageBox.Show("Esta Madre Comunitaria ya se encuentra asignada a un Jardin, o el Jardin ya se encuentra regisrado");
            }
           



        }
        public void actualizarJardin(int _idJardin, string _nombreJardin, string _direccion, string _estado, int _madreComunitaria)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer el objeto que se quiere modificar, se trae con una consulta para traer una persona que ya exista en la bd

            var objJardin = (from a in bd.Registro_Jardin
                             where a.IdJardin == _idJardin
                             select a).First();


            //nombre del objeto y el atributo
            objJardin.IdJardin = _idJardin;
            objJardin.NombreJardin = _nombreJardin;
            objJardin.DireccionJardin = _direccion;
            objJardin.EstadoJardin = _estado;
            objJardin.IdMadreComunitaria = _madreComunitaria;

            //ejecutar cambios para que registre en la bd
            bd.SubmitChanges();
            MessageBox.Show("Se actualizó correctamente");
        }
        public object consultarTodos()
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            var consulta = from a in bd.Registro_Jardin
                           join b in bd.Persona on a.IdMadreComunitaria equals b.Cedula
                           select new
                           {
                               a.IdJardin,
                               a.NombreJardin,
                               a.DireccionJardin,
                               a.EstadoJardin,
                               persona = b.Nombres
                           };
            //por si hay campos repetidos

            return consulta.Distinct();
        }
        //consultar por nombre y recibe el parametro nombres
        /* public object consultarNombre(string _nombres)
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
         }*/
        public void eliminarJardin(int _idJardin)
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer objeto que se obtiene de una consulta
            var objJardin = (from a in bd.Registro_Jardin
                             where a.IdJardin == _idJardin
                             select a).FirstOrDefault();//trae el primer objeto que encuentre y el default muestra null sino trae
                                                        //first genera excepcion y default controla dicha excepción
            bd.Registro_Jardin.DeleteOnSubmit(objJardin);
            bd.SubmitChanges();
            MessageBox.Show("Se eliminó el jardín");

        }
    }
}

