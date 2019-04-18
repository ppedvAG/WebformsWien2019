using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsWien2019
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public string ButtonText { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Text = ButtonText;
        }
    }
}