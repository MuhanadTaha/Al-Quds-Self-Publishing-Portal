using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alquds_book_store
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Admin")
            {
                Response.Redirect("AdminLogin.aspx");
            }
           else if (DropDownList1.SelectedValue == "Publisher")
            {
                Response.Redirect("PublisherLogin.aspx");
            }
            else if (DropDownList1.SelectedValue == "Author")
            {
                Response.Redirect("AuthorLogin.aspx");
            }
            else if (DropDownList1.SelectedValue == "User")
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

      
    }
}