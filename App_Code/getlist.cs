using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for getlist
/// </summary>
public class getlist
{
    public getlist()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string getName(string s)
    {
        string name = "";
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT first_name FROM signup WHERE user_name = @loca", con);
        con.Open();
        DataTable dt = new DataTable();
        SqlParameter param = new SqlParameter();
        SqlParameter datedef = new SqlParameter();
        param.ParameterName = "@loca";
        param.Value = s;
        cmd.Parameters.Add(param);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            name = reader["first_name"].ToString();
        }
        return name;
    }

    public string getPassword(string s)
    {
        string name = "";
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT password FROM signup WHERE password = @loca", con);
        con.Open();
        DataTable dt = new DataTable();
        SqlParameter param = new SqlParameter();
        SqlParameter datedef = new SqlParameter();
        param.ParameterName = "@loca";
        param.Value = s;
        cmd.Parameters.Add(param);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            name = reader["password"].ToString();
        }
        return name;
    }

    public string getUserName(string s)
    {
        string name = "";
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT user_name FROM signup WHERE first_name = @loca", con);
        con.Open();
        DataTable dt = new DataTable();
        SqlParameter param = new SqlParameter();
        SqlParameter datedef = new SqlParameter();
        param.ParameterName = "@loca";
        param.Value = s;
        cmd.Parameters.Add(param);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            name = reader["user_name"].ToString();
        }
        return name;
    }

    public DataTable GetData(string loc, string date)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT Name,latitude,longitude,location,date FROM drivercoord WHERE location = @loca AND date = @dat", con);
        con.Open();
        DataTable dt = new DataTable();
        SqlParameter param = new SqlParameter();
        SqlParameter datedef = new SqlParameter();
        param.ParameterName = "@loca";
        param.Value = loc;
        datedef.ParameterName = "@dat";
        datedef.Value = date;
        cmd.Parameters.Add(param);
        cmd.Parameters.Add(datedef);
        SqlDataReader reader = cmd.ExecuteReader();
        dt.Load(reader);
        con.Close();
        return dt;
    }
}