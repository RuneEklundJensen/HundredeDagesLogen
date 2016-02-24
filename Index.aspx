<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HundredeDagesLogen.Index" %>

<%@ Register TagPrefix="CC" TagName="UCWelcome" Src="~/UserControls/Welcome.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCMembers" Src="~/UserControls/Members.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCMemberDetails" Src="~/UserControls/MemberDetails.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCMeetings" Src="~/UserControls/Meetings.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCFinances" Src="~/UserControls/Finances.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCPhotoAlbums" Src="~/UserControls/PhotoAlbums.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCPhotoAlbum" Src="~/UserControls/PhotoAlbum.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCAbout" Src="~/UserControls/About.ascx" %>
<%@ Register TagPrefix="CC" TagName="UCDialogs" Src="~/UserControls/Dialogs.ascx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>100 Dages Logen</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <script src="../Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Scripts/knockout-3.3.0.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.blueimp-gallery.min.js" type="text/javascript"></script>
    <script src="../Scripts/ViewModel.js" type="text/javascript"></script>

    <link rel="stylesheet" href="../Content/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../Content/Styles.css" type="text/css" />
    <link rel="stylesheet" href="../Content/blueimp-gallery.min.css" />

    <script type="text/javascript">
        function MemberDetails_OnLoad(memberId) {
            viewModel.SetSelectedMedlem(parseInt(memberId, 0));

            return true;
        }
    </script>

    <script type="text/javascript">
        function PhotoAlbum_OnLoad(selectedPhotoAlbum) {
            viewModel.SetSelectedPhotoAlbum(selectedPhotoAlbum);

            return true;
        }
    </script>

    <script type="text/javascript">
        function validationErrorModal_Click() {

            $('#validationErrorModal').modal('hide');
            $('#loginModal').modal('show');

            return true;
        }
    </script>

    <script type="text/javascript">
        function loginModal_Click() {

            var user = $('#user').val();
            var password = $('#password').val();

            $('#spinnerModal').modal('show');
            var authenticator = new Authenticator(webApiBaseUrl, user, password);

            authenticator.Ready.done(function () {
                $('#spinnerModal').modal('hide');
                var token = authenticator.Token;

                if (authenticator.Token == "") {
                    $('#validationErrorModal').modal('show');
                    return true;
                }

                document.getElementById('userOutput').value = authenticator.User;

                // Hent ViewModel data                                          
                $('#spinnerModal').modal('show');

                viewModel.GetData(authenticator.Token);

                // Sluk for spinner
                viewModel.Ready.done(function () {
                    document.getElementById('membersTab').classList.remove("disabled");
                    document.getElementById('meetingstab').classList.remove("disabled");
                    document.getElementById('financesTab').classList.remove("disabled");
                    document.getElementById('photoAlbumsTab').classList.remove("disabled");

                    document.getElementById('logOutButton').classList.remove("hidden");
                    document.getElementById('logInButton').classList.add("hidden");

                    $('#spinnerModal').modal('hide');

                    return true;
                });

                return true;
            });
        }
    </script>

    <script type="text/javascript">
        function logOut_Click() {

            document.getElementById('userOutput').value = "";

            document.getElementById('membersTab').classList.add("disabled");
            document.getElementById('meetingstab').classList.add("disabled");
            document.getElementById('financesTab').classList.add("disabled");
            document.getElementById('photoAlbumsTab').classList.add("disabled");

            document.getElementById('logOutButton').classList.add("hidden");
            document.getElementById('logInButton').classList.remove("hidden");
                                                                        
            viewModel.FlushData();
            
            return true;
        }
    </script>

</head>

<body>
    <form id="SpaForm" runat="server">
        <nav class="navbar-wrapper navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <ul class="nav nav-tabs navbar-nav">
                    <li class="active"><a class="navbar-brand" data-toggle="tab" data-target="#WelcomeTab">100 Dages Logen</a></li>
                    <li class="disabled" id="membersTab"><a data-toggle="tab" data-target="#MembersTab">Logemedlemmer</a></li>
                    <li class="disabled" id="meetingstab"><a data-toggle="tab" data-target="#MeetingsTab">Mødeaktivitet</a></li>
                    <li class="disabled" id="financesTab"><a data-toggle="tab" data-target="#FinancesTab">Finanser</a></li>
                    <li class="disabled" id="photoAlbumsTab"><a data-toggle="tab" data-target="#PhotoAlbumsTab">Billeder</a></li>
                    <li><a data-toggle="tab" data-target="#AboutTab">About</a></li>
                </ul>

                <div class="navbar-form navbar-right">
                    <button type="button" class="btn btn-primary" id="logInButton" data-toggle="modal" data-target="#loginModal">Login</button>
                    <button type="button" class="btn btn-primary hidden" id="logOutButton" onclick="return logOut_Click()" >Logout</button>
                    <input type="text" placeholder="Email" name="userOutput" id="userOutput" class="form-control" disabled="disabled" style="width: 300px;" />
                </div>
            </div>
        </nav>

        <div class="container">
            <div id="fix-for-navbar-fixed-top-spacing" style="height: 80px;">&nbsp;</div>
            <div class="text-center">
                <div class="tab-content">
                    <div id="WelcomeTab" class="tab-pane fade in active">
                        <CC:UCWelcome ID="userControlWelcome" runat="server" />
                    </div>
                    <div id="MembersTab" class="tab-pane fade">
                        <CC:UCMembers ID="UCMembers" runat="server" />
                    </div>
                    <div id="MemberDetailsTab" class="tab-pane fade">
                        <CC:UCMemberDetails ID="UCMemberDetails" runat="server" />
                    </div>
                    <div id="MeetingsTab" class="tab-pane fade">
                        <CC:UCMeetings ID="userControlMeetings" runat="server" />
                    </div>
                    <div id="FinancesTab" class="tab-pane fade">
                        <CC:UCFinances ID="userControlFinances" runat="server" />
                    </div>
                    <div id="PhotoAlbumsTab" class="tab-pane fade">
                        <CC:UCPhotoAlbums ID="userControlPhotoAlbums" runat="server" />
                    </div>
                    <div id="PhotoAlbumTab" class="tab-pane fade">
                        <CC:UCPhotoAlbum ID="userControlPhotoAlbum" runat="server" />
                    </div>
                    <div id="AboutTab" class="tab-pane fade">
                        <CC:UCAbout ID="userControlAbout" runat="server" />
                    </div>
                </div>
            </div>
        </div>

        <div class="navbar-wrapper navbar-default navbar-fixed-bottom">
            <div class="container">                
                <div class="text-right">&copy; 2015 by by Rune Jensen, Eklund Industries,  v. <%= Version %>,   info@EklundIndustries.com</div>
                
            </div>
        </div>
        
        <CC:UCDialogs ID="UCDialogs" runat="server" />
       
        <div id="spinnerModal">
            <div class="text-center">
                <img src="../Content/loading.gif" alt="loading..." id="spinner" width="50" height="50" style="vertical-align: top" />

            </div>
        </div>
    </form>

    <script type="text/javascript">
        $('#spinnerModal').modal('show');

        // Hent ViewModel og activate knockout
        var webApiBaseUrl = '<%= WebApiBaseUrl %>';
        var viewModel = new ViewModel(webApiBaseUrl, 8);
        ko.applyBindings(viewModel);

        $('#spinnerModal').modal('hide');
    </script>
</body>
</html>
