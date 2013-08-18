<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="EditChangePassword.aspx.cs" Inherits="EditChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
    <a name="content"></a>
		<div class="tabbable span7 offset3" role="tabbable_content">
			<!-- Only required for left/right tabs -->
				<ul class="nav nav-tabs" role="navigation_tabs">
					<li role="tab"><a href="EditProfile.aspx" alt="Edit Profile">Edit Profile</a></li>
                    <li class="active" role="tab"><a href="EditChangePassword.aspx" class="active" alt="Edit Account">Edit Account</a></li>
                    <li role="tab"><a href="EditChangePicture.aspx" alt="Change Profile Picture">Change Profile Picture</a></li>
				</ul>
				<div class="tab-content" role="tab_content">
					<div class="tab-pane active span6" id="tab1">
						<div class="form-horizontal span5" id="account_form" role="account_form">
							<div class="control-group">
								<label class="control-label" for="password">Old Password:</label>
								<div class="controls">
									<input class="required" type="password" id="password" name="password" placeholder="Old Password" required>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="password_confirm">Confirm Old Password:</label>
								<div class="controls">
									<input class="required" type="password" id="password_confirm" name="password_confirm" placeholder="Old Password" required>
								</div>
							</div>
							<hr class="line-divider">
							<div class="control-group">
								<label class="control-label" for="pass">New Password:</label>
								<div class="controls">
									<input class="required" type="password" id="pass" name="pass" placeholder="New Password" required>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="pass_confirm">Confirm New Password:</label>
								<div class="controls">
									<input class="required" type="password" id="pass_confirm" name="pass_confirm" placeholder="New Password" required >
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn btn-large btn-primary">Update</button>
								</div>
							</div>
						   <a href="#content" id="backToTopLink" style="text-align:center;display:none;" alt="Return to the top of page">Back to top</a>
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
