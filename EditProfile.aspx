<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <a name="content" id="content"></a>
        <div class="tabbable span7 offset3" role="tabbable_content">
            <!-- Only required for left/right tabs -->
            <ul class="nav nav-tabs" role="navigation_tabs">
                <li class="active" role="tab"><a class="active" href="EditProfile.aspx" alt="Edit Profile">
                    Edit Profile</a></li>
                <li role="tab"><a href="EditChangePassword.aspx" alt="Edit Account">Edit Account</a></li>
                <li class="tab"><a href="EditChangePicture.aspx" alt="Change Profile Picture">Change
                    Profile Picture</a></li>
            </ul>
            <div class="tab-content" role="tab_content">
                <div class="tab-pane active span6" id="tab1">
                    <div class="form-horizontal span5" role="profile_form" id="profile_form">
                        <div class="control-group">
                            <label class="control-label" for="first_name">
                                First Name:</label>
                            <div class="controls">
                                <input class="required" type="text" id="first_name" name="first_name" placeholder="First Name"
                                    value="Yolina" required alt="First Name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputLastName">
                                Last Name:</label>
                            <div class="controls">
                                <input class="required" type="text" id="last_name" name="last_name" placeholder="Last Name"
                                    value="Kostova" required alt="Last name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputCity">
                                City:</label>
                            <div class="controls">
                                <input type="text" id="city" name="city" placeholder="City" value="Dundee" alt="City">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="country">
                                Country:</label>
                            <div class="controls">
                                <input type="text" id="country" name="country" placeholder="country" value="United Kingdom"
                                    alt="Country">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="dob">
                                DOB:</label>
                            <div class="controls">
                                <input type="text" id="dob" name="dob" placeholder="DOB" value="21 February 1991"
                                    alt="Date of birth">
                            </div>
                        </div>
                        <fieldset class="control-group">
                            <label class="control-label" for="phone_number">
                                Phone Number:</label>
                            <div class="controls">
                                <div class="input-prepend">
                                    <label class="add-on">
                                        +44</label>
                                    <input type="text" id="phone_number" name="phone_number" placeholder="Phone Number"
                                        alt="Phone number">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="control-group">
                            <label class="control-label" for="website">
                                Website:</label>
                            <div class="controls">
                                <div class="input-prepend">
                                    <label class="add-on">
                                        http://</label>
                                    <input type="text" id="website" name="website" placeholder="Website" alt="Website">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="control-group">
                            <label class="control-label" for="inputBio" alt="Biography">
                                Bio:</label>
                            <div class="controls">
                                <textarea class="input-xlarge" id="bio" name="bio" rows="4" placeholder="Enter something about yourself..."
                                    maxlength="200"></textarea>
                            </div>
                        </fieldset>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-large btn-primary" alt="Update Profile">
                                    Update</button>
                            </div>
                        </div>
                        <a href="#content" id="backToTopLink" style="text-align: center; display: none;"
                            alt="Return to the top of page">Back to top</a>
                    </div>
                    <!--link to top of the page for easier navigation only displayed when the screen size is too small-->
                    <script type="text/javascript">
                        if ($(document).height() > $(window).height()) {
                            $("#backToTopLink").css('display', 'block');
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
