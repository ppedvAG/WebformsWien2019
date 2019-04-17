using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsWien2019.Models;

namespace WebformsWien2019
{
    public partial class ToDoListview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<ToDo> ToDoListview_GetData()
        {
            var liste = new List<ToDo>();

            liste.Add(new ToDo() { Id = 1, Text = "Pause machen" });
            liste.Add(new ToDo() { Id = 2, Text = "Kaffe trinken" });
            liste.Add(new ToDo() { Id = 3, Text = "bla blah" });
            liste.Add(new ToDo() { Id = 4, Text = "sdfdfgdfg" });
            liste.Add(new ToDo() { Id = 5, Text = "fgfghfghfgh" });

            return liste;
        }

        protected void ToDoListview_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
       
        }

        protected void TodoListview_ItemCommand1(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "erledigen")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                int i = 0;
                foreach (DataKey item in TodoListview.DataKeys)
                {
                    
                    if (Convert.ToInt32(item.Value) == id)
                    {
                        TodoListview.DeleteItem(i);
                    //    TodoListview.Items.RemoveAt(i);
                       
                        break;
                    }
                    i++;
                }





            }
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void TodoListview_DeleteItem(int id)
        {

        }
    }
}