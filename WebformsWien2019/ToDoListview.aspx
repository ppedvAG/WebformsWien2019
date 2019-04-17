<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToDoListview.aspx.cs" Inherits="WebformsWien2019.ToDoListview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="row">
        <div class="col-5">
            <ul class="list-group">
               
                <asp:Listview ID="TodoListview" runat="server" DataKeyNames="Id"
                    EnableViewState="false"
                    OnItemCommand="TodoListview_ItemCommand1"
                    DeleteMethod="TodoListview_DeleteItem"
                    ItemType="WebformsWien2019.Models.ToDo" SelectMethod="TodoListView_GetData">
                    <ItemTemplate>
                          <li class="list-group-item">
                             
                              <asp:Button ID="Button1" runat="server" Text="erledigen" 
                                  CommandName="erledigen" CommandArgument="<%#Item.Id %>" />
                              <%#Item.Text%> 
                              
                          </li>
                    </ItemTemplate>
                </asp:Listview>
 
            </ul>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
