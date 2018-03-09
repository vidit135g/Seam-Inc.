using System.Data.SqlClient;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for Verifier
/// </summary>
public class Verifier
{
    public Verifier()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Validate(string number)
    {
        Regex ob = new Regex(@"^(?[A-Z]{2})(?\d{3})(?\d{4})(?\d{7})$");
        if (ob.IsMatch(number))
            return true;
        else
            return false;
    }

    public bool Verify(string s)
    {
        string name, number;
        name = "";
        number = "";
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        conn.Open();
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("SELECT name,driving FROM dbo.docs WHERE name=@name", conn);
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@name";
        param.Value = s;
        cmd.Parameters.Add(param);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            name = reader["name"].ToString();
            number = reader["driving"].ToString();
        }
        if (number != "")
            return true;
        else
            return false;
    }

    /*public void Send_Account_Activation_Link(string name,string emailaddress, string act_code)
    {
        MailMessage mm = new MailMessage("Your EMail ID", emailaddress);
        mm.Subject = "Account Activation";
        string body = "Hello " + name + ",";
        body += "<br/><br/>Please click the following link to activate your account<br/>";
        body += "<br/><br/><a style='background:#000000; color:#fafafa; padding:10px 100px 10px 100px; width:350px; text-decoration:none; font-weight:bold; font-size:20px;' href = '" + Request.Url.AbsoluteUri.Replaceundefined"Registration.aspx", "Account_Activation.aspx?ActivationCode=" + act_code) +"'>Click here to activate your account.</a>";
        body += "<br /><br />Thanks";
        mm.Body = body;
        mm.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new System.Net.NetworkCredential("Your Email ID", "");
        smtp.EnableSsl = true;
        smtp.Send(mm);
    }*/
}