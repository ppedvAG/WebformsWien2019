﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kunden.aspx.cs" Inherits="WebformsWien2019.kunden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div class="row">
        <div class="col">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Anzahl</th>
                    </tr>
                </thead>
                <asp:Repeater ID="KundenRepeater1" runat="server"
                    SelectMethod="KundenRepeater1_GetData"
                    
                    ItemType="WebformsWien2019.Models.Customers">
                    <ItemTemplate>
                        <tr>
                            <td><%#Item.CustomerID%></td>
                            <td><%#Item.CompanyName %></td>
                            <td><%#Item.Orders.Count() %></td>
                        </tr>

                    </ItemTemplate>

                </asp:Repeater>
            </table>
            </div>
           </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
