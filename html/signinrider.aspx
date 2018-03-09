<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signinrider.aspx.cs" Inherits="html_signinrider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Rider Sign In</title>
    <link rel="stylesheet" type="text/css" href="../css/signinrider-style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>
    <div class="card form-login" style="border: none; background-color: whitesmoke;">
        <form style="border: none">
            <h4 class="display-4" style="margin-bottom: 30px; font-size: 40px">Sign In</h4>
            <div class="form-group" style="width: 550px;">
                <input type="email" autofocus class="form-control fm " name="" id="" aria-describedby="helpId" style="height: 48px;" placeholder="Email or Mobile Number" required>
            </div>

            <button type="submit" class="btn-submit">NEXT</button>
            <h4 id="accept1">Don't have an account? <a href="signup_new.html">Sign up</a></h4>
            <h4 class="display-5" style="margin-top: 25px; margin-bottom: 20px; font-weight: lighter;">Or</h4>
            <button type="submit" class="btn-submit" style="background-color: #3b5998; border: 1px solid #3b5998; width: 552px;">CONTINUE WITH FACEBOOK</button>

            <h5 class="display-5" style="margin-top: 25px; margin-bottom: 20px; font-weight: lighter;">will be implemnted in the future</h5>
        </form>
    </div>
    <div class="container-fluid" id="last-foot">
    </div>
    <div class="container-fluid" id="box">
        <div>
            <ul id="box-list">
                <li class="ex display-4" style="font-size: 35px;">SEAM <span style="font-size: 20px">Inc.</span></li>
                <a href="signup_new.html" style="text-decoration: none; color: white">
                    <li class="ex1 ex ">SIGN UP TO RIDE</li>
                </a>
                <a href="signindriver.html" style="text-decoration: none; color: white">
                    <li class="ex1 ex ">BECOME A DRIVER</li>
                </a>
            </ul>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>