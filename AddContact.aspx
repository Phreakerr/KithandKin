<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AddContact.aspx.cs" Inherits="AddContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <map title="Profile Bar" id="profileBar">
            <div class="span2 profile" role="profile_pane">
                <div class="sidebar-nav span2">
                    <img src="Images/accountPic.png" class="img-polaroid" alt="Profile Picture" />
                    <ul class="nav">
                        <li>
                            <br />
                        </li>
                        <li><strong>Yolina Kostova</strong></li>
                        <li>
                            <hr class="line-divider" />
                        </li>
                        <li><strong>DOB:</strong><br />
                            <br />
                            21 February 1991</li>
                        <li>
                            <hr class="line-divider" />
                        </li>
                        <li><strong>About Me:</strong><br />
                            <br />
                            I am a student at the University of Dundee. I love exploring and taking pictures.</li>
                        <li>
                            <hr class="line-divider" />
                        </li>
                    </ul>
                    <div class="control-group">
                        <div class="controls center">
                            <a href="EditProfile.aspx" class="btn btn-large btn-primary" alt="Edit Profile">Edit
                                Profile</a>
                        </div>
                    </div>
                </div>
                <!--/.well -->
                <span class="clear-sides">
                    <br />
                </span>
            </div>
        </map>
        <div class="span9 top-margin" role="main_content">
            <a name="content" id="content"></a>
            <div class="span8">
                <div class="input span6 pull-right" role="Search Contacts Form">
                    <h1>
                        <legend class="text-center">Search Contacts</legend>
                    </h1>
                    <input class="input-xlarge " id="appendedInputButtons" type="text" placeholder="Search by First Name, Last Name or Email"
                        name="searchTerm">
                    <button class="btn btn-primary" type="submit" alt="Search Contacts">
                        Search</button>
                </div>
                <asp:Panel ID="resultControls" runat="server">
                </asp:Panel>
                <a href="#content" id="backToTopLink" style="text-align: center; display: none;"
                    alt="Return to the top of page">Back to top</a>
                <!--link to top of the page for easier navigation only displayed when the screen size is too small-->
                <script type="text/javascript">
                    if ($(document).height() > $(window).height()) {
                        $("#backToTopLink").css('display', 'block');
                    }
                </script>
            </div>
        </div>
    </div>
</asp:Content>
