<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kunden.aspx.cs" Inherits="WebformsWien2019.kunden" %>

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
                            <td><a href="#Order<%#Item.CustomerID %>" class="btn btn-outline-primary"
                                data-toggle="collapse"
                                >
                                <%#Item.Orders.Count() %>
                                </a></td>
                            </tr>
                        <tr id="Order<%#Item.CustomerID %>" class="collapse">
                            <td colspan="3">
                                <ul class="list-group">
                                    <asp:Repeater ID="OrdersRepeater"
                                        ItemType="WebformsWien2019.Models.Orders"
                                        DataSource="<%#Item.Orders %>"
                                        runat="server">
                                        <ItemTemplate>
                                            <li class="list-group-item">
                                                <%#Item.OrderDate %> <%#Item.Order_Details.First().Products.ProductName %>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </td>
                        </tr>

                    </ItemTemplate>

                </asp:Repeater>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
