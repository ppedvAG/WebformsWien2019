<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormCache.aspx.cs" Inherits="WebformsWien2019.WebFormCache" %>
<%@ OutputCache Duration="10" VaryByParam="none" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%=DateTime.Now.ToLongTimeString()%>
    <hr />
    <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
