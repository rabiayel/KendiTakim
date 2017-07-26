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
    public partial class urunekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["KullaniciAdi"];
            if (Convert.ToString(Session["KullaniciAdi"]) == "")
            {
                Response.Redirect("/");
                Response.End();
            }
        }
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();

            this.txtKullaniciAdi.Text = Session["KullaniciAdi"].ToString();
            
                SqlCommand cmd = new SqlCommand("Insert into urun(KullaniciAdi,UrunAdi,Fiyat,Resim,Aciklama) values ( @kAdi,@urunAdi,@fiyat,@resim,@aciklama)", con);
                this.txtKullaniciAdi.Text = Session["KullaniciAdi"].ToString();
                cmd.Parameters.AddWithValue("@kAdi", txtKullaniciAdi.Text);
                cmd.Parameters.AddWithValue("@urunAdi", txtUrun.Text);
                cmd.Parameters.AddWithValue("@fiyat", txtFiyat.Text);
                cmd.Parameters.AddWithValue("@resim", fileResim.FileName);
                cmd.Parameters.AddWithValue("@aciklama", txtAciklama.Text);

                string karsılastirma = "Select * From KullaniciBilgileri Where KullaniciAdi=@KullaniciAdi";
                string karsilastirma2 = "Select * From urun Where KullaniciAdi=@kullaniciadi";
                if (karsılastirma != karsilastirma2)
                {
                    cmd.ExecuteNonQuery();                   
                    txtUrun.Text = "";
                    txtFiyat.Text = "";
                    txtAciklama.Text = "";
                    lblSonuc.Text = "Ürününüz eklenmiştir";
                }
                else
                {
                    lblSonuc.Text = "Ürününüz eklenememiştir";
                }                    
        }
        
    }
}