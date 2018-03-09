using Subgurim.Controles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class html_ViewMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*GMarker marker;
        GInfoWindow window;
        var namelist = (List<string>)Application["namelist"];
        int c = namelist.Count;
        var from = Application["from"].ToString();
        var date = Application["date"].ToString();
        string skey = "Your API key";
        GMap1.Key = skey;
        GMap1.Add(new GControl(GControl.preBuilt.GOverviewMapControl));
        GMap1.Add(new GControl(GControl.preBuilt.LargeMapControl));
        foreach (var item in namelist)
        {
            getCoordinates ob = new getCoordinates();
            var x = ob.getPoints(date, from, item);
            //creating marker with latitude and logitude
            marker = new GMarker(new GLatLng(Double.Parse(x[1]), Double.Parse(x[2])));
            //creating pushpin window with content
            window = new GInfoWindow(marker, "<center><b>" + x[4] + "India</b></center>", true);
            GMap1.Add(marker);
            GMap1.Add(window);*/
    }
}