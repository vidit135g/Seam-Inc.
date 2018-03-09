using System;
using System.Net.Mail;

public partial class html_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["name"];
        Response.Write("<script>alert('" + name + "')</script>");
        getlist xo = new getlist();
        string n = xo.getName(name);
        nameExist ob = new nameExist();
        var x = ob.getdocs(n);
        var l = ob.getInitials(n);
        //var lo = ob.getLocation(n);
        if (x != null && Session["name"] != null)
        {
            proimage.Src = "../Temp/" + x;
            dname.InnerText = l[0];
            mail.InnerText = l[1];
            cnum.InnerText = l[2];
        }
    }

    protected void fillDetails(object sender, EventArgs e)
    {
        nameExist ob = new nameExist();
        var lo = ob.getLocation(Session["name"].ToString());
        var x = ob.getInitials(Session["name"].ToString());
        string mailid = mail.InnerText;
        MailMessage email = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

        email.From = new MailAddress("me@mydomain.com");
        email.To.Add("u@urdomain.com");
        email.Subject = "Ride Request";
        email.Body = "Hey there!" + Session["name"] + " wants a ride & wants to join you via SEAM." + "<br>Email: " + x[1] + "<br>Number: " + x[2] + "<br>Location: " + lo;
        SmtpServer.Port = 25;
        SmtpServer.Credentials = new System.Net.NetworkCredential("me", "password");
        SmtpServer.EnableSsl = true;

        SmtpServer.Send(email);
    }
}