<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjaxZeit.aspx.cs" Inherits="WebformsWien2019.AjaxZeit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <input id="Button1" type="button" value="button" onclick="refreshme()" />
    <div id="zeitdiv"></div>
    <script>
        function refreshme() {
            $.ajax({
                url: "zeit",
                success: function (result) {
                    $('#zeitdiv').text(result);
                }
            })
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
