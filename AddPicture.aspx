<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="AddPicture.aspx.cs" Inherits="AddPicture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
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
                <h1>
                    <p class="text-center">
                        <strong>Add a New Picture</strong></p>
                </h1>
                <br />
                <hr class="line-divider" />
                <div class="form-horizontal span4" style="width: 100%;" role="add_picture_form">
                <div class="control-group">
                    <label class="control-label" for="inputAlbumName">
                        Album Name:</label>
                    <div class="controls">
                        <input type="text" id="album_name" name="album_name" placeholder="Picture Name" value="Summer 2012"
                            alt="Album">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="Country" alt="Find Pictue">
                        Find Picture:</label>
                    <div class="controls">
                        <input type="file" id="file_input" for="input_file" name="file_input">
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" onclick="parent.location='ProfileHome.aspx'" class="btn btn-large btn-primary"
                            alt="Add Picture">
                            Add Picture</button>
                    </div>
                </div>
                </div>
                <span class="clearfix controls-row"></span>
                <hr class="line-divider">
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
                    if ($('body').height() > $(window).height()) {
                        $("#backToTopLink").css('display', 'block');
                    }
                </script>
            </div>
        </div>
    </div>
</asp:Content>
