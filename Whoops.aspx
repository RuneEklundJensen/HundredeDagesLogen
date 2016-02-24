<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Whoops.aspx.cs" Inherits="HundredeDagesLogen.Whoops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>100 Dages Logen</title>

    <script src="../Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    
    <link rel="stylesheet" href="../Content/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="../Content/Styles.css" type="text/css" />    
</head>
<body>
    <form id="WhoopsForm" runat="server">

        <nav class="navbar-wrapper navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <ul class="nav nav-tabs navbar-nav">
                    <li class="active"><a class="navbar-brand" data-toggle="tab">100 Dages Logen</a></li>
                    <li class="disabled"><a data-toggle="tab">Logemedlemmer</a></li>
                    <li class="disabled"><a data-toggle="tab">Mødeaktivitet</a></li>
                    <li class="disabled"><a data-toggle="tab">Finanser</a></li>
                    <li class="disabled"><a data-toggle="tab">Billeder</a></li>
                    <li class="disabled"><a data-toggle="tab">About</a></li>
                </ul>

                <div class="navbar-form navbar-right">
                    <button type="button" class="btn btn-primary disabled">Login</button>
                    <input type="text" placeholder="Email" class="form-control" disabled="disabled" style="width: 300px;" />
                </div>
            </div>
        </nav>

        <div class="container">
            <div id="fix-for-navbar-fixed-top-spacing" style="height: 80px;">&nbsp;</div>
            <div class="text-center">
                <div class="tab-content">
                    <div id="WelcomeTab" class="tab-pane fade in active">
                        <div class="form-group">
                            <div class="jumbotron">
                                <div class="text-left">
                                    <h2>Im with stupid</h2>
                                    <hr />
                                    <h3>Noget gik galt...</h3>
                                    <h3>Og det er en som at der hedder Runes skyld</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
