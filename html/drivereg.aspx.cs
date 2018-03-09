using System;
using System.Data;
using System.IO;
using System.Net;
using System.Text;

public partial class html_drivereg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* if (Session["name"] != null)
         {
             string variable = "";
             variable = Session["name"].ToString();
         }
         else
         {
             Response.Redirect("signindriver.aspx");
         }*/
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("ViewMap.aspx");
    }

    protected void FindCoordinates()
    {
        string fr = place.Value;
        string dest = destination.Value;
        string se = seats.Value;
        string dt = dz.Value;
        string url = "http://maps.google.com/maps/api/geocode/xml?address=" + fr + "&sensor=false";
        WebRequest request = WebRequest.Create(url);
        using (WebResponse response = (HttpWebResponse)request.GetResponse())
        {
            using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
            {
                string uname;
                string lat;
                string lon;
                DataSet dsResult = new DataSet();
                dsResult.ReadXml(reader);
                DataTable dtCoordinates = new DataTable();
                dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Address", typeof(string)),
                        new DataColumn("Latitude",typeof(string)),
                        new DataColumn("Longitude",typeof(string)) });
                uname = "";
                lat = "";
                lon = "";
                getlist na = new getlist();

                foreach (DataRow row in dsResult.Tables["result"].Rows)
                {
                    string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                    DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                    dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);
                    lat = location["lat"].ToString();
                    lon = location["lng"].ToString();
                    uname = Session["name"].ToString();
                }
                coordupload ob = new coordupload();
                bool x = ob.driverRegistration(uname, lat, lon, fr, dt);
                if (x)
                    Response.Write("<script>alert('Data saved successfully')</script>");
                else
                    Response.Write("<script>alert('Failed to save the data.')</script>");
            }
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        FindCoordinates();
    }
}