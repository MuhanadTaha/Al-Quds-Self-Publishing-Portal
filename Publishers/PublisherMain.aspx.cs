using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;


namespace Alquds_book_store.Publishers
{
    public partial class PublisherMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCurrentUserId = User.Identity.GetUserId();
            Session["Id"] = strCurrentUserId;
            //Label1.Text = strCurrentUserId;

            SqlConnection vcon = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            vcon.Open();

            SqlCommand cmd = new SqlCommand("select * from Publishers where UserID = '" + strCurrentUserId + "'", vcon);//Advised to use parameterized query

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Label1.Text = dr.GetValue(0).ToString();
                Session["PublisherID"] = dr.GetValue(0).ToString();
                dr.Close();
            }
            vcon.Close();



        }






    }
}