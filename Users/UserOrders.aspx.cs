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

namespace Alquds_book_store.Users
{
    public partial class UserOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string BookID = Session["BookID"].ToString();
            Label10.Text = BookID ;
        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
           // Response.Redirect("OrderConfirmation.aspx");
            Label10.Text = "Order Placed";
        }

        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {

       
            string strCurrentUserId = User.Identity.GetUserId();
            Session["Id"] = strCurrentUserId;
     
            SqlConnection vcon = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            vcon.Open();

            SqlCommand cmd = new SqlCommand("select * from UserProfile where UserID = '" + strCurrentUserId + "'", vcon);//Advised to use parameterized query

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string UserProfileID = dr.GetValue(0).ToString();
                Session["UserProfileID"] = dr.GetValue(0).ToString();
                string BookID = Session["BookID"].ToString();

                SqlDataSource2.InsertParameters["BookID"].DefaultValue = BookID.ToString();
                SqlDataSource2.InsertParameters["UserProfileID"].DefaultValue = UserProfileID.ToString();
                SqlDataSource2.InsertParameters["OrderDate"].DefaultValue = DateTime.Now.ToShortDateString(); ;


                dr.Close();
            }
            vcon.Close();


           

        }
    }
}