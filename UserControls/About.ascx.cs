using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HundredeDagesLogen.UserControls
{
    public partial class About : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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