using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsWien2019.Models;

namespace WebformsWien2019
{
    public partial class TodoListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public List<ToDo> TodoRepeater1_GetData()
        {
            var liste = new List<ToDo> ();

            liste.Add(new ToDo() { Text = "Pause machen" });
            liste.Add(new ToDo() { Text = "Kaffe trinken" });
            liste.Add(new ToDo() { Text = "bla blah" });
            liste.Add(new ToDo() { Text = "sdfdfgdfg" });
            liste.Add(new ToDo() { Text = "fgfghfghfgh" });

            return liste;
        }
    }
}