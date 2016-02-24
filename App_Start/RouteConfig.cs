using System;
using System.Web.Routing;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HundredeDagesLogen
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "", "~/Index.aspx");
            
            routes.MapPageRoute(null, "Index", "~/Index.aspx");
            routes.MapPageRoute(null, "Index.aspx", "~/Index.aspx");            
            
            routes.MapPageRoute(null, "Whoops", "~/Whoops.aspx");
            routes.MapPageRoute(null, "Whoops.aspx", "~/Whoops.aspx");            
        }
    }
}
