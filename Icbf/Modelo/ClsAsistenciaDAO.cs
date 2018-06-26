using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;


namespace Modelo
{
    public class ClsAsistenciaDAO
    {
        public void registrarAsistencia( long _IdNinio,  DateTime _fecha, string _estado)
        {            
            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //Instanciamos la entidad Reistrar_Asistencia
            Registro_Asistencia objAsistencia = new Registro_Asistencia();          

                    try
                    {
                        objAsistencia.IdNinio = _IdNinio;
                        objAsistencia.fecha = _fecha;
                        objAsistencia.DesEstadoNinio = _estado;
                        bd.Registro_Asistencia.InsertOnSubmit(objAsistencia);
                        bd.SubmitChanges();
                        MessageBox.Show("Se registró correctamente");

                    }
                    catch (Exception e)
                    {

                        MessageBox.Show("Error:" + e.Message);
                    }
                }


            //metodo creado para cargar datos al drop down del formulario creado para registrar la asistencia de los niños,
            //la idea es obtener el id del niño y mostrar el nombre
            public object seleccionarNiño()
        {
            //instancio la coneccion a la base de datos para usar las entidades y consultas
            ORMicbfDataDataContext dbicbf = new ORMicbfDataDataContext();
            var consulta = from a in dbicbf.RegistroNinios
                           select new
                           {
                               a.Nombre,
                               a.RegistroNIUP,
                           };
            return consulta.Distinct();

        }

        public object ninosEnfermos()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Registro_Asistencia
                           join b in db.RegistroNinios on a.IdNinio equals b.RegistroNIUP
                           where a.DesEstadoNinio.Equals("Enfermo")
                           select new
                           {
                               IdNinio = b.Nombre,
                               a.fecha,
                               a.DesEstadoNinio,
                           };
            return consulta.Distinct();                          
        }

        ORMicbfDataDataContext db = new ORMicbfDataDataContext();
        public object Inasistencia()
        {

            //var consulta = "SELECT * FROM Registro_Asistencia WHERE fecha BETWEEN '" +desde+ "' AND '" + hasta + "' ";
            var consulta = from a in db.Registro_Asistencia
                           where a.fecha >= DateTime.Now.AddDays(-8) && a.DesEstadoNinio.Equals("No Asistió")
                           select a;
            return consulta.Distinct();
        }


       
        
        }
    }
