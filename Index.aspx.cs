using System;
using System.Configuration;
using System.Web;

namespace HundredeDagesLogen
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            if (!context.Request.IsSecureConnection)
            {
                UriBuilder secureUrl = new UriBuilder(context.Request.Url);
                secureUrl.Scheme = "https";
                secureUrl.Port = 443;
                context.Response.Redirect(secureUrl.ToString(), false);
            }
        }

        public string WebApiBaseUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["WebApiBaseUrl"];
            }
        }

        public string Version
        {
            get
            {
                return ConfigurationManager.AppSettings["Version"];
            }
        }
    }
}