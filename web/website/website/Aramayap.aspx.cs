using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace website
{
    public partial class Aramayap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kelime = Request.QueryString["kelime"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * From urun Where UrunAdi like '%"+kelime+"%' " , con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
          
        }
    }
}