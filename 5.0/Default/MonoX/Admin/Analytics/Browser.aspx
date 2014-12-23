<%@ Page Language="C#" 
    AutoEventWireup="True" 
    CodeBehind="Browser.aspx.cs" 
    Inherits="MonoSoftware.MonoX.Admin.Browser" 
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
                
                <div class="admin-half-width spacer-med">
                    <h4 class="analytics-title"><%= AdminResources.Analytics_Dashboard_BrowserStatistics %></h4>
                    <div class="graph">
                        <mono:PieChart runat="server" ID="chartPieBrowsers"/>
		            </div>
                </div>

                <div class="admin-half-width spacer-med">
                    <h4 class="analytics-title">OS Statistics</h4>
                    <div class="graph">
                        <mono:PieChart runat="server" ID="chartOS"/>
		            </div>
                </div>

            </div>
        </div>

    </div>
</div>

</asp:Content>
