using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Alquds_book_store
{
    public partial class BookPublisherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }


        public void GetData()
        {

            string PublisherID = Request["PublisherID"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Books where PublisherID =  " + PublisherID.ToString(), con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Order")
            {
                string BookID = e.CommandArgument.ToString();
                Session["BookID"] = BookID;
                Response.Redirect("~/Users/UserOrders.aspx?BookID=" + e.CommandArgument.ToString());

            }
        }
    }
}