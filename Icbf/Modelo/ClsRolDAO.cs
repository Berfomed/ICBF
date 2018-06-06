using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Datos;
namespace Modelo
{
    public class ClsRolDAO
    {
        public object consultarTodos()
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            var consulta = from a in bd.Rol
                           select a;
            return consulta.Distinct();
        }
        public void registrarRol(string _nombreRol, string _descripcion)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //ASIGNAR LOS VALORES A UN OBJETO DE CLASE PERSONA
            Rol objRol = new Rol();
            //nombre del objeto y el atributo
            try
            {
                objRol.nombreRol = _nombreRol;
                objRol.descripcion = _descripcion;
                bd.Rol.InsertOnSubmit(objRol);
                //ejecutar cambios para que registre en la bd
                bd.SubmitChanges();
                MessageBox.Show("Se registró correctamente");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.Message);
            }



        }
        public void actualizarRol(int _idRol, string _nombreRol, string _descripcion)
        {

            //crear la instancia del ORM
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer el objeto que se quiere modificar, se trae con una consulta para traer una persona que ya exista en la bd

            var objRol = (from a in bd.Rol
                          where a.idRol == _idRol
                          select a).First();


            //nombre del objeto y el atributo
            objRol.idRol = _idRol;
            objRol.nombreRol = _nombreRol;
            objRol.descripcion = _descripcion;

            //ejecutar cambios para que registre en la bd
            bd.SubmitChanges();
            MessageBox.Show("Se actualizó correctamente");
        }
        public void eliminarRol(int _idRol)
        {
            ORMicbfDataDataContext bd = new ORMicbfDataDataContext();
            //traer objeto que se obtiene de una consulta
            var objRol = (from a in bd.Rol
                          where a.idRol == _idRol
                          select a).FirstOrDefault();//trae el primer objeto que encuentre y el default muestra null sino trae
            //first genera excepcion y default controla dicha excepción
            bd.Rol.DeleteOnSubmit(objRol);
            bd.SubmitChanges();
            MessageBox.Show("Se eliminó el jardín");

        }

    }
}

