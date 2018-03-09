<%@ page language="C#" autoeventwireup="true" codefile="done.aspx.cs" inherits="html_done" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>

    <script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
        integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <style>
        .container {
            background-image: url("../img/lko3.jpg");
            width: 1360px;
            height: 637px;
            background-repeat: no-repeat;
            background-position-x: center;
            background-position-y: center;
            background-size: cover;
        }

        .card {
            position: absolute;
            width: 700px;
            top: 40px;
            left: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card" id="car">
            <div class="card-block">
                <h4 class="card-title">Done!</h4>
                <p class="card-text">An activation link has been sent to your registered email address.</p>
                <p class="card-text" style="color: aqua; font-size: 20px;"><a href="signin.html" style="text-decoration: none" onclick="LogOut" id="sign">Sign In</a></p>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
        integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>