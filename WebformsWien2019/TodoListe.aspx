<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoListe.aspx.cs" Inherits="WebformsWien2019.TodoListe" %>
<%@ Import Namespace="WebformsWien2019.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-5">
            <ul class="list-group">
                
                <asp:Repeater ID="TodoRepeater1" runat="server" ItemType="WebformsWien2019.Models.ToDo" SelectMethod="TodoRepeater1_GetData">
                    <ItemTemplate>
                          <li class="list-group-item"><%#Item.Text%></li>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:DropDownList ID="DropDownList1" runat="server" SelectMethod="TodoRepeater1_GetData" DataTextField="Text" DataValueField="Id"></asp:DropDownList>

            </ul>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
