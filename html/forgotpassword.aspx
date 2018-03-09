<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="html_forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="../css/signinrider-style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <style>
        #hid {
            z-index: -1;
            position: absolute;
            margin: 0 auto;
            top: 170px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>
    <div class="card form-login" style="border: none; background-color: whitesmoke; height: 388px;">

        <div style="border: none; padding-top: 40px;" id="vis">
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 40px">Forgot Password?</h4>
            <div class="form-group" style="width: 550px;">
                <input type="email" autofocus class="form-control fm " runat="server" name="mail" id="mail" aria-describedby="helpId" style="height: 48px;" placeholder="Registered Email" required />
            </div>
            <div class="form-group" style="width: 550px;">
                <input type="submit" id="next" runat="server" class="btn-submit" style="background-color: cadetblue" text="NEXT" onclick="next_Click"></input>
            </div>
            <h4 id="accept1">Don't have an account? <a href="signup_new.html">Sign up</a></h4>
        </div>
        <form style="border: none" runat="server" id="hid">
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 25px; width: 600px;">Password reset link has been sent to your registered email id and is only valid upto one hour.
            <br />
                <a href="signin.html" data-toggle="tooltip">
                    <asp:Button runat="server" ID="activate" type="submit" class="btn-submit" Text="NEXT" Style="margin-top: 20px;"></asp:Button></a>
                <h4 id="accept1" style="margin-top: -20px;">Something went wrong? <a href="signup_new.html">Sign up</a></h4>
        </form>
    </div>
    <div class="container-fluid" id="last-foot" style="margin-top: 387px;">
    </div>

    <script>

        function validateEmail(email) {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        }

        var button = document.getElementById("next");
        button.onclick = function () {
            var email = $("#mail").val();
            if (email != '' && validateEmail(email)) {
                $("#vis").fadeOut(1000);
                $("#hid").fadeIn(5000);
            }
        }
        button.onkeypress = function () {
            var email = $("#mail").val();
            if (email != '' && validateEmail(email)) {
                $("#vis").fadeOut(1000);
                $("#hid").fadeIn(5000);
            }

        }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>