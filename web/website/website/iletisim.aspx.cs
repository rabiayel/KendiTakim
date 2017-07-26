using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;



namespace website
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btngonder_Click(object sender, EventArgs e)
        {
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential("ry4601994@gmail.com", "1834,i<z")
            };
            using (var message = new MailMessage("ry4601994@gmail.com", txtmail.Text)
            {
                Subject =txtKonu.Text,
                Body = txtMesaj.Text,
                IsBodyHtml = true //optional
            })
            {
                smtp.Send(message);
            }
            //try
            //{
            //    MailMessage msg = new MailMessage();
            //    msg.From = new MailAddress(txtmail.Text); //e postayı atacak olan 
            //    msg.To.Add("ry4601994@gmail.com");//e postanın gideceği yer
            //    msg.Subject = (txtKonu.Text); //e posta başlığı
            //    msg.Body = (txtMesaj.Text); //mesaj içeriği
            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Credentials = new NetworkCredential("ry4601994@gmail.com", "460ry1994");
            //    smtp.Port = 587;
            //    smtp.Host = "Smtp.gmail.com";
            //    smtp.Send(msg);
            //    smtp.EnableSsl = true;
            //    lblSonuc.Text = "Mesajınız başarı ile gönderilmiştir";

            //}
            //catch (Exception ex)
            //{
            //    lblSonuc.Text = "Mesajınız iletilememiştir boş alan bırakmadığınıza emin olunuz.." +ex.Message;
            //}
            
        }
    }
}