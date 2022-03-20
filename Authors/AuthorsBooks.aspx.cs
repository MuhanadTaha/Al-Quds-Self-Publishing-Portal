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
    public partial class AuthorsBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string AuthorID = Session["AuthorID"].ToString();
            Label5.Text = AuthorID;
        }

        

        protected void DetailsView3_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
        string script = "alert(\"info submitted\");";
        ScriptManager.RegisterStartupScript(this, GetType(),
                              "ServerControlScript", script, true);
        GridView1.DataBind();
    }

        protected void DetailsView3_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
        FileUpload Image1 = (FileUpload)DetailsView3.FindControl("FileUpload1");
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

                string AuthorID = Session["AuthorID"].ToString();
                SqlDataSource3.InsertParameters["AuthorID"].DefaultValue = AuthorID.ToString();

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