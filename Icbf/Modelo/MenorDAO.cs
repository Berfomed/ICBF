using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;

namespace Modelo
{
    public class MenorDAO
    {
        public void registrarMenor(int _registroNiup, string _nombre, DateTime _date, string _tsangre, string _ciudadnaci,
                                     int _docAcudiente, string _telefono, string _direccion, string _eps, int _idjardin)
        {
            ORMicbfDataDataContext FinalICBF = new ORMicbfDataDataContext();
            RegistroNinios objninos = new RegistroNinios();
            try
            {
                objninos.RegistroNIUP = _registroNiup;
                objninos.Nombre = _nombre;
                objninos.FechaNac = _date;
                objninos.TipoSangre = _tsangre;
                objninos.CiudadNacimiento = _ciudadnaci;
                objninos.DocAcudiente = _docAcudiente;
                objninos.DocAcudiente = _docAcudiente;
                objninos.Telefono = _telefono;
                objninos.Direccion = _direccion;
                objninos.EPS = _eps;
                objninos.IdJardin = _idjardin;
                FinalICBF.RegistroNinios.InsertOnSubmit(objninos);
                FinalICBF.SubmitChanges();
                MessageBox.Show("Registro Exitoso");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.Message);

            }

        }
        public void actualizarRegistroNino(int _registroNiup, string _nombre, DateTime _date, string _tsangre, string _ciudadnaci,
                                     int _docAcudiente, string _telefono, string _direccion, string _eps, int _idjardin)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext FinalICBF = new ORMicbfDataDataContext();
            //traer el objeto que se quiere modificar, se trae con una consulta para traer una persona que ya exista en la bd

            var objninos = (from a in FinalICBF.RegistroNinios
                            where a.RegistroNIUP == _registroNiup
                            select a).First();

            //nombre del objeto y el atributo
            objninos.RegistroNIUP = _registroNiup;
            objninos.Nombre = _nombre;
            objninos.FechaNac = _date;
            objninos.TipoSangre = _tsangre;
            objninos.CiudadNacimiento = _ciudadnaci;
            objninos.DocAcudiente = _docAcudiente;
            objninos.Telefono = _telefono;
            objninos.Direccion = _direccion;
            objninos.EPS = _eps;
            objninos.IdJardin = _idjardin;

            //ejecutar cambios para que registre en la bd
            FinalICBF.SubmitChanges();
            MessageBox.Show("Se actualizó correctamente");
        }

        public object consultarTodos()
        {
            ORMicbfDataDataContext FinalICBF = new ORMicbfDataDataContext();
            var consulta = from a in FinalICBF.RegistroNinios
                           select new
                           {
                               a.RegistroNIUP,
                               a.Nombre,
                               a.FechaNac,
                               a.TipoSangre,
                               a.CiudadNacimiento,
                               a.DocAcudiente,
                               a.Telefono,
                               a.Direccion,
                               a.EPS,
                               a.IdJardin,
                           };
            //por si hay campos repetidos

            return consulta.Distinct();
        }

        //consultar por nombre y recibe el parametro nombres

        public object consultarNombreNinos(String _nombrenino)
        {

            ORMicbfDataDataContext FinalICBF = new ORMicbfDataDataContext();
            var consulta = from a in FinalICBF.RegistroNinios
                           join b in FinalICBF.Registro_Jardin on a.IdJardin equals b.IdJardin
                           where a.Nombre.StartsWith(_nombrenino)
                           select new
                           {
                               a.Nombre,
                               a.FechaNac,
                               a.DocAcudiente,
                               a.EPS,
                               IdJardin = b.IdJardin,
                               b.NombreJardin,
                               b.IdMadreComunitaria,
                           };
            return consulta.Distinct();

        }
        public void eliminarRegistroNino(int _registroNiup)
        {
            ORMicbfDataDataContext FinalICBF = new ORMicbfDataDataContext();
            //traer objeto que se obtiene de una consulta
            var objnino = (from a in FinalICBF.RegistroNinios
                           where a.RegistroNIUP == _registroNiup
                           select a).FirstOrDefault();//trae el primer objeto que encuentre y el default muestra null sino trae
                                                      //first genera excepcion y default controla dicha excepción
            FinalICBF.RegistroNinios.DeleteOnSubmit(objnino);
            FinalICBF.SubmitChanges();
            MessageBox.Show("Se eliminó El registro del nino");

        }

        //Metodo para consultar los jardines
        public object consultarJardines()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Registro_Jardin
                           select a;
            return consulta.Distinct();
        }


        //Metodo para Consultar los acudientes, en este caso hacemos referencia al idRol = 3
        public object consultarPersonas()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Persona
                           where a.idRol.Equals(3)
                           select new
                           {
                               a.Nombres,
                               a.Cedula,
                           };
            return consulta.Distinct();
        }
    }
}
