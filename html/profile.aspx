<%@ page language="C#" autoeventwireup="true" codefile="profile.aspx.cs" inherits="html_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/jquery.idealforms.css" rel="stylesheet" />
    <link href="../css/jquery.idealselect.css" rel="stylesheet" />
    <link href="../css/slicknav.css" rel="stylesheet" />
    <link href="../css/style1.css" rel="stylesheet" />

    <script src="../js/modernizr.js"></script>

    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script type='text/javascript'
        src='http://maps.googleapis.com/maps/api/js?sensor=false'></script>

    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/profile_style.css" rel="stylesheet" />
</head>
<body>
    <div class="card" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: -30px; align-items: center; overflow-x: hidden; overflow-y: hidden">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: whitesmoke; height: 650px">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">Profile</h4>
                </div>
                <div class="modal-body">
                    <div class="back"></div>
                    <form runat="server">
                        <img src="../img/first.jpg" data-action="zoom" style="width: 150px;" width="140px" height="180px" id="photo" alt="" style="border-radius: 2px;">
                        <h4 class="display-4" style="text-align: center; margin-top: 40px; font-size: 25px; font-weight: bold; margin-left: 10px;" runat="server" id="dname">Vidit Gupta</h4>
                        <img style="position: absolute; left: 380px; top: 262px;" src="../img/male.png" height="30" width="30" id="proimage" runat="server" alt="">
                        <div class="card">
                            <ul class="list-group list-group-flush" style="text-align: center;">
                                <h4 class="display-4" style="margin-top: 0; font-size: 16px; font-weight: bold; margin-left: -10px;">Email</h4>
                                <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" runat="server" id="mail">vidit135g@gmail.com</li>
                                <h4 class="display-4" style="margin-top: 5px; font-size: 16px; font-weight: bold; margin-left: -10px;">Contact Number</h4>
                                <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" runat="server" id="cnum">8896289274</li>
                                <h4 class="display-4" style="margin-top: 5px; font-size: 16px; font-weight: bold; margin-left: -10px;">Location</h4>
                                <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" id="loc" runat="server">Lucknow</li>
                                <asp:Button name="" ID="discuss" class="btn btn-danger" runat="server" role="button" OnClick="fillDetails" Style="font-size: 20px; margin-top: 20px; width: 100%; padding: 10px; margin-left: -18px; margin-bottom: 5px;" Text="DISCUSS COST ESTIMATE"></asp:Button>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <!-- Main jQuery -->
    <script type="text/javascript" src="../js/jquery.main.js"></script>
    <!-- Form -->
    <script type="text/javascript" src="../js/jquery.idealforms.min.js"></script>
    <script type="text/javascript" src="../js/jquery.idealselect.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <!-- Menu -->
    <script type="text/javascript" src="../js/hoverIntent.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <!-- Counter-Up  -->
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script type="text/javascript" src="../js/jquery.counterup.min.js"></script>
    <!-- Rating  -->
    <script type="text/javascript" src="../js/bootstrap-rating-input.min.js"></script>
    <!-- Slicknav  -->
    <script type="text/javascript" src="../js/jquery.slicknav.min.js"></script>
    <script type="text/javascript" src="../js/map.js"></script>
</body>
</html>