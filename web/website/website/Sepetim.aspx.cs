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
           
    public partial class Sepetim : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToString(Session["KullaniciAdi"]) == "")
            {
                Response.Redirect("/");
                Response.End();
            }                      

        }

        protected void btnonay_Click(object sender, EventArgs e)
        {
            Response.Redirect("Map.aspx");
            //lblsonuc.Text = "Siparişiniz Tarafımızdan Alınmıştır.";
        }

       

    }
}