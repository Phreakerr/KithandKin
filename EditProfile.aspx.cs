using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["temp"] = Session["loginName"];

        // If the no login has been confirmed, reload the login page.
        if (this.Session["temp"] == null)
        {
            Response.Redirect("Logon.aspx");
        }
    }
}