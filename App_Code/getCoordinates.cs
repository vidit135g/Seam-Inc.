using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for getCoordinates
/// </summary>
public class getCoordinates
{
    public getCoordinates()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<string> getPoints(string date, string location, string user_name)
    {
        var x = new List<string>();
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Seam_db;Integrated Security=True");
        // 1. declare command object with parameter
        conn.Open();
        SqlCommand cmd = new SqlCommand(
            "SELECT Name,Latitude,Longitude,Date,Place) FROM dbo.coord WHERE Place=@loc AND Date=@date AND Name=@unam", conn);

        SqlParameter param1 = new SqlParameter();
        SqlParameter param2 = new SqlParameter();
        SqlParameter param3 = new SqlParameter();
        param1.ParameterName = "@loc";
        param1.Value = location;
        param2.ParameterName = "@date";
        param2.Value = date;
        param3.ParameterName = "@unam";
        param3.Value = user_name;
        cmd.Parameters.Add(param1);
        cmd.Parameters.Add(param2);
        cmd.Parameters.Add(param3);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader != null)
        {
            x.Add(reader["Name"].ToString());
            x.Add(reader["Latitude"].ToString());
            x.Add(reader["Longitude"].ToString());
            x.Add(reader["Date"].ToString());
            x.Add(reader["Place"].ToString());
        }
        if (x != null)
            return x;
        else
            return null;
    }
}