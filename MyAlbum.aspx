<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MyAlbum.aspx.cs" Inherits="MyAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="container top-margin" role="content_container">
        <div class="span2 profile" role="profile_pane">
            <div class="sidebar-nav span2">
                <img src="Images/accountPic.png" class="img-polaroid">
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
        <div class="span9 top-margin" role="main_content">
            <a name="content"></a>
            <div class="span9">
                <p class="text-center">
                    <h1>
                        <strong>Summer 2012</strong></h1>
                </p>
                <br />
                <h2>
                    <a href="ProfileHome.aspx">BACK TO ALBUMS</a></h2>
                <hr class="line-divider" />
                <div class="span2 img-polaroid accordion highlight">
                    <a href="pictureIN.html">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: 12.07.12.</strong></label>
                        <label class="float-left">
                            <strong>People: Yolina</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="span2 img-polaroid accordion highlight">
                    <a href="#">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: ............</strong></label>
                        <label class="float-left">
                            <strong>People: .......</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="span2 img-polaroid accordion highlight">
                    <a href="#">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: ............</strong></label>
                        <label class="float-left">
                            <strong>People: .......</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="span2 img-polaroid accordion highlight">
                    <a href="#">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: ............</strong></label>
                        <label class="float-left">
                            <strong>People: .......</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="span2 img-polaroid accordion highlight">
                    <a href="#">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: ............</strong></label>
                        <label class="float-left">
                            <strong>People: .......</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="span2 img-polaroid accordion highlight">
                    <a href="#">
                        <img src="Images/sample.jpg"/>
                        <label class="float-left">
                            <strong>Date: ............</strong></label>
                        <label class="float-left">
                            <strong>People: .......</strong></label>
                        <label class="float-left">
                            <strong>My story of this picture...</strong></label>
                        <label class="float-left">
                            <strong>Description of this picture..</strong></label>
                    </a>
                </div>
                <div class="top-margin span2 accordion highlight">
                    <a class="iframe" href="AddPicture.aspx" title="ADD PICTURE">
                        <img src="Images/addImg.png" class="span1-5 img-rounded img-polaroid" alt="Add New Picture"/>
                        <label class="top profile">
                            <strong>ADD PICTURE</strong></label>
                        <br />
                    </a>
                </div>
                <span class="clearfix controls-row"></span>
                <hr class="line-divider"/>
                <div class="pagination pagination-centered" role="pagination">
                    <ul>
                        <li class="disabled"><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li class="disabled"><a href="#">&raquo;</a></li>
                    </ul>
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

