using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace website
{
    public partial class Harita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
    {
        
        GLatLng mainLocation = new GLatLng(38.720489, -35.482597);
        GMap1.setCenter(mainLocation, 1);

        XPinLetter xpinLetter = new XPinLetter(PinShapes.pin_star, "H", Color.Blue, Color.White, Color.Chocolate);
        GMap1.Add(new GMarker(mainLocation, new GMarkerOptions(new GIcon(xpinLetter.ToString(), xpinLetter.Shadow()))));

        List<kullaniciBilgileri> hotels = new List<kullaniciBilgileri>();
        using (UyeBilgileriEntities5 dc = new UyeBilgileriEntities5())
        {
            hotels = dc.kullaniciBilgileri.Where(a => a.KullaniciAdres.Equals("Kayseri")).ToList();
        }

        PinIcon p;
        GMarker gm;
        GInfoWindow win;
        foreach (var i in hotels)
        {
            p = new PinIcon(PinIcons.home, Color.Cyan);
            gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)),
                             new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));

            win = new GInfoWindow(gm, i.KullaniciAdi + " <a href='"+i.ReadMoreUrl+"'>Read more...</a>", false, GListener.Event.mouseover);
            GMap1.Add(win);
        }
       /* gm = new GMarker(new GLatLng(Convert.ToDouble(i.LocLat), Convert.ToDouble(i.LocLong)),
                             new GMarkerOptions(new GIcon(p.ToString(), p.Shadow())));*/
          
            }
        }
    }
}