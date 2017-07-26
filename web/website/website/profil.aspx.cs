using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace website
{
    public partial class profil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["KullaniciAdi"]) == "")
            {
                Response.Redirect("/");
                Response.End();
            }
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select KullaniciAdi,KullaniciSifre,KullaniciMail,KullaniciTelefon,KullaniciAdres From kullaniciBilgileri Where KullaniciAdi='" + Session["KullaniciAdi"] + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtKullaniciAdi.Text = dr[0].ToString();
                txtSifre.Text = dr[1].ToString();
                txtMail.Text = dr[2].ToString();
                txtTelefon.Text = dr[3].ToString();
                txtAdres.Text = dr[4].ToString();
            }
           
        }
     
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("Update kullaniciBilgileri Set KullaniciSifre=@sifre, KullaniciMail=@mail, KullaniciTelefon=@tel, KullaniciAdres=@adres Where KullaniciAdi= '" + Session["KullaniciAdi"] + "' ", con);
                cmd.Parameters.AddWithValue("@sifre", OleDbType.VarChar).Value = this.txtSifre.Text;
                cmd.Parameters.AddWithValue("@mail", OleDbType.VarChar).Value = this.txtMail.Text;
                cmd.Parameters.AddWithValue("@tel", OleDbType.VarChar).Value = this.txtTelefon.Text;
                cmd.Parameters.AddWithValue("@adres", OleDbType.VarChar).Value = this.txtAdres.Text;
                // cmd.Parameters.Add("@uyeadi", OleDbType.VarChar).Value = Session["uyeadi"];
                cmd.ExecuteNonQuery();
                lblSonuc.Text = "Kullanici bilgileriniz güncellenmiştir...";
            }
            catch (Exception ex)
            {
                lblSonuc.Text = "Kullanici bilgileriniz güncellenememiştir..." + ex.Message;
            }



        }
    }
}
