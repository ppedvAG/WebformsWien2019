<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Webformajayx.aspx.cs" Inherits="WebformsWien2019.Webformajayx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

        <ContentTemplate>
            <asp:Label runat="server" Text="Label" id="Label1"></asp:Label>  
    
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" />
        </Triggers>
    </asp:UpdatePanel>
          <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
