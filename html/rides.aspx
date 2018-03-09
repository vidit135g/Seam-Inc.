<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rides.aspx.cs" Inherits="html_rides" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Rides</title>
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
    <style>
        .link {
            text-decoration: none;
        }

            .link:hover {
                text-decoration: none;
            }

            .link:active {
                text-decoration: none;
            }

            .link:focus {
                text-decoration: none;
            }

        .back {
            background-image: url("../img/ride.jpg");
            background-position-x: center;
            background-position-y: center;
            background-size: cover;
            opacity: 0.9;
            width: 600px;
            margin-left: -15px;
            height: 220px;
            margin-top: -37px;
        }

        #photo {
            position: absolute;
            top: 160px;
            left: 230px;
        }

        #myModal {
            overflow-y: hidden;
        }

        #Button1 {
            outline: none;
        }

        #submit {
            outline: none;
        }
    </style>
</head>
<body>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: -30px; align-items: center">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: whitesmoke">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">Profile</h4>
                </div>
                <div class="modal-body">
                    <div class="back"></div>

                    <img src="../img/first.jpg" data-action="zoom" style="width: 150px;" width="140px" height="180px" id="photo" alt="" style="border-radius: 2px;">
                    <h4 class="display-4" style="text-align: center; margin-top: 40px; font-size: 25px; font-weight: bold; margin-left: 10px;" runat="server" id="dname"></h4>
                    <img style="position: absolute; left: 380px; top: 262px;" src="../img/male.png" height="30px" width="30px" alt="">
                    <div class="card">
                        <ul class="list-group list-group-flush" style="text-align: center;">
                            <h4 class="display-4" style="margin-top: 0; font-size: 16px; font-weight: bold; margin-left: -10px;">Email</h4>
                            <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" runat="server" id="mail"></li>
                            <h4 class="display-4" style="margin-top: 5px; font-size: 16px; font-weight: bold; margin-left: -10px;">Contact Number</h4>
                            <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" runat="server" id="cnum"></li>
                            <h4 class="display-4" style="margin-top: 5px; font-size: 16px; font-weight: bold; margin-left: -10px;">Location</h4>
                            <li class="list-group-item" style="margin-top: -12px; margin-left: -18px;" id="loc" runat="server"></li>
                            <a name="" id="discuss" class="btn btn-danger" runat="server" role="button" onclick="fillDetails" style="font-size: 20px; margin-top: 20px; width: 100%; padding: 10px; margin-left: -18px;">DISCUSS COST ESTIMATE</a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>

    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 50px; margin-bottom: -70px;">

        <div class="search-content">

            <form runat="server" method="post" novalidate autocomplete="off" class="idealforms searchtours">

                <div class="row">

                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="field">
                            <select id="place" name="place" runat="server">
                                <option value="default">From</option>
                                <option value="Aliganj">Aliganj</option>
                                <option value="Vikas Nagar">Vikas Nagar</option>
                                <option value="Keshav Nagar">Keshav Nagar</option>
                                <option value="Nirala Nagar">Nirala Nagar</option>
                                <option value="Gomti Nagar">Gomti Nagar</option>
                                <option value="Hazratganj">Hazratganj</option>
                                <option value="Kapurthala">Kapurthala</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">

                        <div class="field">
                            <select id="destination" name="destination" style="overflow: scroll" runat="server">
                                <option value="default" runat="server">To</option>
                                <option style="overflow: scroll" runat="server" value="National Post Graduate College, 2, Rana Pratap Marg, Lucknow, Uttar Pradesh 226001">National P.G. College</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">

                        <div class="field">
                            <input name="event" type="text" placeholder="Date" class="datepicker" data-container="body" id="dz" runat="server">
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">

                        <div class="field">
                            <select id="seats" name="seats" runat="server">
                                <option value="default">Number of seats</option>
                                <option value="1">1</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 8px">

                        <div class="field buttons">
                            <asp:Button runat="server" Style="padding: 15px; color: black;" type="submit" class="btn btn-lg green-color" Text="Search" ID="submit" OnClick="submit_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 8px">

                        <div class="field buttons">
                            <a href="#aboutModal" data-toggle="modal" data-target="#mapModal" class="link">
                                <asp:Button runat="server" Style="padding: 15px; color: black;" class="btn btn-lg green-color" Text="CLEAR" ID="Button1" OnClick="Button1_Click"></asp:Button></a>
                        </div>
                    </div>
                    <asp:HiddenField ID="Hidd" runat="server" />
                </div>
            </form>
        </div>
    </div>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" />

    <div class="clearfix"></div>
    <script type="text/javascript">
        var modifyModal = function (link) {
            var s = link.innerHTML;
            document.getElementById('dname').innerText = s;
            document.getElementById('Hidd').value = s;
            var url = "profile.aspx?name=" + encodeURIComponent(s);
            window.location.href = url;
        };
    </script>

    <!-- Javascript -->
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