using System.Data.SqlClient;

/// <summary>
/// Summary description for docssub
/// </summary>
public class docssub
{
    public docssub()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool dlActivated(string s)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO dbo.docs(valid) VALUES (@validity)", conn);
        int x = cmd.ExecuteNonQuery();
        conn.Close();
        if (x > 0)
            return true;
        else
            return false;
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
                "SELECT COUNT(*) FROM signup WHERE user_name = @uname", conn);
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

    public bool Submit(string p, string s, string ic, string nu, string n)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO dbo.docs(photo,sign,idcard,driving,name,valid) VALUES (@photo,@signa,@ica,@num,@nam,'1')", conn);

        SqlParameter param1 = new SqlParameter();
        SqlParameter param2 = new SqlParameter();
        SqlParameter param3 = new SqlParameter();
        SqlParameter param4 = new SqlParameter();
        SqlParameter param5 = new SqlParameter();
        param1.ParameterName = "@photo";
        param1.Value = n + "1";
        param2.ParameterName = "@signa";
        param2.Value = n + "2";
        param3.ParameterName = "@ica";
        param3.Value = n + "3";
        param4.ParameterName = "@num";
        param4.Value = nu;
        param5.ParameterName = "@nam";
        param5.Value = n;
        cmd.Parameters.Add(param1);
        cmd.Parameters.Add(param2);
        cmd.Parameters.Add(param3);
        cmd.Parameters.Add(param4);
        cmd.Parameters.Add(param5);
        int x = cmd.ExecuteNonQuery();
        conn.Close();
        if (x > 0)
            return true;
        else
            return false;
    }
}