<%@ Page Language="C#" 
    AutoEventWireup="True" 
    CodeBehind="Purge.aspx.cs" 
    Inherits="MonoSoftware.MonoX.Admin.Purge" 
    MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" 
    EnableTheming="true" 
    Theme="DefaultAdmin" %>

<%@ Register Src="~/MonoX/Admin/controls/AnalyticsSubmenu.ascx" TagPrefix="mono" TagName="AnalyticsSubmenu" %>
<%@ Register Src="~/MonoX/Controls/Chart/LineChart.ascx" TagPrefix="mono" TagName="LineChart" %>
<%@ Register Src="~/MonoX/Controls/Chart/PieChart.ascx" TagPrefix="mono" TagName="PieChart" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>    

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp" Runat="Server">

<div class="AdminContainer">
    <div class="administration-page">

        <div class="admin-row">
            <div class="admin-nav">
                <mono:AnalyticsSubmenu runat="server" ID="submenu" />
            </div>
            
            <div class="admin-content">
                <p><%= AdminResources.Analytics_Purge_DeleteLabel %></p>
                <asp:DropDownList ID="ddlDeletePeriod" runat="server" />
                <p><%= AdminResources.Analytics_Purge_Months %></p>
                <asp:Button ID="btnDeleteOlderThan" runat="server" Text="<%$Code: AdminResources.Analytics_Purge_Delete %>" />
                <asp:Button ID="btnDeleteAll" runat="server" Text="<%$Code: AdminResources.Analytics_Purge_DeleteAll %>" />
                <asp:Label runat="server" ID="lblMessage" ForeColor="Green"></asp:Label>
            </div>
        </div>


    </div>
</div>

</asp:Content>
