using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;
using Datos;

namespace Modelo
{
    public class ClsAvanceDAO
    {

        public void RegistrarAvance(int _ninio, int _AnioEscolar, string _Nivel, string _Notas, string _Descripcion, DateTime _FechaEntregaNota)
        {
            try
            {
                ORMicbfDataDataContext dbicbf = new ORMicbfDataDataContext();
                Registro_Avance_Academico objAvance = new Registro_Avance_Academico();
                objAvance.idNinio = _ninio;
                objAvance.AnioEscolar = _AnioEscolar;
                objAvance.Nivel = _Nivel;
                objAvance.Notas = _Notas;
                objAvance.Descripcion = _Descripcion;
                objAvance.FechaEntregaNota = _FechaEntregaNota;
                dbicbf.Registro_Avance_Academico.InsertOnSubmit(objAvance);
                dbicbf.SubmitChanges();
                MessageBox.Show("La Nota se Registro en el Sistema");
            }
            catch (Exception e)
            {
                MessageBox.Show("Error" + e.Message);
                throw;
            }

        }
        public Object seleccionarNinos()
        {
            ORMicbfDataDataContext dbicbf = new ORMicbfDataDataContext();
            var consulta = (from a in dbicbf.RegistroNinios
                           
                           select new
                           {
                a.RegistroNIUP,
                a.Nombre,
            });
            return consulta.Distinct();
        }

        //Consultar avance de los niños, segun el id del acudiente

            public object consultarAvanceNiño(int _cedula)
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Registro_Avance_Academico
                           join b in db.RegistroNinios on a.idNinio equals b.RegistroNIUP
                           join c in db.Persona on b.DocAcudiente equals c.Cedula
                           where c.Cedula.Equals(_cedula)
                           select new
                           {
                               idNinio = b.Nombre,
                               a.AnioEscolar,
                               a.Nivel,
                               a.Notas,
                               a.Descripcion,
                               a.FechaEntregaNota,
                           };
            return consulta.Distinct();
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
    }
}
