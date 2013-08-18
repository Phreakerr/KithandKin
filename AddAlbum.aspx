<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAlbum.aspx.cs" Inherits="AddAlbum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <html lang="en">
    <title>Kith & Kin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Styles/layout.Styles" rel="stylesheet" media="screen"/>
    <!-- Bootstrap -->
    <link href="Styles/bootstrap.Styles" rel="stylesheet" media="screen"/>
    <link href="Styles/bootstrap-responsive.Styles" rel="stylesheet" media="screen"/>
    <link href="Styles/line.Styles" rel="stylesheet" media="screen"/>
    <link href="Styles/kithandkin.Styles" rel="stylesheet" media="screen" />
    <link href="Images/favicon.png" rel="icon" type="image/png"/>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <!-- Content -->
    <div class="container span5 offset3" role="content_container">
        <a name="content"></a>
        <form id="form2" runat="server">
        <div class="form-horizontal span4" style="width: 100%;" role="add_album_form">
            <h1>
                <legend class="text-center">Add Album</legend>
            </h1>
            <div class="control-group">
                <label class="control-label" for="inputAlbumName">
                    Album Name:</label>
                <div class="controls">
                    <input type="text" id="album_name" name="album_name" placeholder="Album Name" alt="Album Name">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="Country" alt="Share with selection">
                    Share with:</label>
                <div class="controls">
                    <select name="country">
                        <option value="0">Nobody</option>
                        <option value="1">Cersei Lannister</option>
                        <option value="2">Jaime Lannister</option>
                        <option value="3">Joffrey Baratheon</option>
                        <option value="4">Renly Baratheon</option>
                        <option value="5">Robert Baratheon</option>
                        <option value="6">Stannis Baratheon</option>
                        <option value="7">Tyrion Lannister</option>
                        <option value="8">Tywin Lannister</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" onclick="parent.location='home.html'" class="btn btn-large btn-primary"
                        alt="Add Album">
                        Add Album</button>
                </div>
            </div>
        </div>
        </form>
    </div>
</body>
</html>
