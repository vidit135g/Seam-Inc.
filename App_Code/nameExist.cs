using System.Collections.Generic;
using System.Data.SqlClient;

/// <summary>
/// Summary description for nameExist
/// </summary>
public class nameExist
{
    public nameExist()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string getdocs(string name)
    {
        var list = new List<string>();
        string photo = "";
        string sign = "";
        string icard = "";
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        conn.Open();
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("SELECT photo,sign,idcard FROM dbo.docs WHERE name=@nam", conn);
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@nam";
        param.Value = name;
        cmd.Parameters.Add(param);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            photo = reader["photo"].ToString();
        }
        if (photo != "")
            return photo;
        else
            return "not found";
    }

    public List<string> getInitials(string name)
    {
        var list = new List<string>();
        string email = "";
        string number = "";
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        conn.Open();
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("SELECT first_name,email,number FROM dbo.signup WHERE first_name=@nam", conn);
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@nam";
        param.Value = name;
        cmd.Parameters.Add(param);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            email = reader["email"].ToString();
            number = reader["number"].ToString();
        }
        list.Add(name);
        list.Add(email);
        list.Add(number);
        conn.Close();
        if (list.Count != 0)
            return list;
        else
            return null;
    }

    public string getLocation(string n)
    {
        string loc = "";
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand(
            "SELECT location FROM dbo.drivercoord WHERE Name=@nam", conn);
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@nam";
        param.Value = n;
        cmd.Parameters.Add(param);
        reader = cmd.ExecuteReader();
        loc = reader["location"].ToString();
        return loc;
    }
}