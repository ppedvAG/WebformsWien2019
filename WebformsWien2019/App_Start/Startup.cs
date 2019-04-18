using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(WebformsWien2019.App_Start.Startup))]

namespace WebformsWien2019.App_Start
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Weitere Informationen zum Konfigurieren Ihrer Anwendung finden Sie unter https://go.microsoft.com/fwlink/?LinkID=316888.
            app.MapSignalR();
        }
    }
}
