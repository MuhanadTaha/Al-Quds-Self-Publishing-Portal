using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.IO;


namespace Alquds_book_store.Authors
{
    public partial class AuthorMyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (GridView1.Rows.Count > 0)
            {

                DetailsView2.Visible = false;
                Label8.Visible = false;
            }

            else
            {
                DetailsView2.Visible = true;
                Label8.Visible = true;
            }




        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {

            string script = "alert(\"info submitted\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
            GridView1.DataBind();

        }

        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload Image1 = (FileUpload)DetailsView2.FindControl("FileUpload1");
            string path = Server.MapPath("~/Images") + "\\";
            if ((Image1.PostedFile != null) && (Image1.PostedFile.ContentLength > 0))
            {
                try
                {
                    FileInfo Filename = new FileInfo(Image1.FileName); // Using FileInfo Class
                    string fileExtension = Filename.Extension.ToLower(); // get the extension of the file using its name
                                                                         // OR :P  string ext = System.IO.Path.GetExtension(this.Photo1.PostedFile.FileName);

                    Image1.PostedFile.SaveAs(path + Filename);
                    SqlDataSource3.InsertParameters["Photo"].DefaultValue = Filename.ToString();

                    string IdOwner = Session["Id"].ToString();
                    SqlDataSource3.InsertParameters["UserID"].DefaultValue = IdOwner.ToString();

                }

                catch (Exception ex)
                {
                    String ErrorMsg = ex.ToString();
                    Response.Write("error");
                }
            }
        }

    
    }
}
   