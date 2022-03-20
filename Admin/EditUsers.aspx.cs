using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Alquds_book_store.Models;
using System.Web.Security;

namespace Alquds_book_store.Admin
{
    public partial class EditUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UserID = Request.QueryString["UserId"];

                ApplicationDbContext db = new ApplicationDbContext();
                var UserRoles = db.Users.Single(u => u.Id == UserID).Roles;
                ChkListRoles.DataBind();

                foreach (var role in UserRoles)
                    ChkListRoles.Items.FindByValue(role.RoleId).Selected = true;

            }


        }



        protected void BtnSaveRoles_Click(object sender, EventArgs e)
        {
            string UserID = Request.QueryString["UserId"];
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var UserRoles = manager.GetRoles(UserID);
            foreach (var role in UserRoles)
                manager.RemoveFromRole(UserID, role);
            foreach (ListItem item in ChkListRoles.Items)
            {
                if (item.Selected)
                    manager.AddToRole(UserID, item.Text);
            }


            PanelConfirmRolesSave.Visible = true;



        }

        protected void BtnAddRole_Click(object sender, EventArgs e)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            IdentityRole NewRole = new IdentityRole();
            NewRole.Name = TxtNewRole.Text;
            db.Roles.Add(NewRole);
            db.SaveChanges();
            Response.Redirect(Request.RawUrl);
        }



    }
}