<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup_new.aspx.cs" Inherits="html_signup_new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="../css/signup_new.css" />
    <style>
        input[type="file"] {
            display: none;
        }

        .custom-file-upload {
            border: 1px solid lightgray;
            background-color: white;
            display: block;
            width: 500px;
            color: gray;
            padding: 14px 12px;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous" />
</head>
<body>
    <div class="container-fluid" id="signhead">
    </div>
    <div class="sign-box">
        <h4 id="pa1"><a href="default.html" style="text-decoration: none; color: white">SEAM</a></h4>
    </div>
    <div class="card form-login" style="border: none;" id="carde">
        <div class="card-block">
            <div>
                <table>
                    <tr>

                        <td style="padding-left: 120px">
                            <table>
                                <tr>
                                    <td>
                                        <h4 style="font-size: 32px; font-weight: lighter;"><span class="label label-default display-6">Sign Up to Ride</span></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table style="margin-top: 5px">
                    <tr>
                        <td style="padding-left: 70px">
                            <h4 style="font-size: 26px; font-weight: lighter;"><span class="label label-default display-6">Safe, reliable rides in minutes</span></h4>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <form style="height: 100%;" runat="server" method="post" id="fm">
            <div class="alert alert-danger" runat="server" id="boxal" style="width: 500px; text-align: center; display: none;">
                <strong>Error! UserName already exists.</strong>
            </div>
            <div class="form-group name" style="width: 160px;">
                <input type="text" runat="server" class="form-control fm" name="" id="uname" aria-describedby="helpId" placeholder="User Name" data-toggle="tooltip" title="This has to be unique!" required>
            </div>
            <div class="form-group name" style="width: 162px; margin-left: 5px">
                <input type="text" runat="server" class="form-control fm" name="" id="fname" aria-describedby="helpId" placeholder="First Name" required />
            </div>
            <div class="form-group name" style="width: 167px; margin-left: 5px">
                <input type="text" runat="server" class="form-control fm" name="" id="lname" aria-describedby="helpId" placeholder="Last Name" required>
            </div>

            <div class="form-group" style="width: 500px">
                <input type="text" runat="server" class="form-control fm" name="" id="numb" aria-describedby="emailHelpId" placeholder="Number" required>
            </div>
            <div class="form-group" style="margin-top: 5px; width: 500px">
                <input type="email" runat="server" class="form-control fm" name="" id="mailing" aria-describedby="helpId" placeholder="Email" required>
            </div>
            <div class="form-group" style="margin-top: 5px; width: 500px">
                <input type="password" runat="server" class="form-control fm" name="" id="cpwd" maxlength="15" placeholder="Create Password" required>
            </div>

            <label class="custom-file-upload form-group">
                <input type="file" accept="image/*" id="photo" runat="server" required />
                Image Upload
            </label>
            <label class="custom-file-upload form-group">
                <input type="file" accept="image/*" id="signa" runat="server" required />
                Signature Upload
            </label>
            <label class="custom-file-upload form-group">
                <input type="file" accept="image/*" id="icard" runat="server" required />
                College ID Upload
            </label>

            <asp:Button type="submit" runat="server" class="btn-submit" ID="Submit1" Style="margin-top: 5px" Text="SIGN UP" OnClick="Submit1_Click"></asp:Button>
        </form>

        <p id="accept2">By clicking "Sign Up", you agree to Seam's Terms and Conditions and Privacy Policy.</p>
    </div>
    <div class="container-fluid" id="last-foot" style="margin-top: 825px;">
    </div>
    <div class="container-fluid" id="box">
        <div>
            <ul id="box-list">
                <li class="ex display-4" style="font-size: 35px;">SEAM <span style="font-size: 20px">Inc.</span></li>
                <li class="ex1 ex ">SIGN UP TO RIDE</li>
                <li class="ex1 ex ">BECOME A DRIVER</li>
            </ul>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>