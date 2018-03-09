using System.Data.SqlClient;

/// <summary>
/// Summary description for signin
/// </summary>
public class signin
{
    public signin()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string Signin(string username, string pass)
    {
        string name = "";
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        conn.Open();
        SqlDataReader reader;
        SqlCommand cmd = new SqlCommand("SELECT user_name FROM signup WHERE user_name=@mobile AND password=@pass", conn);
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@mobile";
        param.Value = username;
        SqlParameter param1 = new SqlParameter();
        param1.ParameterName = "@pass";
        param1.Value = pass;
        cmd.Parameters.Add(param);
        cmd.Parameters.Add(param1);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            name = reader["user_name"].ToString();
        }
        conn.Close();
        if (name != "")
            return name;
        else
            return "fail";
    }
}