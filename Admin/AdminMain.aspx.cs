using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Alquds_book_store.Admin
{
    public partial class AdminMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCurrentUserId = User.Identity.GetUserId();
            Session["Id"] = strCurrentUserId;
            // Label1.Text = strCurrentUserId;
        }
    }
}