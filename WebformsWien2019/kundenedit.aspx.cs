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
    public partial class kundenedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public WebformsWien2019.Models.Customers FormView1Kunde_GetItem([FriendlyUrlSegments(0)] string id)
        {
            var db = new Model1();

            return db.Customers.Find(id);
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1Kunde_UpdateItem(string CustomerID)
        {
            WebformsWien2019.Models.Customers item = null;
            var dl = new Model1();
           item = dl.Customers.Find(CustomerID);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", 
                    CustomerID));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
               dl.SaveChanges();

            }
        }
    }
}