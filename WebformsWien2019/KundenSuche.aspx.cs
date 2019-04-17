using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsWien2019.Models;

namespace WebformsWien2019
{
    public partial class KundenSuche : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IEnumerable<WebformsWien2019.Models.Customers> KundenRepeater1_GetData(
            [FriendlyUrlSegments(0)] string search)
        {
            var ef = new Model1();
            return ef.Customers.Where(x=>x.CompanyName.Contains(search)).ToList();
        }
    }
}