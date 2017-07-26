using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace website
{
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnldurum.Visible = false;//durum paneli kayıt sağlanmadan açmıyoruz
        }

        protected void btnKaydit_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            string mail = txtMail.Text;

            if (kullaniciAdi.Contains(" ") == true | sifre.Contains(" ") == true | mail.Contains(" ") == true)
            {
                lblSonuc.Text = "Kullanıcı adı veya şifre içinde boşluk olamaz";
            }
            else
            {
                if (txtKullaniciAdi.Text != "" && txtSifre.Text != "" && txtMail.Text != "" && txtTelefon.Text != "" && txtAdres.Text != "" )
                {                  
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into kullaniciBilgileri (KullaniciAdi,KullaniciSifre,KullaniciMail,KullaniciTelefon,KullaniciAdres) Values (@KullaniciAdi,@KullaniciSifre,@KullaniciMail,@KullaniciTelefon,@KullaniciAdres)", con);
                    try
                    {
                        cmd.Parameters.AddWithValue("@KullaniciAdi", txtKullaniciAdi.Text);
                        cmd.Parameters.AddWithValue("@KullaniciSifre", txtSifre.Text);
                        cmd.Parameters.AddWithValue("@KullaniciMail", txtMail.Text);
                        cmd.Parameters.AddWithValue("@KullaniciTelefon", txtTelefon.Text);
                        cmd.Parameters.AddWithValue("@KullaniciAdres", txtAdres.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                       
                        pnlhizliKayit.Visible = false;
                        pnldurum.Visible = true;

                        Session.Add("kullaniciadi",txtKullaniciAdi.Text);//kullanıcı kayıt yaptığında direk ana sayfaya gitmesi için

                        lbldurum.Text = "Kaydınız başarı ile yapılmıştır";

                    }
                    catch (Exception ex)
                    {
                        lblSonuc.Text = "Kaydınız yapılamamıştır. Açıklayıcı hata kodu: " + ex.Message;
                    }

                }
                else
                {
                    lblSonuc.Text = "Kaydınız yapılamamıştır";
                }

            }
        }
    }
}