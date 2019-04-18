using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace WebformsWien2019
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für thumbnail
    /// </summary>
    public class thumbnail : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            var name = context.Request.QueryString[0];
            var img = new Bitmap(Path.Combine(context.Server.MapPath("~/img/"), name, ".jpg"));
            var thumb = img.GetThumbnailImage(200, 120, null, IntPtr.Zero);
            var stream = new MemoryStream();
            thumb.Save(stream, ImageFormat.Jpeg);
            Byte[] buffer;
            buffer = stream.GetBuffer();

            context.Response.ContentType = "image/jpg";
            context.Response.OutputStream.Write(buffer, 0, buffer.Length);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}