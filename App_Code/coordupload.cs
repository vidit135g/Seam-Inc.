using System.Data.SqlClient;

/// <summary>
/// Summary description for coordupload
/// </summary>
public class coordupload
{
    public coordupload()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool cUpload(string name, string lat, string longi, string place, string curr)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO dbo.coord(Name,Latitude,Longitude,Date,Place) VALUES (@name,@latitude,@longitude,@date,@place)", conn);

        SqlParameter param1 = new SqlParameter();
        SqlParameter param2 = new SqlParameter();
        SqlParameter param3 = new SqlParameter();
        SqlParameter param4 = new SqlParameter();
        SqlParameter param5 = new SqlParameter();
        param1.ParameterName = "@name";
        param1.Value = name;
        param2.ParameterName = "@latitude";
        param2.Value = lat;
        param3.ParameterName = "@longitude";
        param3.Value = longi;
        param4.ParameterName = "@date";
        param4.Value = curr;
        param5.ParameterName = "@place";
        param5.Value = place;
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

    public bool driverRegistration(string name, string latitude, string longitude, string place, string date)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "INSERT INTO dbo.drivercoord(Name,latitude,longitude,location,date) VALUES (@name,@latitude,@longitude,@place,@date)", conn);

        SqlParameter param1 = new SqlParameter();
        SqlParameter param2 = new SqlParameter();
        SqlParameter param3 = new SqlParameter();
        SqlParameter param4 = new SqlParameter();
        SqlParameter param5 = new SqlParameter();
        param1.ParameterName = "@name";
        param1.Value = name;
        param2.ParameterName = "@latitude";
        param2.Value = latitude;
        param3.ParameterName = "@longitude";
        param3.Value = longitude;
        param4.ParameterName = "@date";
        param4.Value = date;
        param5.ParameterName = "@place";
        param5.Value = place;
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