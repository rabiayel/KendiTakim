using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;

namespace website
{
    public partial class harita2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["KullaniciAdi"]) == "")
            {
                Response.Redirect("/");
                Response.End();
            }     
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Adres (adres,x,y,aciklama,KullaniciAdi) values (@adres,@x,@y,@aciklama,@kadi)", con);
            cmd.Parameters.AddWithValue("@adres", address.Text);
            cmd.Parameters.AddWithValue("@x", latitude.Text);
            cmd.Parameters.AddWithValue("@y",longitude.Text);
            cmd.Parameters.AddWithValue("@aciklama", aciklama.Text);
            cmd.Parameters.AddWithValue("@kadi", Convert.ToString(Session["KullaniciAdi"]));
            cmd.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Talebiniz tarafımıza iletilmiştir.');</script>");
            con.Close();

        }
    }
}