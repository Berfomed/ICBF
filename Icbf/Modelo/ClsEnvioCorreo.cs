using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Web.Services.Description;
using System.Windows.Forms;
using Datos;

namespace Modelo
{
    public class ClsEnvioCorreo
    {
        Boolean estado = true;
        string merror;
        public void enviarCorreo()
        {
            String consulta = NiñoCumpleaños();
            string email_to = consulta.ToString();
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            Persona obpersona = new Persona();
            //instanciamos la clase Mail, la cual contiene los atributos para el envio del correo
            MailMessage correo = new MailMessage();
            //instanciamos el Smtp (Simple Mail Transfer protocol) ó protocolo para transferencia simple de correo
            SmtpClient protocolo = new SmtpClient();
            //empezamos a trabajar con los atributos de la clas MailMessage
            correo.To.Add(email_to);
            correo.From = new MailAddress("Berfomed@gmai.com", "ICBF", System.Text.Encoding.UTF8);
            correo.Subject = "Feliz Cumpleaños";
            correo.SubjectEncoding = System.Text.Encoding.UTF8;
            correo.Body = "El Icbf le deseaa a tu hijo un Feliz Cumpleaños";
            correo.BodyEncoding = System.Text.Encoding.UTF8;
            correo.IsBodyHtml = false;//desabilitamos el codigo html en el body de nuestro correo   

            protocolo.Credentials = new System.Net.NetworkCredential("Berfomed@gmail.com", "80739263");
            protocolo.Port = 587;
            protocolo.Host = "smtp.gmail.com";
            protocolo.EnableSsl = true;
            try
            {
                protocolo.Send(correo);
            }
            catch (SmtpException error)
            {
                estado = false;
                merror = error.Message.ToString();
            }
        }

        //este metodo lo usamos para capturar el estado del boolean
            public Boolean Estado
        {
            get { return estado; }
        }

        //este metodo lo usamos para saber que error es el que esta enviando el catch
        public string MensajeError
        {
            get { return merror; }
        }

        public String NiñoCumpleaños()
        {
            ORMicbfDataDataContext db = new ORMicbfDataDataContext();
            RegistroNinios objniño = new RegistroNinios();
            var consulta = from a in db.RegistroNinios
                           join b in db.Persona on a.DocAcudiente  equals b.Cedula
                           where a.FechaNac.Month.Equals(DateTime.Now.Month) && a.FechaNac.Day.Equals(DateTime.Now.Day)
                           select new {
                           b.Correo,                        
                           };
            return consulta.FirstOrDefault().ToString();
          
        }



        }








    }
