<%@ page language="C#" autoeventwireup="true" codefile="signindriver.aspx.cs" inherits="html_signindriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign In</title>
    <link rel="stylesheet" type="text/css" href="../css/signindriver_style.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous" />
    <style>
        .modal {
            /*   display: block;*/
            padding-right: 0px;
            background-color: rgba(4, 4, 4, 0.8);
        }

        .modal-dialog {
            top: 30%;
            left: 22%;
            border-radius: 8px;
            width: 100%;
            position: absolute;
        }

        .modal-content {
            border-radius: 8px;
            border: none;
            top: 40%;
            padding: 20px;
        }

        .modal-body1 {
            background-color: darkred;
            color: white;
            border-radius: 8px;
        }

        .modal-body {
            background-color: #0f8845;
            color: white;
            border-radius: 8px;
        }
    </style>
</head>
<body style="overflow: hidden;">
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-body" runat="server" id="mbody">

                    <h2 id="uptxt" runat="server">Login Successful</h2>
                    <h4 id="downtxt" runat="server">You will be redirected to your home page.</h4>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>
    <div class="card form-login" style="border: none; margin-top: 65px;">
        <form style="border: none; margin-top: -40px; overflow-y: hidden;" runat="server" method="post">
            <h4 class="display-3" style="margin-bottom: 50px"><a href="signin.html" style="text-decoration: none; color: white">Sign In</a></h4>
            <div class="form-group" style="width: 550px;">
                <input type="text" autofocus class="form-control fm " runat="server" name="" id="ma" aria-describedby="helpId" style="height: 48px;" placeholder="User Name" required>
            </div>
            <div class="form-group" style="width: 550px;">
                <input type="password" autofocus class="form-control fm " runat="server" name="" id="pa" aria-describedby="helpId" style="height: 48px;" placeholder="Password" required>
            </div>

            <asp:Button data-toggle="modal" data-target=".bs-example-modal-lg" type="submit" runat="server" class="btn-submit" ID="log" OnClick="Login" Text="NEXT" Style="text-decoration: none; color: white"></asp:Button>
        </form>
        <h4 id="accept1">Don't have an account? <a href="signup_new.html" style="text-decoration: none">Sign up</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="forgotpassword.aspx" style="text-decoration: none">Forgot Password</a></h4>
        <h4 id="accept1"></h4>
    </div>
    <div class="container-fluid" id="last-foot" style="background-image: url('../img/footback.png'); margin-top: 440px;">
    </div>
    <div class="container-fluid" id="box">
        <div>
            <ul id="box-list">
                <li class="ex display-4" style="font-size: 35px;">SEAM <span style="font-size: 20px">Inc.</span></li>
                <a href="signup_new.html" style="text-decoration: none; color: white">
                    <li class="ex1 ex ">SIGN UP TO RIDE</li>
                </a>
                <a href="signinrider.html" style="text-decoration: none; color: white">
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