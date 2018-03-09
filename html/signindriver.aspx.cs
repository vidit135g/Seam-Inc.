using System;

public partial class html_signindriver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Login(object sender, EventArgs e)
    {
        string norp = ma.Value;
        string pass = pa.Value;
        signin ob = new signin();
        string s = ob.Signin(norp, pass);
        if (s != "fail")
        {
            Session["name"] = s;
            Response.Redirect("home.aspx?name=" + s);
        }
    }
}