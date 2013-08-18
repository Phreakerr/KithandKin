using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;
using System.Activities.Statements;
using MySql.Data.MySqlClient;

public partial class Register : System.Web.UI.Page
{
    MySqlConnection c = new MySqlConnection(ConfigurationManager.ConnectionStrings["SQLconnection"].ToString());
    int countryID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["button"] = 0;
            Session["login"] = "";
            Session["loginName"] = "";
            Country_cbo.Items.Add(new ListItem("--Select--", "0"));

            try
            {
                c.Open();

                MySqlCommand command = new MySqlCommand("SELECT CountryID, CountryName FROM country", c);

                MySqlDataReader myreader = command.ExecuteReader();

                while (myreader.Read())
                {
                    string tempName = myreader["CountryName"].ToString();
                    string tempID = (myreader["CountryID"]).ToString();
                    Country_cbo.Items.Add(new ListItem(tempName, tempID));
                }

                myreader.Close();
            }
            catch (Exception err)
            {
                 //Response.Write(Environment.StackTrace);
                Response.Redirect("ErrorPage.aspx");
            }
            finally
            {
                c.Close();
            }
        }
    }


    protected void Country_cbo_SelectedIndexChanged(object sender, EventArgs e)
    {
        countryID = Convert.ToInt32(Country_cbo.SelectedValue);
    }

    /***************************** The validations to be performed.***************************/


    protected void selectDiff(object source, ServerValidateEventArgs args)
    {
        args.IsValid = !(args.Value.Equals("0"));
    }

    // Checking that a string is not more than three characters in length.

    protected void nullOrMore(object source, ServerValidateEventArgs args)
    {
        if (args != null)
        {
            if (args.Value.Length < 3)
                args.IsValid = false;
            else
                args.IsValid = true;
        }
    }

    // Checking the length of a string.

    protected void lessThan3(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 3)
            args.IsValid = false;
        else
            args.IsValid = true;
    }

    protected void lessThan6(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 6)
            args.IsValid = false;
        else
            args.IsValid = true;
    }

    protected void existingEmail(object source, ServerValidateEventArgs args)
    {
        try
        {
            c.Open();

            string comSTR = "SELECT Email FROM user_details WHERE Email = '" + args.Value + "'";

            MySqlCommand command = new MySqlCommand(comSTR, c);
            MySqlDataReader myreader = command.ExecuteReader();

            if (myreader.HasRows)
                args.IsValid = false;
            else
                args.IsValid = true;

            myreader.Close();
        }
        catch (Exception err)
        {
            Response.Redirect("ErrorPage.aspx");
        }
        finally
        {
            c.Close();
        }
    }

    /********************** End of the Validations ***********************/

    protected void SubmitReg_btn_Click(object sender, EventArgs e)
    {
        countryID = Convert.ToInt32(Country_cbo.SelectedValue);

        Page.Validate();

        CustomValidator0.Validate();
        CustomValidator1.Validate();
        CustomValidator2.Validate();
        CustomValidator3.Validate();
        CustomValidator4.Validate();
       
        if (Page.IsValid)
        {

            try
            {
                c.Open();

                string encrypted = encryptPassword(this.Password_txt_box.Text);

                string insertCustomerSTR = "INSERT INTO user_details (Email, Password) VALUES ( @Email, @Password)";

                MySqlCommand insertCommand = new MySqlCommand(insertCustomerSTR, c);

                insertCommand.Parameters.AddWithValue("@Email", this.Email_txt_box.Text);
                insertCommand.Parameters.AddWithValue("@Password", encrypted);

                insertCommand.ExecuteNonQuery();
  
                // Get the CustomerID of the record previously inserted.
                string selectSTR = "SELECT DetailsID FROM user_details WHERE Email = '" + this.Email_txt_box.Text + "'";

                MySqlCommand selectCustomerIDCommand = new MySqlCommand(selectSTR, c);
                MySqlDataReader myreader = selectCustomerIDCommand.ExecuteReader();

                myreader.Read();

                int customer = Convert.ToInt32(myreader[0].ToString());

                myreader.Close();

                // Insert the Vehicle details into Customer Vehicles table.
                string insertVehicleSTR = "INSERT INTO User (FirstName,LastName,Country,Details,Visibility) VALUES(@firstname,@lastname,@country,@details,@visibility)";

                MySqlCommand insert2Command = new MySqlCommand(insertVehicleSTR, c);

                insert2Command.Parameters.Add(new MySqlParameter("@firstname", this.Firstname_txt_box.Text));
                insert2Command.Parameters.Add(new MySqlParameter("@lastname", this.Lastname_txt_box.Text));
                insert2Command.Parameters.Add(new MySqlParameter("@country", countryID));
                insert2Command.Parameters.Add(new MySqlParameter("@details", customer));
                insert2Command.Parameters.Add(new MySqlParameter("@visibility", 2));
                

                insert2Command.ExecuteNonQuery();

                Session["button"] = 1;
                Session["login"] = customer;
                Session["loginName"] = this.Email_txt_box.Text;
                //FormsAuthentication.RedirectFromLoginPage
                            // (Email_txt_box.Text, true);
                Response.Redirect("Home.aspx");
            }
            catch (Exception err)
            {
                Response.Redirect("ErrorPage.aspx");
            }
            finally
            {
                c.Close();
                result.Text = " The User has been successfully registered. ";
            }
        }
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