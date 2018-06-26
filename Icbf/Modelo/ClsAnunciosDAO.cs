using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;

namespace Modelo
{
    public class ClsAnunciosDAO
    {
        public object mostrarAnuncios()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Anuncios
                           where a.estado.Equals("Vigente")
                           select new
                           {
                               a.Descripcion,
                           };
            return consulta.Distinct();                         

        }
        public void PublicarComunicado(string _descripcion, string _estado) 
        {
            try
            {
                ORMicbfDataDataContext db = new ORMicbfDataDataContext();
                Anuncios objanuncio = new Anuncios();
                objanuncio.Descripcion = _descripcion;
                objanuncio.fechaAnuncio = DateTime.Now;
                objanuncio.estado = _estado;
                db.Anuncios.InsertOnSubmit(objanuncio);
                db.SubmitChanges();
                MessageBox.Show("El comunicado se Publico con exito");
            }
            catch (Exception e)
            {
                MessageBox.Show("Error"  + e.Message );
            }
          
        }
        public object SeleccionarAnuncio()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            var consulta = from a in db.Anuncios
                           where a.estado.Equals("Caduco")
                           select a;
            return consulta.Distinct();
        }
    }
}
