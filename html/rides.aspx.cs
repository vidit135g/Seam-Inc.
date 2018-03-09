using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net;
using System.Text;
using System.Web.UI.WebControls;

public partial class html_rides : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            string variable = "";
            variable = Session["name"].ToString();
            dname.InnerText = "";
        }
        else
        {
            Response.Redirect("signindriver.aspx");
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        var namelist = FindCoordinates();
        Application["namelist"] = namelist;
        Application["from"] = place.Value;
        Application["date"] = dz.Value;
    }

    protected List<string> FindCoordinates()
    {
        var list = new List<string>();
        string from = place.Value;
        string to = destination.Value;
        string se = seats.Value;
        string date = dz.Value;
        string url = "http://maps.google.com/maps/api/geocode/xml?address=" + from + "&sensor=false";
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
                foreach (DataRow row in dsResult.Tables["result"].Rows)
                {
                    string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                    DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                    dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);
                    lat = location["lat"].ToString();
                    lon = location["lng"].ToString();
                    getlist na = new getlist();
                    uname = na.getName(Session["name"].ToString());
                }
                coordupload ob = new coordupload();
                bool x = ob.cUpload(uname, lat, lon, from, date);
                if (x)
                {
                    getlist ob1 = new getlist();
                    DataTable dt = ob1.GetData(from, date);

                    //Building an HTML string.
                    StringBuilder html = new StringBuilder();

                    //Table start.

                    //Building the Header row.
                    //Building the Data rows.
                    html.Append("<div class='col-md-12 col-sm-12 col-xs-12' style='text-align: center; margin-top: -70px; margin-left: 470px' id='cent'><div class='page-sub-title textcenter' style='margin-left: -900px'><h2>All rides</h2><div class='line'></div></div></div>");
                    html.Append("<p style='font-size:20px;color:black;margin-left:300px'>Details<span  style='margin-right:190px;float:right'>Date Added</span></p>");
                    foreach (DataRow row in dt.Rows)
                    {
                        html.Append("<p style='font-size:18px;margin-left:100px;'>From " + row["location"] + " to National P.G. College " + " ride by <a  onclick='modifyModal(this)'    id='drivername' style='text-decoration:none;font-weight:bold;margin-left:5px;cursor:grab'>" + row["Name"].ToString() + "</a> <span style='float:right;margin-right:200px'> " + row["date"] + "</span></p>");

                        html.Append("<br>");
                        list.Add(row["Name"].ToString());
                    }

                    //Append the HTML string to Placeholder.
                    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
                    this.PlaceHolder1.Visible = true;
                }
            }
        }
        return list;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("rides.aspx");
    }
}