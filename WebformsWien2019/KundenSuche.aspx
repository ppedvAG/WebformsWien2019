<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KundenSuche.aspx.cs" Inherits="WebformsWien2019.KundenSuche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Suchbegriff" id="suche1" >
                <div class="input-group-append">
                    <a class="btn btn-outline-secondary" onclick="suchen();" >Suche!</a>
                </div>
            </div>
            <table class="table table-hover">
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
                            <td><a href="../Kundeedit/<%#Item.CustomerID%>" class="btn btn-primary">
                                <%#Item.CustomerID%></a></td>
                            <td><%#Item.CompanyName %></td>
                            <td>
                                <%#Item.Orders.Count() %>
                            </td>
                        </tr>


                    </ItemTemplate>

                </asp:Repeater>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
    <script>
        function suchen() {

            var s = $("#suche1").val();
            window.location.replace("http://localhost:64513/KundenSuche/" + s);
            return false;
        }
    </script>
</asp:Content>
