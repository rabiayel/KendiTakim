using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace website
{
    public partial class urunlerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["kullaniciadi"];

            if (Convert.ToString(Session["KullaniciAdi"]) == "")
            {
                Response.Redirect("/");
                Response.End();
            }

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();

           
                string sorgu = "select * from urun where kullaniciAdi='" + Session["KullaniciAdi"] + "' "; //kullanıcıyan göre veri çekme
                SqlCommand cmd = new SqlCommand(sorgu, con);
                SqlDataReader dr = cmd.ExecuteReader();//datayı okuyoruz                            
                lsturunler.DataSource = dr; // datadan okunan verileri ekliyoruz
                lsturunler.DataBind(); //datadan okunan verileri bind ediyoruz               
            
        }
    
    }       
}