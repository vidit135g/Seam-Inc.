<%@ page language="C#" autoeventwireup="true" codefile="resetpassword.aspx.cs" inherits="html_resetpassword" %>

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
        <div style="border: none; padding-top: 1px;" id="vis">
            <h4 class="display-4" style="margin-bottom: 10px; font-size: 40px">Password Reset</h4>
            <h4 class="display-4" style="margin-bottom: 20px; font-size: 15px">(Hover on the textbox below to know the validation rules.)</h4>
            <div class="form-group" style="width: 550px;">
                <input type="password" autofocus class="form-control fm " name="mail" maxlength="10" id="pass1" aria-describedby="helpId" style="height: 48px;" placeholder="New password" required data-toggle="tooltip" title="Password must be 10 characters long, must have atleast one uppercase letter, one lowercase letter and one special character." />
            </div>
            <div class="form-group" style="width: 550px;">
                <input type="password" autofocus class="form-control fm " name="mail" id="pass2" maxlength="10" min aria-describedby="helpId" style="height: 48px;" placeholder="Confirm password" required />
            </div>

            <div class="form-group" style="width: 550px;">
                <input type="submit" id="next" class="btn-submit" style="background-color: cadetblue" value="RESET" />
                <h4 class="display-4" style="margin-top: 8px; font-size: 15px" id="error"></h4>
            </div>
        </div>
        <form style="border: none" runat="server" id="hid">
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 25px; width: 600px;">Your password has been successfully changed.
            <br />
                <a href="signin.html" data-toggle="tooltip">
                    <asp:Button runat="server" ID="activate" type="submit" class="btn-submit" Text="NEXT" Style="margin-top: 20px;"></asp:Button></a>
                <h4 id="accept1" style="margin-top: -20px;">All set? <a href="signin.html">Sign In</a></h4>
        </form>
    </div>
    <div class="container-fluid" id="last-foot" style="margin-top: 387px;">
    </div>

    <script>

        var button = document.getElementById("next");
        button.onclick = function () {
            var pass1 = $("#pass1").val();
            var er = document.getElementById("error");
            var pass2 = $("#pass2").val();
            var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
            if (pass1 == pass2 && pass1.match(passw) && pass1.length == 10) {
                button.className = "btn-submit";
                er.innerText = '';
                $("#vis").fadeOut(1000);
                $("#hid").fadeIn(5000);
            }
            else {
                er.innerText = "Invalid Password";
            }

        }
        button.onkeypress = function () {
            var pass1 = $("#pass1").val();
            var pass2 = $("#pass2").val();
            var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
            if (pass1 == pass2 && pass1.match(passw) && pass1.length == 10) {
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