using System;
using System.Net.Mail;

public partial class html_forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void next_Click(object sender, EventArgs e)
    {
        string s = mail.Value;
        getlist obx = new getlist();
        var x = obx.getPassword(s);
        nameExist ob = new nameExist();
        MailMessage email = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

        email.From = new MailAddress("me@mydomain.com");
        email.To.Add(s);
        email.Subject = "Account Signin Password";
        email.Body = "Hey there!" + Session["name"] + "your SignIn password is" + x;
        SmtpServer.Port = 25;
        SmtpServer.Credentials = new System.Net.NetworkCredential("me", "password");
        SmtpServer.EnableSsl = true;
    }
}