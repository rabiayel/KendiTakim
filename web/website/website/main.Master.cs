using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace website
{
    public partial class main : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
             
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["kullaniciadi"]; //Kullanıcı login oldu zaman giriş grubunun gitmesi için
            if (kullanici != null)
            {
                pnlGiris.Visible = false; //giriş paneli kapansın
                pnlKullanici.Visible = true; //kullanıcı giriş yapmış ise hoşgeldiniz paneli açılsın
                lblkullaniciAdi.Text = kullanici.ToString();
                pnlKayit.Visible= false;//kullanıcı girişi olduğunda hızlı kayıt kapansın
           
            }
            else
            {
                pnlKullanici.Visible = false; //kullanıcı girişi yoksa hoşgeldiniz paneli gizli olsun
                pnlGiris.Visible = true; //giriş paneli açılsın
                pnlKayit.Visible = true; //hızlı kayıt açılsın
               
                
            }

          
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From kullaniciBilgileri where KullaniciAdi=@kullaniciadi AND KullaniciSifre=@sifre", con);
            cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullaniciadi", dr["KullaniciAdi"].ToString());
                Response.Redirect(Request.RawUrl); //kullanıcı giriş yaptıktan sonra sayfa yenilenecek
            }
            else
            {
                lblSonuc.Text = "Kullanıcı girişi sağlanamadı";
            }
            con.Close();
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();//Sessiondaki kullanıcı verileri silinir
            Response.Redirect(Request.RawUrl);
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aramayap.aspx?kelime="+txtArama.Text.Trim());
        }

       
    }
}