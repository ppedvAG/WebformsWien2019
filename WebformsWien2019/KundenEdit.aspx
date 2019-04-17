<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kundenedit.aspx.cs" Inherits="WebformsWien2019.kundenedit" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">
            <h1>Kunde editieren</h1>
            <asp:FormView ID="FormView1Kunde" runat="server" DefaultMode="Edit" RenderOuterTable="false"
                ItemType="WebformsWien2019.Models.Customers"
                SelectMethod="FormView1Kunde_GetItem"
                UpdateMethod="FormView1Kunde_UpdateItem"
                DataKeyNames="CustomerID">
                <EmptyDataTemplate>
                    not found!
                </EmptyDataTemplate>
                <EditItemTemplate>
                    <div class="form-group row">
                        <label class="col-4 col-form-label" for="text1">Company Name</label>
                        <div class="col-8">
                            
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
                                Text="<%#BindItem.CompanyName %>"
                                ></asp:TextBox>
                                     </div>
                    </div>
                   <div class="form-group row">
                        <label class="col-4 col-form-label" for="text1">Contact Name</label>
                        <div class="col-8">
                            
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                Text="<%#BindItem.ContactName %>"
                                ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-4 col-form-label" for="text1">Adresse</label>
                        <div class="col-8">
                            
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" 
                                Text="<%#BindItem.Address %>"
                                ></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-4 col-8">
                            <button name="submit" class="btn btn-primary" type="submit">Submit</button>
                            <asp:Button ID="Button1" class="btn btn-primary"  runat="server" Text="Save" 
                                CommandName="Update" />
                        </div>
                    </div>
                    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" 
       ForeColor="Red" HeaderText="Please check the following errors:"/>
                </EditItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SchlussHTML" runat="server">
</asp:Content>
