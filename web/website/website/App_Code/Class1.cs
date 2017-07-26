using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace website
{
    public class Class1
    {

        public SqlConnection baglan() {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\RABIA\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\2.ELTAKıSITESI\2.ELTAKıSITESI\WEB\WEBSITE\WEBSITE\UYEBILGILERI.MDF");
            con.Open();
            return (con);
        
        }

        public int cmd(string sqlcumle)
        {
            SqlConnection baglan = this.baglan();
            SqlCommand sorgu = new SqlCommand(sqlcumle,baglan);
            int sonuc = 0;
            try
            {
                sonuc = sorgu.ExecuteNonQuery();
            }
            catch(SqlException ex)
            {
                throw new Exception(ex.Message+ "("+sqlcumle+")");
            }
            sorgu.Dispose();
            baglan.Open();
            baglan.Dispose();
            return(sonuc);
        }
    }

    
}