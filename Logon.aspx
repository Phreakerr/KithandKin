<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Logon.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <a name="content" id="content"></a>
        <div class="form-horizontal span6 offset3" role="login_form" id="login_form">
            <h1>
                <legend class="text-center">Login</legend>
            </h1>
            <asp:Label ID="result" CssClass="validation-error" Text="" runat="Server" />
            <div class="control-group">
                <asp:Label ID="Email_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Email_txt_box">Email: </asp:Label>
                <div class="controls">
                    <asp:TextBox ID="Email_txt_box" CssClass="txt_boxes" runat="Server" MaxLength="30"
                        alt="Email" placeholder="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic"
                        runat="server" ControlToValidate="Email_txt_box" ErrorMessage=" A valid e-mail address required. "
                        CssClass="validation-error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator0" Display="Dynamic" runat="server" ControlToValidate="Email_txt_box"
                        ErrorMessage=" Email should be between 6 and 30 characters." OnServerValidate="lessThan6"
                        CssClass="validation-error">
                    </asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server"
                        ControlToValidate="Email_txt_box" ErrorMessage=" An email is required. " CssClass="validation-error">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="control-group">
                <asp:Label ID="Password_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Password_txt_box">Password: </asp:Label>
                <div class="controls">
                    <asp:TextBox ID="Password_txt_box" TextMode="Password" CssClass="txt_boxes" runat="Server"
                        MaxLength="30" alt="Password" placeholder="Password"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" Display="Dynamic" runat="server" ControlToValidate="Password_txt_box"
                        ErrorMessage=" Password must be between 6 and 30 characters." OnServerValidate="lessThan6"
                        CssClass="validation-error">
                    </asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server"
                        ControlToValidate="Password_txt_box" ErrorMessage=" A password is required. "
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <asp:Button ID="Log_btn" CssClass="btn btn-large btn-primary" Text="Login" runat="Server"
                        OnClick="SubmitLog_btn_Click" alt="Login"></asp:Button>
                </div>
            </div>
            <div class="control-group">
                <p class="text-center">
                    Forgotten your password? <a href="#">Remind me via email</a></p>
                <br />
                <p class="text-center">
                    Don't have a registration? <a href="Register.aspx"><i>Register here</i></a></p>
            </div>
        </div>
    </div>
</asp:Content>
