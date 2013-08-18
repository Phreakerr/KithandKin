<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ProfileHome.aspx.cs" Inherits="ProfileHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
<link href="Styles/colorbox.css" rel="stylesheet" media="screen"/>
<script type="text/javascript" src="Scripts/jquery.colorbox.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <map title="Profile Bar" id="profileBar">
            <div class="span2 profile" role="profile_pane">
                <div class="sidebar-nav span2">
                    <img src="Images/accountPic.png" class="img-polaroid" alt="Profile Picture">
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
                        <div class="controls center" style="width: 150px;">
                            <a href="EditProfile.aspx" class="btn btn-large btn-primary">
                                Edit Profile</a>
                        </div>
                    </div>
                </div>
                <!--/.well -->
                <span class="clear-sides">
                    <br />
                </span>
            </div>
        </map>
        <map title="Albums" id="albums">
            <a name="content"></a>
            <div class="span9 top-margin" role="main_content">
                <div class="span9">
                    <h1>
                        <p class="text-center">
                            <strong>MY ALBUMS</strong></p>
                        <hr class=" row-fluid line-divider" />
                    </h1>
                    <div class="span2 highlight ">
                        <a href="MyAlbum.aspx">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>Summer 2012</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class=" span2 highlight">
                        <a href="#">
                            <img src="Images/photoAlbum2.png" class="img-rounded" alt="Photo Album">
                            <label class="text-center controls">
                                <strong>ALBUM NAME</strong></label>
                            <br />
                        </a>
                    </div>
                    <div class="top-margin span2 highlight">
                        <a class="iframe" href="addAlbum.html" title="ADD ALBUM" alt="Click to add a new album">
                            <img src="Images/addImg.png" class="span1-5 img img-rounded img-polaroid" alt="Add new photo album">
                            <label class="top profile">
                                <strong>ADD ALBUM</strong></label>
                            <br />
                        </a>
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
                </div>
            </div>
    </div>
    </map>
    <!-- end Content-->
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the ColorBox event to elements
            $(".group1").colorbox({ rel: 'group1' });
            $(".group2").colorbox({ rel: 'group2', transition: "fade" });
            $(".group3").colorbox({ rel: 'group3', transition: "none", width: "75%", height: "75%" });
            $(".group4").colorbox({ rel: 'group4', slideshow: true });
            $(".ajax").colorbox();
            $(".youtube").colorbox({ iframe: true, innerWidth: 425, innerHeight: 344 });
            $(".vimeo").colorbox({ iframe: true, innerWidth: 500, innerHeight: 409 });
            $(".iframe").colorbox({ iframe: true, width: "80%", height: "80%" });
            $(".inline").colorbox({ inline: true, width: "50%" });
            $(".callbacks").colorbox({
                onOpen: function () { alert('onOpen: colorbox is about to open'); },
                onLoad: function () { alert('onLoad: colorbox has started to load the targeted content'); },
                onComplete: function () { alert('onComplete: colorbox has displayed the loaded content'); },
                onCleanup: function () { alert('onCleanup: colorbox has begun the close process'); },
                onClosed: function () { alert('onClosed: colorbox has completely closed'); }
            });

            $('.non-retina').colorbox({ rel: 'group5', transition: 'none' })
            $('.retina').colorbox({ rel: 'group5', transition: 'none', retinaImage: true, retinaUrl: true });

            //Example of preserving a JavaScript event for inline calls.
            $("#click").click(function () {
                $('#click').css({ "background-color": "#f00", "color": "#fff", "cursor": "inherit" }).text("Open this window again and this message will still be here.");
                return false;
            });
        });
    </script>
</asp:Content>
