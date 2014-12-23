<%@ Import Namespace="MonoSoftware.MonoX.Utilities" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Page Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.Admin_Default"
    EnableTheming="true" Theme="DefaultAdmin" CodeBehind="Default.aspx.cs" %>

<%@ Register Src="~/MonoX/Admin/controls/AdminHeader.ascx" TagPrefix="mono" TagName="AdminHeader" %>
<%@ Register Src="~/MonoX/Admin/controls/AdminFooter.ascx" TagPrefix="mono" TagName="AdminFooter" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="radW" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MonoX Administration</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:ScriptManager ID="AjaxScriptManager" EnablePageMethods="True" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/App_Themes/DefaultAdmin/javascripts/custom.modernizr.js" />
            <asp:ScriptReference Path="~/App_Themes/DefaultAdmin/javascripts/foundation.js" />
            <asp:ScriptReference Path="~/App_Themes/DefaultAdmin/javascripts/foundation.topbar.js" />
        </Scripts>
    </asp:ScriptManager>
    
    <div class="masterDiv">
        <radW:RadWindowManager ID="rwmSingleton" runat="server" Skin="MetroTouch" ReloadOnShow="true">
        </radW:RadWindowManager>
        <mono:AdminHeader ID="adminHeader" runat="server" />
        <div class="container">
            <div class="contentt">
                
                <!-- boxes_start -->
                <div class="boxes">
                    <asp:Panel runat="server" ID="pnlFiles" CssClass="box_files">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-folder" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdmin_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkFiles %>' ID="lnkFiles"></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdmin_aspx) %>' ID="lnkFiles2"><%= AdminResources.Default_Files %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlPages" CssClass="box_pages">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-file" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PageAdmin_aspx) %>' ID="lnkPages" Text='<%$ Code: AdminResources.Default_lnkPages %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PageAdmin_aspx) %>' ID="lnkPages2"><%= AdminResources.Default_Pages %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlUsers" CssClass="box_users">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-user" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.UserManager_aspx) %>' ID="lnkUsers" Text='<%$ Code: AdminResources.Default_lnkUsers %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.UserManager_aspx) %>' ID="lnkUsers2"><%= AdminResources.Default_Users %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlRoles" CssClass="box_roles">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-ribbon" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.RoleManager_aspx) %>' ID="lnkRoles" Text='<%$ Code: AdminResources.Default_lnkRoles %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.RoleManager_aspx) %>' ID="lnkRoles2"><%= AdminResources.Default_Roles %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlNews" CssClass="box_news">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-news" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsManager_aspx) %>' ID="lnkNews" Text='<%$ Code: AdminResources.Default_lnkNews %>'></asp:HyperLink></h3>
                            <p>
                                <asp:Label runat="server" ID="lblNewsIntro" Text='<%$ Code: AdminResources.Default_lblNewsIntro %>'></asp:Label>

                                <asp:HyperLink ID="lnkNewsQuickPost" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsQuickPost_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkNewsQuickPost %>'></asp:HyperLink>

                                <asp:HyperLink runat="server" ID="lnkNewsCategoryAdmin" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsCategoryManager_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkNewsCategoryAdmin %>'></asp:HyperLink>
                                <asp:HyperLink runat="server" ID="lnkNewsAdmin" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsManager_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkNewsAdmin %>'></asp:HyperLink>
                                <asp:HyperLink runat="server" ID="lnkNewsPublisherAdmin" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsPublisherManager_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkNewsPublisherAdmin %>'></asp:HyperLink>
                            </p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlAds" CssClass="box_add_managment">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-pricetag" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx) %>' ID="lnkAds" Text='<%$ Code: AdminResources.Default_lnkAds %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx) %>' ID="lnkAds2"><%= AdminResources.Default_Ads %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlPolls" CssClass="box_pools">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-graph" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx) %>' ID="lnkPolls" Text='<%$ Code: AdminResources.Default_lnkPolls %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx) %>' ID="lnkPolls2"><%= AdminResources.Default_Polls %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlLists" CssClass="box_lists">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-list" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx) %>' ID="lnkLists" Text='<%$ Code: AdminResources.Default_lnkLists %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx) %>' ID="lnkLists22"><%= AdminResources.Default_Lists %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlNewsletters" CssClass="box_newsletter">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-plane" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx) %>' ID="lnkNewsletters" Text='<%$ Code: AdminResources.Default_lnkNewsletters %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx) %>' ID="lnkNewsletters2"><%= AdminResources.Default_Newsletters %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlBlog" CssClass="box_blog">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-pencil" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx) %>' ID="lnkBlog" Text='<%$ Code: AdminResources.Default_lnkBlog %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx) %>' ID="lnlBlog2"><%= AdminResources.Default_Blog %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlAmazon" CssClass="box_cloud">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-cloud" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAmazonS3_aspx) %>' ID="lnkAmazon" Text='<%$ Code: AdminResources.Default_lnkAmazon %>'></asp:HyperLink></h3>
                            <p>
                                <asp:HyperLink runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAmazonS3_aspx) %>' ID="lnkAmazon2"><%= AdminResources.Default_Amazon %></asp:HyperLink></p>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="pnlGroups" CssClass="box_groups">
                        <div class="inner">
                            <h3>
                                <asp:HyperLink CssClass="icon-shield" ID="lnkGroups" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkGroups %></asp:HyperLink>
                            </h3>
                            <p>
                                <asp:HyperLink ID="lnkGroupCat" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupCategoryManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupCategoryManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroupCat %></asp:HyperLink>    
  
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroups %></asp:HyperLink>

                                <asp:HyperLink ID="lnkGroupMembers" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupMembershipManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupMembershipManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroupMembers %></asp:HyperLink>
                            </p>
                        </div>
                    </asp:Panel>
                    <asp:PlaceHolder ID="plhCustom" runat="server"></asp:PlaceHolder>
                </div>
                <div class="special-links">
                    <div class="doc-section-holder">
                        <div class="inner-section">
                            <div class="title-holder">
                                <h4><%= AdminResources.Default_labDocumentation %></h4>
                            </div>
                            <div class="doc-link-holder">
                                <a class="icon-book" href="http://www.mono-software.com/Downloads/#MonoX" class="regular-button"><%= AdminResources.Default_lnkMonoXDocumentation %></a>
                            </div>
                            <div class="doc-link-holder">
                                <a class="icon-med" href="http://www.mono-software.com/Downloads/#MonoX" class="regular-button"><%= AdminResources.Default_lnkMonoXApi %></a>
                            </div>
                        </div>
                    </div>
                    <div class="section-holder">
                        <div class="inner-section">
                            <div class="title-holder">
                                <h4><%= AdminResources.Default_labOtherTasks %></h4>
                            </div>
                            <div class="link-holder">
                                <asp:HyperLink ID="lnkLanguageAdmin" CssClass="icon-flag" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.LanguageManager_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkLanguageAdmin %>'></asp:HyperLink>
                            </div>
                            <div class="link-holder">
                                <asp:HyperLink ID="lnkPortalLocalization" CssClass="icon-pin" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PortalLocalization_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkPortalLocalization %>'></asp:HyperLink>
                            </div>
                            <div class="link-holder">
                                <asp:HyperLink ID="lnkPortalSettings" CssClass="icon-adjust" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PortalSettings_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkPortalSettings %>'></asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- boxes_end -->
            </div>
            <!-- content_end -->
        </div>
        <mono:AdminFooter ID="adminFooter" runat="server" />
    </div>
    <script type="text/javascript">
        $(document).foundation();
        $(document).foundation('topbar');
    </script>
    </form>
</body>
</html>

