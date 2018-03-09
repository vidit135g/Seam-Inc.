using System;

public partial class html_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string variable = "";
            variable = Session["name"].ToString();
            string s1 = Request.QueryString["name"].ToString();
            if (s1.Equals(variable))
                nameuser.InnerText = s1;
        }
        else
        {
            Response.Redirect("signindriver.aspx");
        }
    }

    protected void loggedOut(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect("signindriver.aspx");
    }
}