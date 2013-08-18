using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class AddContact : System.Web.UI.Page
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

    protected void AddCustomerConstruct(MySqlDataReader r, int counter)
    {
        Panel outer = new Panel();
        outer.ID = "outerContainer" + counter;
        outer.CssClass = "span7";

        Panel left = new Panel();
        left.CssClass = "span1";

        Image img = new Image();
        img.CssClass = "img-polaroid";
        img.AlternateText = "Profile Picture";
        if((r["ProfilePic"].ToString()) == null || (r["ProfilePic"].ToString()).Equals(""))
         img.ImageUrl = "Images/accountPig.png";
        else img.ImageUrl = (r["ProfilePic"].ToString());

        left.Controls.Add(img);

        Panel middle = new Panel();
        middle.CssClass = "span4";

        middle.Controls.Add(new LiteralControl("<p> <strong><u> "+r["FirstName"] + " " + r["LastName"] +" </u></strong></p> <br/>"));
        middle.Controls.Add(new LiteralControl("<p> <i>Bio:</i> "+r["Bio"] + " </p> <br/>"));
        middle.Controls.Add(new LiteralControl("<span class='clear-sides'><br/></span>"));


        Panel right = new Panel();
        right.CssClass = "span1";
        right.Controls.Add(new LiteralControl("<asp:LinkButton runat='server' OnCommand='Befriend_Click' CommandArgument='"+ r["UserID"] + "' CssClass='btn btn-info btn-medium left-margin pull-right'><i class='icon-eye-open'></i> Befriend</asp:LinkButton> "));

        outer.Controls.Add(left);
        outer.Controls.Add(middle);
        outer.Controls.Add(right);
        outer.Controls.Add(new LiteralControl("<span class='clear-sides'><br/></span>"));

        resultControls.Controls.Add(outer);
        resultControls.Controls.Add(new LiteralControl("<span class='clear-sides'><br/></span>"));
        resultControls.Controls.Add(new LiteralControl("<hr class='line-divider'/>"));
    }
}