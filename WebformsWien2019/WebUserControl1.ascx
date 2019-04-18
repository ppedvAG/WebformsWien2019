<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebformsWien2019.WebUserControl1" %>
<%@ OutputCache Duration="60" VaryByParam="none" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Button" />
<%=DateTime.Now.ToLongTimeString()%>