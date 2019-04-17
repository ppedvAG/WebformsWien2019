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

            liste.Add(new ToDo() {Id=1, Text = "Pause machen" });
            liste.Add(new ToDo() {Id=2, Text = "Kaffe trinken" });
            liste.Add(new ToDo() {Id=3, Text = "bla blah" });
            liste.Add(new ToDo() {Id=4, Text = "sdfdfgdfg" });
            liste.Add(new ToDo() {Id=5, Text = "fgfghfghfgh" });

            return liste;
        }

        protected void TodoRepeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="erledigen")
            {

            }
        }
    }
}