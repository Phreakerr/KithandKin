using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    MySqlConnection c = new MySqlConnection(ConfigurationManager.ConnectionStrings["SQLconnection"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["button"] = 0;
            Session["login"] = "";
            Session["loginName"] = "";
        }
    }

    /********************** End of the Validations ***********************/

    protected void SubmitLog_btn_Click(object sender, EventArgs e)
    {
        Page.Validate();

        CustomValidator0.Validate();
        CustomValidator1.Validate();

        if (Page.IsValid)
        {

            try
            {
                c.Open();

                string encrypted = encryptPassword(this.Password_txt_box.Text);

                // Get the CustomerID of the record previously inserted.
                string selectSTR = "SELECT * FROM user_details WHERE Email = '" + this.Email_txt_box.Text + "'";

                MySqlCommand selectCustomerIDCommand = new MySqlCommand(selectSTR, c);
                MySqlDataReader myreader = selectCustomerIDCommand.ExecuteReader();

                int customer = 0;
                Boolean logged = false;

                while (myreader.Read())
                {
                    customer = Convert.ToInt32(myreader["DetailsID"].ToString());
                    string tempName = myreader["Email"].ToString();
                    string tempPass = (myreader["Password"]).ToString();
                    if(tempPass.Equals(encrypted)) {
                        logged = true;
                        break;
                    }
                }

                myreader.Close();

                c.Close();

                if (logged)
                {
                    Session["button"] = 1;
                    Session["login"] = customer;
                    Session["loginName"] = this.Email_txt_box.Text;
                    //FormsAuthentication.RedirectFromLoginPage
                    // (Email_txt_box.Text, true);
                    Response.Redirect("Home.aspx", true);
                }
                else 
                {
                    result.Text = " Invalid User Credentials. ";
                }
            }
            catch (Exception err)
            {
                Response.Write(err.StackTrace);
                //Response.Redirect("ErrorPage.aspx");
            }
            finally
            {
                c.Close();
            }
        }
    }

    protected void lessThan6(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 6)
            args.IsValid = false;
        else
            args.IsValid = true;
    }

    public string encryptPassword(string inputPassword)
    {

        // Convert the password string into a byte array.
        byte[] passwordAsBytes = Encoding.ASCII.GetBytes(inputPassword);

        SHA512 encrypter = SHA512.Create();

        // Encrypt the password.
        passwordAsBytes = encrypter.ComputeHash(passwordAsBytes);

        // Convert the byte array back into a string.
        string encryptedPassword = Convert.ToBase64String(passwordAsBytes);

        return encryptedPassword;

    }
}