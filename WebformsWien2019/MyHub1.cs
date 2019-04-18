using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace WebformsWien2019
{
    public class MyHub1 : Hub
    {
        public void Hello(string msg)
        {
            Clients.All.hello(msg);
           
        }
    }
}