using System;
using System.Web.UI.HtmlControls;

public partial class html_signup_new : System.Web.UI.Page
{
    protected HtmlInputFile ph;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Submit1_Click(object sender, EventArgs e)
    {
        signup ob = new signup();
        string u_name = uname.Value.ToString();
        string f_name = fname.Value.ToString();
        string l_name = lname.Value.ToString();
        string a = numb.Value.ToString();
        string mail = mailing.Value.ToString();
        string pass = cpwd.Value.ToString();
        string p = photo.PostedFile.FileName;
        string si = signa.PostedFile.FileName;
        string ic = icard.PostedFile.FileName;
        string x1 = u_name + "1" + p.Substring(p.LastIndexOf('.') - 1);
        string x2 = u_name + "2" + si.Substring(si.LastIndexOf('.') - 1);
        string x3 = u_name + "3" + ic.Substring(ic.LastIndexOf('.') - 1);

        bool x = ob.Register(u_name, f_name, l_name, mail, a, pass);

        if (x == true && photo.PostedFile != null && signa.PostedFile != null && icard.PostedFile != null)
        {
            photo.PostedFile.SaveAs(MapPath(@"../Temp/" + x1));
            signa.PostedFile.SaveAs(MapPath(@"../Temp/" + x2));
            icard.PostedFile.SaveAs(MapPath(@"../Temp/" + x3));
            Response.Redirect("confirmation.aspx?sentence=" + x1 + "&word=" + x2 + "&letter=" + x3 + "&name=" + u_name);
        }
        else
            boxal.Attributes.Add("display", "block");
    }
}