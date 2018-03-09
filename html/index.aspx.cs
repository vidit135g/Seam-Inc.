using System;

public partial class html_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["name"] = null;
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup_new.aspx?First=" + fna.Value.ToString() + "&Last=" + lna.Value.ToString() + "&Password=" + pass.Value.ToString() + "&Contact=" + contact.Value.ToString() + "&Address=" + address.Value.ToString());
    }
}