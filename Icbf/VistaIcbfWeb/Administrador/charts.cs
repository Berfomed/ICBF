using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Datos;
using Modelo;

namespace VistaIcbfWeb.Administrador
{
    public class charts : Controller
    {
        // GET: charts
        public Tuple<int,int,int> Graphcharts()
        {
            ORMicbfDataDataContext dbicbf = new ORMicbfDataDataContext();
            var consulta = dbicbf.Registro_Asistencia.Count(x => x.DesEstadoNinio.Equals("Enfermo"));
            var consulta1 = dbicbf.Registro_Asistencia.Count(x => x.DesEstadoNinio.Equals("Sano"));
            var consulta2 = dbicbf.Registro_Asistencia.Count(x => x.DesEstadoNinio.Equals("Decaido"));
            ViewBag.datos = consulta;

            return Tuple.Create(consulta,consulta1,consulta2);
        }
    }
}