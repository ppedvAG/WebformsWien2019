using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsWien2019.Models;

namespace WebformsWien2019
{
    public partial class Eftest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ef = new Model1();
            var anzahl=ef.Customers.First().Orders.Count();


        }
    }
}