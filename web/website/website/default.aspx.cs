using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace website
{       
    public partial class _default : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            string sorgu = "Select * From urun";
            SqlCommand cmd = new SqlCommand(sorgu, con);
            SqlDataReader dr = cmd.ExecuteReader();//datayı okuyoruz
            lsturunler.DataSource = dr; // datadan okunan verileri ekliyoruz
            lsturunler.DataBind(); //datadan okunan verileri bind ediyoruz
            con.Close();

        }           
    }
}