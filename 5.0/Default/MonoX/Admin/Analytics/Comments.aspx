<%@ Page Language="C#" 
AutoEventWireup="True" CodeBehind="Comments.aspx.cs" 
Inherits="MonoSoftware.MonoX.Admin.Comments" 
MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" 
EnableTheming="true" Theme="DefaultAdmin" %>

<%@ Register Src="~/MonoX/Admin/controls/AnalyticsSubmenu.ascx" TagPrefix="mono" TagName="AnalyticsSubmenu" %>
<%@ Register Src="~/MonoX/Controls/Chart/LineChart.ascx" TagPrefix="mono" TagName="LineChart" %>
<%@ Register Src="~/MonoX/Controls/DateRangePicker.ascx" TagPrefix="mono" TagName="DateRangePicker" %>

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

                <div class="admin-row">
                    <div class="spacer-sml clearfix">
                        <div class="admin-half-width">
                            <h4 class="analytics-title"><%= AdminResources.Analytics_Comments_Title %></h4>
                            <div class="graph">
                                <mono:LineChart runat="server" ID="chart" />
		                    </div>
                        </div>

                        <div class="admin-half-width">
                            <h4 class="analytics-title"><%= AdminResources.Analytics_Comments_WallNotesTitle %></h4>
                            <div class="graph">
                                <mono:LineChart runat="server" ID="chartWallNotes"/>
		                    </div>
                        </div>
                    </div>
                </div>

                <div class="spacer-med">
                    <mono:DateRangePicker runat="server" ID="rangePicker"></mono:DateRangePicker>
                </div>

                <div class="spacer-sml">
                    <h4 class="analytics-title"><%= AdminResources.Analytics_Statistics %></h4>
                </div>

                <div class="admin-row">
                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number"><%= GetTotalCount() %></span>
                            <span class="box-data-label">total comments</span>
                        </div>
                    </div>

                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number"><%= GetTotalWallNotesCount() %></span>
                            <span class="box-data-label">total wall posts</span>
                        </div>
                    </div>
                </div>

            </div>

        </div>


    </div>
</div>

</asp:Content>
