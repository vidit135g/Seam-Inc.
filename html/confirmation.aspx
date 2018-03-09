<%@ page language="C#" autoeventwireup="true" codefile="confirmation.aspx.cs" inherits="html_confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Confirmation</title>
    <link rel="stylesheet" href="../css/confirmation-style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
        integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous" />
</head>
<body id="bdy" style="background-image: url('../img/giphy1.gif');">
    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>

    <div class="card form-login " id="former" style="border: none;background-image: url('../img/giphy1.gif');padding-top:50px;">
        <div class="row" style="margin-top:-40px;background-image: url('../img/giphy1.gif');height:100%;width:100%;">
            <div class="col-lg-4 stack";margin-left:20px;>
                <div class="card card-block cd" style="border: none; margin-right: 30px;">
                    <img src="" id="img1" runat="server" alt="ERROR UPLOADING IMAGE" width="150" height="190" style="margin: 0 auto; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                    <h3 class="card-title">Photo</h3>
                    <button type="button" class="btn red " id="ver1" style="width: 210px; margin: 0 auto; margin-top: 15px;" onclick="verification">VERIFY</button>
                </div>
            </div>
            <div class="col-lg-4 stack">
                <div class="card card-block cd" style="border: none;margin-left:35px;margin-right:-20px;">
                    <img src="" id="img2" runat="server" alt="ERROR UPLOADING IMAGE" width="150" height="190" style="margin: 0 auto; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">

                    <h3 class="card-title">Signature</h3>
                    <button type="button" class="btn red " id="ver2" style="width: 210px; margin: 0 auto; margin-top: 15px;" onclick="verification">VERIFY</button>
                </div>
            </div>

            <div class="col-lg-4 stack" style="margin-left:50px;">
                <div class="card card-block cd" style="border: none; margin-left: 30px;">
                    <img src="" id="img3" runat="server" alt="ERROR UPLOADING IMAGE" width="280" height="190" style="margin: 0 auto; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">

                    <h3 class="card-title">College ID</h3>

                    <button type="button" class="btn red " id="ver3" style="width: 210px; margin: 0 auto; margin-top: 15px;" onclick="verification">VERIFY</button>
                </div>
            </div>
        </div>
    </div>
    <div class="card form-log" id="latter" style="border: none; background-color: white;width:100%;height:600px;margin:0 auto;padding-bottom:50px;">
        <div id="logo" style="margin-top:10px;">
        </div>
        <form style="border: none" runat="server">
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 26px">Congratulations! Your documents have been successfully verified!</h4>
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 18px">Provide your
                <abbr title="Driving License" style="text-decoration: none">DL</abbr>
                number & click on the next button below to successfully activate your account.</h4>
            <div class="form-group" style="width: 550px;">
                <input runat="server" type="text" autofocus class="form-control fm " name="dl" id="dl" aria-describedby="helpId" style="height: 48px;" placeholder="Enter driving License Number" required />
            </div>
            <a href="#" data-toggle="tooltip" title="Your DL number will be verified by our team before updating your account." data-placement="right">
                <asp:Button runat="server" ID="activate" type="submit" class="btn-submit" Text="NEXT" OnClick="activate_account"></asp:Button></a>
            <h4 id="accept1">Something went wrong? <a href="signup_new.html">Sign up</a></h4>
        </form>
    </div>
    <script>

        var b1 = document.getElementById('ver1');
        var b2 = document.getElementById('ver2');
        var b3 = document.getElementById('ver3');
        var b4 = document.getElementById('former');
        var b5 = document.getElementById('latter');
        b1.onclick = function () {
            b1.className = 'ver';
            b1.innerHTML = '';

        }
        b2.onclick = function () {

            b2.className = 'ver';
            b2.innerHTML = '';

        }
        b3.onclick = function () {
            b3.className = 'ver';
            b3.innerHTML = '';
            setTimeout(function () {
                if ((b1.className == 'ver') && (b2.className == 'ver') && (b3.className == 'ver')) {
                    $("#former").fadeOut("3000");
                    $("#latter").fadeIn("5000");
                }

            }, 3000);
        }
        $('[data-toggle="tooltip"]').tooltip();
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js "></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js " integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn " crossorigin="anonymous "></script>
</body>
</html>