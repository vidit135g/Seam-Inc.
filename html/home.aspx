﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="html_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SEAM</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="../css/homestyle.css" rel="stylesheet" type="text/css">

    <style>
        #photo {
            position: absolute;
            top: 160px;
            left: 230px;
        }

        #myModal {
            overflow-y: hidden;
        }

        .hist:focus {
            outline: none;
        }

        .hist {
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
                    <h4 class="modal-title" id="myModalLabel">HISTORY</h4>
                    <br>
                </div>
                <div class="modal-body">
                    <h4 class="modal-title" class="display-4" style="display: block; font-size: 20px; text-align: center; margin-top: -15px; margin-bottom: 10px;">People you may know</h4>

                    <ul class="media-list media-list-users list-group">
                        <li class="list-group-item">
                            <div class="media w-100">
                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-fat.jpg">
                                <div class="media-body align-self-center">
                                    <button class="btn btn-outline-danger btn-sm float-right">
                                        <span class="icon icon-add-user"></span>INFO
                                    </button>
                                    <strong>Aviral Bajpai</strong>
                                    <small>&nbsp&nbsp&nbspVikas Nagar</small>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media w-100">
                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-dhg.png">
                                <div class="media-body align-self-center">
                                    <button class="btn btn-outline-danger btn-sm float-right">
                                        <span class="icon icon-add-user"></span>INFO
                                    </button>
                                    <strong>Vidit Gupta</strong>
                                    <small>&nbsp&nbsp&nbspAliganj</small>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media w-100">
                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-mdo.png">
                                <div class="media-body align-self-center">
                                    <button class="btn btn-outline-danger btn-sm float-right">
                                        <span class="icon icon-add-user"></span>INFO
                                    </button>
                                    <strong>Sarthak Srivastava</strong>
                                    <small>&nbsp&nbsp&nbspKeshav Nagar</small>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="top">

        <ul class="nav nav-inline top-bar">
            <img src="../img/icon.png" width="33px" height="40px" style="margin-right: -12px;" />
            <li class="nav-item" style="font-size: 25px; font-weight: bolder;">SEAM</li>
            <li class="nav-item tp"><a href="rides.aspx" style="text-decoration: none; color: white;">Ride</a></li>
            <li class="nav-item tp"><a href="drivereg.aspx" style="text-decoration: none; color: white;">Drive</a></li>
        </ul>
        <ul class="top-bar nav nav-inline" id="second-bar">
            <li class="nav-item"><a href="help.html" style="text-decoration: none; color: white;">HELP</a></li>
            <li class="nav-item">
                <div class="btn-group">
                    <a runat="server" id="nameuser" class="dropdown-toggle" href="signin.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration: none; color: white; margin-top: -5px;">USER NAME</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" runat="server" id="logout" href="signindriver.aspx" onclick="loggedOut">Logout</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a href="location.html">
                    <img src="../img/location.png" style="width: 28px; height: 28px; margin-top: -5px;" alt="ERROR"></a></li>
            <li id="top-bar-button" class="hist"><a href="#aboutModal" class="hist" data-toggle="modal" data-target="#myModal" style="text-decoration: none; color: white">HISTORY</a>
            </li>

            <li class="nav-item" style="font-size: 30px; cursor: pointer" onclick="openNav()">
                <img src="../img/snack.png" style="margin-top: -5px;" alt=""></li>
        </ul>
        <div id="mySidenav" class="sidenav">
            <div id="inbox" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">

                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a href="#">About Us</a>
                <a href="#">Help</a>
                <a href="#">More</a>
                <a href="#">Feedback</a>
            </div>
            <div class="safety">
                <h1 style="font-weight: bold">From start to finish, a ride you can trust</h1>
                <h1 style="margin-top: 10px; margin-bottom: 40px;">Your safety is important to us before, during, and after every trip. That's why we continue to develop technology that helps make millions of rides safer every day.</h1>
                <div id="box1">
                    <h3 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Follow Us</h3>
                    <a href="#">
                        <img src="../img/tweet.png" alt="" class="social"></a>
                    <a href="#">
                        <img src="../img/fb.png" alt="" class="social"></a>
                    <a href="#">
                        <img src="../img/pin.png" alt="" class="social"></a>
                    <a href="#">
                        <img src="../img/tweet.png" alt="" class="social"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container main" style="background-color: black">
        <div class="main-comp display-4" id="first">Reach there</div>
        <div class="main-comp display-4" id="second">Time is all you've got</div>
    </div>
    <div class="jumbotron jumbotron-fluid image">
    </div>
    <div class="card form-login">
        <div class="card-block">
            <div>
                <table>
                    <tr>
                        <td>
                            <img src="../img/ride.png" alt=""></td>
                        <td style="padding-left: 8px">
                            <table>
                                <tr>
                                    <td>
                                        <h4 style="font-size: 20px"><span class="label label-default display-6">Ride with SEAM</span></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Know more
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <img src="../img/margin_or.png" alt="">
                <table style="margin-top: 5px">
                    <tr>
                        <td>
                            <img src="../img/signup.png" alt=""></td>
                        <td style="padding-left: 8px">
                            <h4 style="font-size: 20px"><span class="label label-default display-6">Drive with SEAM</span></h4>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <form>
            <div class="form-group name" style="margin-top: 3px; width: 185px;">
                <input type="text" class="form-control fm" name="" id="" aria-describedby="helpId" placeholder="FROM">
            </div>
            <div class="form-group name" style="width: 185px; margin-left: -5px;">
                <input type="text" class="form-control fm" name="" id="" aria-describedby="helpId" placeholder="TO">
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input ge" name="gender" id="" value="checkedValue">
                    Male
                </label>
                <label class="form-check-label" style="margin-left: 60px; margin-bottom: 10px;">
                    <input type="radio" class="form-check-input ge" name="gender" id="" value="checkedValue">
                    Female
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input ty" name="type" id="" value="checkedValue">
                    Rider
                </label>
                <label class="form-check-label" style="margin-left: 60px; margin-bottom: 10px;">
                    <input type="radio" class="form-check-input ty" name="type" id="" value="checkedValue">
                    Driver
                </label>
            </div>
            <button type="submit" class="btn-submit">SEARCH</button>
        </form>
        <p id="accept2">
            By proceeding, I agree that SEAM or its representatives may<br>
            contact me by email, phone, or SMS (including by automatic
            <br>
            telephone dialing system) at the email address or number I
            <br>
            provide, including for marketing purposes. I have read
            and
            <br>
            understand the relevant <a>Driver Privacy Statement</a>.
        </p>
    </div>
    <div class="container free">
    </div>
    <div class="card-deck-wrapper deck">
        <div class="card-deck">
            <div class="card cards">
                <img class="card-img-top" width="120px" height="120px" src="../img/card1.png" alt="">
                <div class="card-block">
                    <h4 class="card-title">Easiest way around</h4>
                    <p class="card-text cd">
                        One tap and a car comes directly to you. Hop in—your driver knows exactly where to go. And when you get there, just step out. Payment is completely seamless.
                    </p>
                </div>
            </div>
            <div class="card cards">
                <img class="card-img-top" width="120px" height="120px" src="../img/card2.png" alt="">
                <div class="card-block">
                    <h4 class="card-title">Anywhere, anytime</h4>
                    <p class="card-text cd">Daily commute. Errand across town. Early morning flight. Late night drinks. Wherever you’re headed, count on Seam for a ride—no reservations required.</p>
                </div>
            </div>
            <div class="card cards">
                <img class="card-img-top" width="120px" height="120px" src="../img/card3.png" alt="">
                <div class="card-block">
                    <h4 class="card-title">Low-cost to luxury</h4>
                    <p class="card-text cd">Economy cars at everyday prices are always available. For special occasions, no occasion at all, or when you just a need a bit more room, call a black car or SUV. </p>
                </div>
            </div>
        </div>
    </div>

    <div class="gallery" style="margin-top: 50px;">
        <div class="images" id="first1">
        </div>
        <div class="images" id="second2">
        </div>
        <div class="images" id="third3">
        </div>
        <div class="images" id="fourth4">
        </div>
        <div class="images" id="fifth5">
        </div>
    </div>
    <div id="inner-ele">
        <h1 style="margin-left: 25px;">Our community</h1>
        <p style="width: 500px; margin-left: 25px;">Our driver community comprises people of different backgrounds, experiences, and interests. But it’s their passions that tell the story of who they are.</p>
        <div type="button" class="bto" id="reason"><a href="drive.html" style="text-decoration: none; color: black;">READ STORIES</a></div>
    </div>
    <div class="container" id="mid-container">
        <div id="inner-el">
            <h1 style="margin-left: 25px;">Drive when you want</h1>
            <h3 style="margin-left: 25px;">Make what you need</h3>
            <p style="width: 500px; margin-left: 25px;">Driving with Seam is flexible and rewarding, helping drivers meet their career and financial goals.</p>
            <div type="button" id="reason"><a href="ride.html" style="text-decoration: none; color: black;">REASONS TO RIDE</a></div>
        </div>
    </div>
    <div class="container-fluid" id="last-container">
        <h4 style="font-weight: lighter; font-size: 32px;">Now arriving</h4>
        <h2 style="font-size: 40px;">Safe and modern cities</h2>
        <div class="card-deck-wrapper">
            <div class="card-deck last-deck">
                <div class="card last-cards">
                    <table>
                        <tr>
                            <td>
                                <img src="../img/drive1.png" alt="" width="110px" height="110px" style="margin-top: -60px;"></td>
                            <td>
                                <table style="margin-left: 25px; margin-top: 5px;">
                                    <tr>
                                        <td>
                                            <h4 style="font-size: 30px"><span class="label label-default display-6">Helping cities thrive</span></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p style="width: 270px; margin-top: 6px;">A city with Seam gives people more ways to make money, has fewer drunk drivers on the road, and provides transportation anywhere, anytime.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h4 style="font-size: 18px; color: green;"><span class="label label-default display-6"><a href="safety.html" style="text-decoration: none; color: green;">SEE THE IMPACT ></a></span></h4>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="card last-cards" style="margin-left: 10px; padding-left: 105px; border-left: 3px solid grey;">
                    <table>
                        <tr>
                            <td>
                                <img src="../img/drive2.png" alt="" width="100px" height="110px" style="margin-top: -130px;"></td>
                            <td>
                                <table style="margin-left: 25px; margin-top: -8px;">
                                    <tr>
                                        <td>
                                            <h4 style="font-size: 30px; width: 280px"><span class="label label-default display-6">Safe rides for everyone</span></h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p style="width: 270px; margin-top: 6px;">Whether riding in the backseat or driving up front, every part of the Seam experience is designed around your safety and security.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h4 style="font-size: 18px; color: green;"><span class="label label-default display-6"><a href="safety.html" style="text-decoration: none; color: green;">HOW WE KEEP YOU SAFE ></a></span></h4>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" id="last-cont">
        <h4 style="font-size: 40px;">SEAM is in Lucknow</h4>
        <h2 style="font-size: 36px; font-weight: lighter">and is in its beta phase, do expect some bugs.</h2>
        <div class="form-group ele">
            <input type="text" style="height: 45px; width: 350px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-top: 20px;" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Find a city">
        </div>
    </div>
    <div class="container-fluid" id="last-foot">
    </div>
    <div class="container-fluid" id="box">
        <div>
            <ul id="box-list">
                <li class="ex display-4" style="font-size: 35px;">SEAM <span style="font-size: 20px">Inc.</span></li>
                <a href="signinrider.html" style="text-decoration: none; width: 100%; height: 100%;">
                    <li class="ex exb ">HELP</li>
                </a>
                <a href="signindriver.html" style="text-decoration: none;">
                    <li class="ex exb ">ABOUT US</li>
                </a>

                <a href="signindriver.html" style="text-decoration: none;">
                    <li class="ex exb ">FEEDBACK</li>
                </a>
            </ul>
        </div>
    </div>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "100%";
            document.getElementById("bdy").style.overflow = "hidden";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("bdy").style.overflowY = "scroll";
        }
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js "></script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=myMap "></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js " integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn " crossorigin="anonymous "></script>
</body>
</html>