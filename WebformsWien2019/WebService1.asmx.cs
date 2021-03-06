﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using WebformsWien2019.Models;

namespace WebformsWien2019
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ScriptService] //nötig für JSON response
    [System.ComponentModel.ToolboxItem(false)]
    // Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public List<Customers> Kunden(int page)
        {
            var db = new Model1();
            db.Configuration.LazyLoadingEnabled = false;
            db.Configuration.ProxyCreationEnabled = false;
            //var cust = db.Customers.ToList().Skip(page).Take(10).ToList();
            //var q = from c in cust
            //        select new Customers
            //        {
            //            CustomerID = c.CustomerID,
            //            City = c.City,
            //            ContactName = c.ContactName,
            //            CompanyName = c.CompanyName
            //        };

            return db.Customers.OrderBy(x=>x.CustomerID).Skip(page).Take(10).ToList();

        }

    }
}
