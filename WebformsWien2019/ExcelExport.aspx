<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExcelExport.aspx.cs" Inherits="WebformsWien2019.ExcelExport" %>

<table>
    <asp:repeater id="KundenRepeater1" runat="server"
        selectmethod="KundenRepeater1_GetData"
        itemtype="WebformsWien2019.Models.Customers">
                    <ItemTemplate>
                        <tr>
                            <td><%#Item.CustomerID%></td>
                            <td><%#Item.CompanyName %></td>
                            <td>
                                <%#Item.Orders.Count() %>
                              </td>
                            </tr>
                     

                    </ItemTemplate>

                </asp:repeater>
</table>
