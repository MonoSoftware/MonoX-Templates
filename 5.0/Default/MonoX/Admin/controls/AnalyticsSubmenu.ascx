<%@ Control Language="C#" AutoEventWireup="true" 
    CodeBehind="AnalyticsSubmenu.ascx.cs" 
    Inherits="MonoSoftware.MonoX.Admin.controls.AnalyticsSubmenu" %>

<%@ Import Namespace="MonoSoftware.MonoX" %>
<%@ Import Namespace="MonoSoftware.MonoX.Utilities" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<ul class="analytics-submenu">    
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Dashboard_aspx)) %>" class="item analytics-icon analytics-icon-1 <% if (IsActive(Paths.MonoX.Admin.Analytics.Dashboard_aspx)) { %> active <% } %>" title="Dashboard"><%= AdminResources.Analytics_Menu_Dashboard %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Users_aspx)) %>" class="item analytics-icon analytics-icon-2 <% if (IsActive(Paths.MonoX.Admin.Analytics.Users_aspx)) { %> active <% } %>" title="Users"><%= AdminResources.Analytics_Menu_Users %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Posts_aspx)) %>" class="item analytics-icon analytics-icon-3 <% if (IsActive(Paths.MonoX.Admin.Analytics.Posts_aspx)) { %> active <% } %>" title="Posts"><%= AdminResources.Analytics_Menu_Posts %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Comments_aspx)) %>" class="item analytics-icon analytics-icon-4 <% if (IsActive(Paths.MonoX.Admin.Analytics.Comments_aspx)) { %> active <% } %>" title="Comments"><%= AdminResources.Analytics_Menu_Comments %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.BlogPosts_aspx)) %>" class="item analytics-icon analytics-icon-5 <% if (IsActive(Paths.MonoX.Admin.Analytics.BlogPosts_aspx)) { %> active <% } %>" title="Blog Posts"><%= AdminResources.Analytics_Menu_BlogPosts %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Groups_aspx)) %>" class="item analytics-icon analytics-icon-6 <% if (IsActive(Paths.MonoX.Admin.Analytics.Groups_aspx)) { %> active <% } %>" title="Groups"><%= AdminResources.Analytics_Menu_Groups %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Events_aspx)) %>" class="item analytics-icon analytics-icon-7 <% if (IsActive(Paths.MonoX.Admin.Analytics.Events_aspx)) { %> active <% } %>" title="Events"><%= AdminResources.Analytics_Menu_Events %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Photos_aspx)) %>" class="item analytics-icon analytics-icon-8 <% if (IsActive(Paths.MonoX.Admin.Analytics.Photos_aspx)) { %> active <% } %>" title="Photos"><%= AdminResources.Analytics_Menu_Photos %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Albums_aspx)) %>" class="item analytics-icon analytics-icon-9 <% if (IsActive(Paths.MonoX.Admin.Analytics.Albums_aspx)) { %> active <% } %>" title="Albums"><%= AdminResources.Analytics_Menu_Albums %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Messages_aspx)) %>" class="item analytics-icon analytics-icon-10 <% if (IsActive(Paths.MonoX.Admin.Analytics.Messages_aspx)) { %> active <% } %>" title="Messages"><%= AdminResources.Analytics_Menu_Messages %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.News_aspx)) %>" class="item analytics-icon analytics-icon-11 <% if (IsActive(Paths.MonoX.Admin.Analytics.News_aspx)) { %> active <% } %>" title="News"><%= AdminResources.Analytics_Menu_News %></a></li>
    <li><a href="<%= ResolveUrl(LocalizationUtility.RewriteLink(Paths.MonoX.Admin.Analytics.Purge_aspx)) %>" class="item analytics-icon analytics-icon-12 <% if (IsActive(Paths.MonoX.Admin.Analytics.Purge_aspx)) { %> active <% } %>" title="Purge"><%= AdminResources.Analytics_Menu_Purge %></a></li>
</ul>