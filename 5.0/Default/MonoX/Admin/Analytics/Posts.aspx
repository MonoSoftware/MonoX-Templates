<%@ Page Language="C#" 
AutoEventWireup="True" CodeBehind="Posts.aspx.cs" 
Inherits="MonoSoftware.MonoX.Admin.Posts" 
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
                            <h4 class="analytics-title">
                                <%= AdminResources.Analytics_Posts_TopicsTitle %></h4>
                            <div class="graph">
                                <mono:linechart runat="server" id="chartTopics" />
                            </div>
                        </div>
                        <div class="admin-half-width">
                            <h4 class="analytics-title">
                                <%= AdminResources.Analytics_Posts_MessagesTitle %></h4>
                            <div class="graph">
                                <mono:linechart runat="server" id="chartMessages" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="spacer-med">
                    <mono:daterangepicker runat="server" id="rangePicker"></mono:daterangepicker>
                </div>
                <div class="spacer-sml">
                    <h4 class="analytics-title">
                        <%= AdminResources.Analytics_StatisticsDiscussion %></h4>
                </div>
                <div class="admin-row">
                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number">
                                <%= GetTotalCount() %></span> <span class="box-data-label">
                                    <%= AdminResources.Analytics_Posts_BoardsTotal %></span>
                        </div>
                    </div>
                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number">
                                <%= GetDiscussionTopicsTotal() %></span> <span class="box-data-label">
                                    <%= AdminResources.Analytics_Posts_TopicsTotal %></span>
                        </div>
                    </div>
                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number">
                                <%= GetDiscussionMessagesTotal() %></span> <span class="box-data-label">
                                    <%= AdminResources.Analytics_Posts_PostsTotal %></span>
                        </div>
                    </div>
                    <div class="admin-quarter-width spacer-med">
                        <div class="box-data-display">
                            <span class="box-data-number">
                                <%= GetDiscussionBoardsCreatedThisMonth() %></span> <span class="box-data-label">
                                    <%= AdminResources.Analytics_Posts_NewBoards %></span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>

</asp:Content>
