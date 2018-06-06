using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
    }
}
