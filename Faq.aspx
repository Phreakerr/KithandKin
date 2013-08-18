<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Faq.aspx.cs" Inherits="Faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <map title="Profile Bar" id="profileBar">
            <div class="span2 profile" role="profile_pane">
                <div class="sidebar-nav span2">
                    <img src="Images/accountPic.png" class="img-polaroid" alt="Profile Picture"/>
                    <ul class="nav">
                        <li>
                            <br/>
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
        <map title="FAQ" id="faq">
            <a name="content" id="content"></a>
            <div class="span9 top-margin" role="main_content">
                <div class="span8">
                    <form class="input span7 pull-right" method="post" action="#" role="frequently_asked_questions">
                    <h1>
                        <legend class="text-center">Frequently Asked Questions</legend>
                    </h1>
                    <!--jumps to part of page - alt tags included for screen readers-->
                    <div class="span4">
                        <p>
                            <ul>
                                <li><a href="#whatIs" alt="What is Kith and Kin?"><strong><u>What is Kith and Kin?</u></strong></a><br />
                                </li>
                                <li><a href="#viewPhotos" alt="Who can view my photos?"><strong><u>Who can view my photos?</u></strong></a><br />
                                </li>
                                <li><a href="#createAccount" alt="How do I create an Account?"><strong><u>How do I create
                                    an Account?</u></strong></a><br />
                                </li>
                                <li><a href="#emailAddress" alt="Do I need an E-mail Address?"><strong><u>Do I need
                                    an E-mail Address?</u></strong></a><br />
                                </li>
                                <li><a href="#information" alt="How do I change my information? "><strong><u>How do
                                    I change my information? </u></strong></a>
                                    <br />
                                </li>
                                <li><a href="#contact" alt="How do I add a new Contact?"><strong><u>How do I add a new
                                    Contact?</u></strong></a><br />
                                </li>
                                <li><a href="#group" alt="How do I create a new Group?"><strong><u>How do I create a
                                    new Group?</u></strong></a><br />
                                </li>
                                <li><a href="#contactPhoto" alt="What is Kith and Kin?"><strong><u>How do I view a contacts
                                    photo?</u></strong></a><br />
                                </li>
                                <li><a href="#ownPhoto" alt="Can I edit my own photos?"><strong><u>Can I edit my own
                                    photos?</u></strong></a><br />
                                </li>
                                <li><a href="#upload" alt="Where do I upload my photos?"><strong><u>Where do I upload
                                    my photos?</u></strong></a><br />
                                </li>
                                <li><a href="#addToGroup" alt="How do I add a contact to a group?"><strong><u>How do
                                    I add a contact to a group?</u></strong></a><br />
                                </li>
                                <li><a href="#find" alt="Is there an easier way to find contacts?"><strong><u>Is there
                                    an easier way to find contacts?</u></strong></a><br />
                                </li>
                            </ul>
                            <br />
                        </p>
                    </div>
                    <hr class="line-divider" />
                    <p id="whatIs">
                        <h2>
                            <strong><u>What is Kith and Kin? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        Kith and Kin is a photo sharing website designed to allow you to share photos with
                        friends and family.
                    </p>
                    <hr class="line-divider" />
                    <p id="viewPhotos">
                        <h2>
                            <strong><u>Who can view my photos?</u></strong></h2>
                    </p>
                    <br />
                    <p>
                        No one can view your pictures when they are first uploaded to the site. You are
                        given the option to set up the permissions for each photo when you add them. You
                        can allow a few people to view one photo and different people to view another.
                    </p>
                    <hr class="line-divider" />
                    <p id="createAccount">
                        <h2>
                            <strong><u>How do I create an Account? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        To make an account on this site you need to select <i>"Register"</i> on the main
                        website page and enter your information. This information helps to identify you
                        to family and friends.
                    </p>
                    <hr class="line-divider" />
                    <p id="emailAddress">
                        <h2>
                            <strong><u>Do I need an E-mail Address? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        To create an account you need to have an e-mail address. This information is needed
                        so that you can be notified when someone lets you view their photos or leaves you
                        a message/comment.
                    </p>
                    <hr class="line-divider" />
                    <p id="information">
                        <h2>
                            <strong><u>How do I change my information? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        On your profile page there should be a button underneath your information called
                        "Edit Profile". By clicking this button you are taken to your information which
                        you can change accordingly. E.g. "My e-mail address has changed".
                        <br />
                        You can also change your password through this method by clicking <i>"Edit Account"</i>.</p>
                    <hr class="line-divider" />
                    <p id="contact">
                        <h2>
                            <strong><u>How do I add a new Contact? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        Along the top of the website screen there is a toolbar. Along this toolbar, if you
                        select <i>"Add New Contact"</i> you will be prompted to enter the name or e-mail
                        address of this new contact. They will receive an e-mail alerting them to add you
                        as a friend.
                    </p>
                    <hr class="line-divider" />
                    <p id="group">
                        <h2>
                            <strong><u>How do I create a new Group? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        On the home page where your contact circles are located there is a button which
                        says <i>"Add New Group"</i>. You will be prompted to add a title to this group.
                        The group will be created and you will be able to add contacts to it.
                    </p>
                    <hr class="line-divider" />
                    <p id="contactPhoto">
                        <h2>
                            <strong><u>How do I view a contacts photo? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        By selecting the contact you want to view from your homepage, you will be taken
                        to their profile where their photo albums will be displayed. From there you can
                        view the photos they have made available to you.
                    </p>
                    <hr class="line-divider" />
                    <p id="ownPhoto">
                        <h2>
                            <strong><u>Can I edit my own photos? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        By accessing your own photo albums through your own profile, you can select an image
                        you would like to change the information of. Once this image has been selected you
                        will be able to update any text information or delete the photo.
                    </p>
                    <hr class="line-divider" />
                    <p id="upload">
                        <h2>
                            <strong><u>Where do I upload my photos? </u></strong>
                        </h2>
                    </p>
                    <br />
                    <p>
                        By selecting your name in the top corner of the screen you will see the option to
                        add a picture. This will let you select a photo from your computer/device and upload
                        it to the site. You can upload multiple photos and edit there permissions and information
                        together or separately.
                    </p>
                    <hr class="line-divider" />
                    <p id="addToGroup">
                        <h2>
                            <strong><u>How do I add a contact to a group?</u></strong></h2>
                    </p>
                    <br />
                    <p>
                        When adding a new contact you wil have the option to add them to a group. You will
                        also be able to add them to a group when you are on their profile. A button labelled
                        "Add to Group" will appear on their profile. The contact will appear in that grous
                        circle on your main home screen.</p>
                    <hr class="line-divider" />
                    <p id="find">
                        <h2>
                            <strong><u>Is there an easier way to find contacts?</u></strong></h2>
                    </p>
                    <br />
                    <p>
                        There is the option to search the entire site at the top of the page. Here you can
                        enter a name or word that you would like to find. Selecting search will bring up
                        all possible results related to the words you entered.
                    </p>
                    <hr class="line-divider" />
                    <a href="#content" id="backToTopLink" style="text-align: center; display: none;"
                        alt="Return to the top of page">Back to top</a>
                    </form>
                    <!--link to top of the page for easier navigation only displayed when the screen size is too small-->
                    <script>
                        if ($(document).height() > $(window).height()) {
                            $("#backToTopLink").css('display', 'block');
                        }
                    </script>
                </div>
            </div>
    </div>
    </map>
</asp:Content>
