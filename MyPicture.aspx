<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MyPicture.aspx.cs" Inherits="MyPicture" %>

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
                            <br>
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
        <!--role links to aid user in navigation-->
        <div class="span9 top-margin" role="main_content">
            <a name="content" id="content"></a>
            <div class="span9 ">
                <h1>
                    <p class="text-center">
                        <strong>PICTURE</strong></p>
                </h1>
                <h2>
                    <a href="MyAlbum.aspx" alt="Album Name">Album: Summer 2012</a></h2>
                <br />
                <a href="ProfileHome.aspx" alt="Back to Albums">BACK TO ALBUMS</a>
                <hr class="line-divider" />
                <a href="Images/sample.jpg" class="group1" title="This is my first uploaded picture."
                    alt="An example description">
                    <div class="span4 thumbnails img-polaroid">
                        <img src="Images/sample.jpg" alt="Sample picture"/>
                        <label class="float-left">
                            <strong>Date: 12.07.12.</strong></label>
                        <label class="pull-right">
                            <strong>People: Yolina</strong></label>
                        <br />
                    </div>
                </a>
                <div class="offset1">
                </div>
                <div class="float-Left left-margin">
                    <h1>
                        This is the story...</h1>
                    <p>
                        This is the story of a picture taken in summer 2012 when....</p>
                    <p>
                        The picture is of a sunny meadow with white clouds</p>
                </div>
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
