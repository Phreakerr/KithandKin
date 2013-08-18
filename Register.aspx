<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container top-margin" role="content_container">
        <div id="reg-form" role="registration_form" class="form-horizontal span6 offset3"
            alt="Login">
            <a name="content" id="content"></a>
            <asp:UpdatePanel ID="Update1" runat="server">
                <ContentTemplate>
                    <h1>
                        <legend class="text-center">Register Now!</legend>
                    </h1>
                    <asp:Label ID="result" CssClass="validation-error" Text="" runat="Server" />
                    <div class="control-group">
                        <asp:Label ID="Firstname_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Firstname_txt_box">First Name: </asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Firstname_txt_box" CssClass="txt_boxes" runat="Server" MaxLength="30" placeholder="First Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator0" Display="Dynamic" ControlToValidate="Firstname_txt_box"
                                runat="server" ErrorMessage=" A first name is required. " CssClass="validation-error">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <asp:Label ID="Lastname_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Lastname_txt_box">Last Name: </asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Lastname_txt_box" CssClass="txt_boxes" runat="Server" MaxLength="30" placeholder="Last Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ControlToValidate="Lastname_txt_box"
                                runat="server" ErrorMessage=" A last name is required. " CssClass="validation-error">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <asp:Label ID="Email_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Email_txt_box">Email: </asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Email_txt_box" CssClass="txt_boxes" runat="Server" MaxLength="30"
                                alt="Email" placeholder="Email" ></asp:TextBox>
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
                            <asp:CustomValidator ID="CustomValidator1" Display="Dynamic" ControlToValidate="Email_txt_box"
                                runat="server" ErrorMessage=" Email already exists. Retype Email. " OnServerValidate="existingEmail"
                                CssClass="validation-error">
                            </asp:CustomValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <asp:Label ID="Password_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Password_txt_box">Password: </asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="Password_txt_box" TextMode="Password" CssClass="txt_boxes" runat="Server"
                                MaxLength="30" alt="Password" placeholder="Password" ></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator2" Display="Dynamic" runat="server" ControlToValidate="Password_txt_box"
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
                        <asp:Label ID="ConfirmPass_lbl" CssClass="control-label" runat="Server" AssociatedControlID="ConfirmPass_txt_box">Confirm Password: </asp:Label>
                        <div class="controls">
                            <asp:TextBox ID="ConfirmPass_txt_box" TextMode="Password" CssClass="txt_boxes" runat="Server"
                                MaxLength="20" alt="Confirm Password" placeholder="Confirm Password" ></asp:TextBox>
                            <asp:CustomValidator ID="CustomValidator3" runat="server" Display="Dynamic" ControlToValidate="ConfirmPass_txt_box"
                                ErrorMessage=" Password must be between 6 and 20 characters." OnServerValidate="lessThan6"
                                CssClass="validation-error">
                            </asp:CustomValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ControlToValidate="ConfirmPass_txt_box"
                                runat="server" ErrorMessage=" A password is required. " CssClass="validation-error">
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="ConfirmPass_txt_box"
                                ControlToCompare="Password_txt_box" ErrorMessage=" The passwords are not the same. Please retype the passwords. "
                                CssClass="validation-error">
                            </asp:CompareValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <asp:Label ID="Country_lbl" CssClass="control-label" runat="Server" AssociatedControlID="Country_cbo">Country: </asp:Label>
                        <!--onselectedindexchanged=""  OnTextChanged = ""-->
                        <div class="controls">
                            <asp:DropDownList ID="Country_cbo" CssClass="dropdowns" runat="Server" AutoPostBack="true"
                                EnableViewState="true" OnSelectedIndexChanged="Country_cbo_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                        <div class="controls">
                            <asp:CustomValidator ID="CustomValidator4" runat="server" Display="Dynamic" ControlToValidate="Country_cbo"
                                ErrorMessage=" Please select a country. " OnServerValidate="selectDiff" CssClass="validation-error">
                            </asp:CustomValidator>
                        </div>
                    </div>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="control-group">
                <div class="controls">
                    <asp:Button ID="Reg_btn" CssClass="btn btn-large btn-primary" Text="Register" runat="Server"
                        OnClick="SubmitReg_btn_Click" alt="Register"></asp:Button>
                </div>
            </div>
            <br />
            <div class="control-group">
                <p class="text-center">
                    Have an Account? <a href="Logon.aspx"><i>Login Here</i></a></p>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
