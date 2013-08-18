<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditChangePicture.aspx.cs" Inherits="EditChangePicture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="container top-margin" role="content_container">
        <a name="content" id="content"></a>
        <div class="tabbable span7 offset3" role="tabbable_content">
            <!-- Only required for left/right tabs -->
            <ul class="nav nav-tabs" role="navigation_tabs">
                <li role="tab"><a href="EditProfile.aspx">Edit Profile</a></li>
                <li role="tab"><a href="EditChangePassword.aspx" alt="Edit Account">Edit Account</a></li>
                <li class="active" role="tab"><a class="active" href="EditChangePicture.aspx" alt="Change Profile Picture">
                    Change Profile Picture</a></li>
            </ul>
            <div class="tab-content" role="tab_content">
                <div class="tab-pane active span6" id="tab1">
                    <div class="form-horizontal span5" role="profile_picture"
                    id="profile_picture">
                    <div class="form-horizontal span4" style="width: 100%;" role="new_profile_picture_form">
                    <div class="control-group">
                        <img src="Images/accountPic.png" class="img-polaroid" width="250" style="margin: auto;
                            display: block;" alt="Profile Picture"><br />
                        <br />
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="Country" alt="Find picture">
                            Find Picture:</label>
                        <div class="controls">
                            <input type="file" id="file_input" for="input_file" name="file_input">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <button type="submit" onclick="parent.location='ProfileHome.aspx'" class="btn btn-large btn-primary"
                                alt="Change Profile Picture">
                                Change Profile Picture</button>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

