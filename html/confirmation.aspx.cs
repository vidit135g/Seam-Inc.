using System;
using System.Text;

public partial class html_confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s1 = Request.QueryString["sentence"];
        string s2 = Request.QueryString["word"];
        string s3 = Request.QueryString["letter"];
        string s4 = Request.QueryString["name"];
        img1.Attributes["src"] = "../Temp/" + s1;
        img2.Attributes["src"] = "../Temp/" + s2;
        img3.Attributes["src"] = "../Temp/" + s3;
    }

    protected void activate_account(object sender, EventArgs e)
    {
        string s1 = Request.QueryString["sentence"];
        string s2 = Request.QueryString["word"];
        string s3 = Request.QueryString["letter"];
        string s4 = Request.QueryString["name"];
        string number = dl.Value;
        docssub ob1 = new docssub();
        bool a = ob1.Submit(s1, s2, s3, number, s4);
        Verifier ob2 = new Verifier();
        if (a)
        {
            Response.Redirect("signindriver.aspx");
        }

        /*
    string activationCode = Guid.NewGuid().ToString();
    string encry_password = Encrypt_Password(txtpassword.Text);
    cmd = new SqlCommand("insert into Registration values('" + txtusername.Text.ToLower() + "','" + encry_password + "','" + txtemailid.Text + "','" + activationCode + "','inactive')");
    cmd.Connection = con;
    con.Open();
    cmd.ExecuteNonQuery();
    Send_Account_Activation_Link(txtemailid.Text, activationCode);
    con.Close();
    Session["user"] = txtusername.Text;
    Response.Redirect("Account_Activation.aspx");
         */
    }

    protected void verification(object sender, EventArgs e)
    {
    }

    private string Encrypt_Password(string password)
    {
        string pwdstring = string.Empty;
        byte[] pwd_encode = new byte[password.Length];
        pwd_encode = Encoding.UTF8.GetBytes(password);
        pwdstring = Convert.ToBase64String(pwd_encode);
        return pwdstring;
    }
}