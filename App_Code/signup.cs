using System.Data.SqlClient;

/// <summary>
/// Summary description for signup
/// </summary>
public class signup
{
    public signup()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool checkExistence(string name)
    {
        int numRecords = 0;
        if (name != "")
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
            // 1. declare command object with parameter
            conn.Open();
            SqlCommand cmd = new SqlCommand(
                "SELECT COUNT(*) FROM docs WHERE name = @uname", conn);
            SqlParameter param = new SqlParameter();
            param.ParameterName = "@uname";
            param.Value = name;
            numRecords = (int)cmd.ExecuteScalar();
            conn.Close();
        }

        if (numRecords == 0)
            return true;
        else
            return false;
    }

    public bool Register(string u_name, string fname, string lname, string mail, string number, string pass)
    {
        int x = 0;

        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO dbo.signup VALUES (@uname,@fname,@lname,@mail,@numb,@pass)", conn);
        SqlParameter param1 = new SqlParameter();
        SqlParameter param2 = new SqlParameter();
        SqlParameter param3 = new SqlParameter();
        SqlParameter param4 = new SqlParameter();
        SqlParameter param5 = new SqlParameter();
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@uname";
        param.Value = u_name;
        param1.ParameterName = "@fname";
        param1.Value = fname;
        param2.ParameterName = "@lname";
        param2.Value = lname;
        param3.ParameterName = "@mail";
        param3.Value = mail;
        param4.ParameterName = "@numb";
        param4.Value = number;
        param5.ParameterName = "@pass";
        param5.Value = pass;
        cmd.Parameters.Add(param);
        cmd.Parameters.Add(param1);
        cmd.Parameters.Add(param2);
        cmd.Parameters.Add(param3);
        cmd.Parameters.Add(param4);
        cmd.Parameters.Add(param5);

        x = cmd.ExecuteNonQuery();
        conn.Close();

        if (x > 0)
            return true;
        else
            return false;
    }
}