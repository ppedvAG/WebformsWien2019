<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChatSeite.aspx.cs" Inherits="WebformsWien2019.ChatSeite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <input id="text1" /><br />
    <input type="button" value="send" onclick="Send()" />
    <ul id="ausgabe">
        
    </ul>

    <script src="Scripts/jquery.signalR-2.4.1.js"></script>
    <script src="../Signalr/hubs"></script>

    <script>
       
            var hub = $.connection.myHub1;
            hub.client.hello = function (msg) {
                  $('#ausgabe').append("<li>"+msg+"</li>");
            } 

            $.connection.hub.start().done(function(){
                $('#ausgabe').append("<li>connected..</li>");
            })
        function Send() {
            console.log($('#text1'));
                hub.server.hello($('#text1').val());
            }
       
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
