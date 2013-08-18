<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container top-margin" role="content_container">
        <div class="form-horizontal span6 offset3" role="login_form" id="login_form">
            <h1>
                <legend class="text-center">Error</legend>
            </h1>
            <br />
            <p class="text-center">
                Sorry :(<br/><br/>
                An internal erorr occured. We apologise for the inconvenience.
            </p>
            <br />
        </div>
    </div>
</asp:Content>
