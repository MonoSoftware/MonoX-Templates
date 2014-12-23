<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.AdminHeader" Codebehind="AdminHeader.ascx.cs" %>
<%@ Register Src="~/MonoX/controls/LocaleChanger.ascx" TagPrefix="MonoX" TagName="LocaleChanger" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<script type="text/javascript">

    $(function () {
        var navigation = $('.sub-nav');
        var togglebutton = $('#navigation-toggle');

        togglebutton.click(function (e) {
            if (navigation.hasClass('open')) {
                navigation.removeClass('open');
            } else {
                navigation.addClass('open');
                e.stopPropagation();
            }
        });
        $(document).click(function () {
            navigation.removeClass('open');
        });
    });

    function OpenRadWindow(url, width, height, windowName, windowTitle) {
        var oWindow = window.radopen(url, windowName);
        //oWindow.set_modal(true);
        oWindow.SetSize(width, height);
        oWindow.Center();
        oWindow.OnClientPageLoad = function () {
            oWindow.SetTitle(windowTitle);
        }
    }

    function AddPage() {
        OpenRadWindow('<%= MonoSoftware.Web.UrlFormatter.ResolveServerUrl(MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PageManagerPropertiesDialog_aspx)) %>', 700, 550, "AddPage", '<%= AdminResources.Default_AddPage %>');
    }

</script>

<header>
    <div class="top-section-wrapper"> 
        <div class="top-section">
            <div class="logo-holder">
                <asp:HyperLink CssClass="logo" runat="server" ID="HyperLink1" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.Default_aspx) %>'>
                    <asp:Image runat="server" ImageUrl='<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.All.DefaultAdmin.img.logo_jpg %>' ID="imgLogo" AlternateText='<%$ Code: AdminResources.AdminHeader_imgLogo_AlternateText %>' />
                </asp:HyperLink>
            </div>
            <div class="language"><span><%= AdminResources.AdminHeader_LanguageText %>:</span></div>
            <div class="form">
                <MonoX:LocaleChanger ID="ctlLocaleChanger" runat="server" CssClass="select-field" />
            </div>
            <div class="loged-in" ><asp:LoginName ID="loginName1" runat="server" FormatString='<%$ Code: AdminResources.AdminHeader_loginName_FormatString %>' ToolTip='<%$ Code: AdminResources.AdminHeader_loginName_Tooltip %>' />           
            <asp:HyperLink runat="server" ID="lnkSiteHome" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.Default_aspx) %>' Text='<%$ Code: AdminResources.AdminHeader_lnkSiteHome %>'></asp:HyperLink>
            <asp:LoginStatus ID="loginStatus1" runat="server" />
            </div>
        </div>
    </div>

   <div class="nav-holder">
        <nav class="top-bar">
            <ul class="title-area">
                <li class="name">
                </li>
                <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
            </ul>
            <section class="top-bar-section">
            <ul class="left">
            
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.Default_aspx) %>><asp:HyperLink ID="lnkAdminHome" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.Default_aspx) %>'><%= AdminResources.AdminHeader_lnkAdminHome %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdmin_aspx) %>><asp:HyperLink ID="lnkFiles" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdmin_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdmin_aspx) %>'><%= AdminResources.AdminHeader_lnkFiles %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.PageAdmin_aspx) %>><asp:HyperLink ID="lnkPages" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PageAdmin_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.PageAdmin_aspx) %>'><%= AdminResources.AdminHeader_lnkPages %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.UserManager_aspx) %>><asp:HyperLink ID="lnkUsers" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.UserManager_aspx) %>'><%= AdminResources.AdminHeader_lnkUsers %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.RoleManager_aspx) %>><asp:HyperLink ID="lnkRoles" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.RoleManager_aspx) %>'><%= AdminResources.AdminHeader_lnkRoles %></asp:HyperLink></li>
                <li class="has-dropdown <%= GetSubMenuSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsQuickPost_aspx) %>">
                    <asp:HyperLink ID="lnkNews" runat="server" NavigateUrl='javascript:void();' ><%= AdminResources.AdminHeader_lnkNews %></asp:HyperLink>
                    <ul class="dropdown">
                        <li>
                            <asp:HyperLink ID="lnkQuickNews" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsQuickPost_aspx) %>' ><%= AdminResources.AdminHeader_lnkNewsQuickPost %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnkNewsManager" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkNews %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink runat="server" ID="lnkNewsCategoryAdmin" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsCategoryManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkNewsCategoryAdmin %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink runat="server" ID="lnkNewsPublisherAdmin" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsPublisherManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkNewsPublisherAdmin %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink runat="server" ID="lnkNewsMetaKeyWords" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsIgnoredMetaKeywordsManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkNewsMetaKeyWords%></asp:HyperLink>
                        </li>
                    </ul>
                </li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx) %>><asp:HyperLink ID="lnkAds" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx) %>'><%= AdminResources.AdminHeader_lnkAds %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx) %>><asp:HyperLink ID="lnkPolls" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx) %>'><%= AdminResources.AdminHeader_lnkPolls %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx) %>><asp:HyperLink ID="lnlLists" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx) %>'><%= AdminResources.AdminHeader_lnkLists %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx) %>><asp:HyperLink ID="lnkNewsletters" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx) %>'><%= AdminResources.AdminHeader_lnkNewsletters %></asp:HyperLink></li>
                <li class="has-dropdown <%= GetSubMenuSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx) %>">
                    <asp:HyperLink ID="lnkBlog" runat="server" NavigateUrl='javascript:void();' ><%= AdminResources.AdminHeader_lnkBlog %></asp:HyperLink>
                    <ul class="dropdown">
                        <li>
                            <asp:HyperLink ID="lnkBlogManager" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkBlog %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnkBlogSettings" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogSettingsManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkBlogSettings %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnkBlogPosts" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx) %>' ><%= AdminResources.AdminHeader_lnkBlogPosts %></asp:HyperLink>
                        </li>
                    </ul>
                </li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAmazonS3_aspx) %>><asp:HyperLink ID="lnkAmazonS3" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAmazonS3_aspx) %>'><%= AdminResources.AdminHeader_lnkAmazonS3 %></asp:HyperLink></li>
                <li <%= GetSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAzure_aspx) %>><asp:HyperLink ID="lnkAzure" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.FileAdminAzure_aspx) %>'><%= AdminResources.AdminHeader_lnkAzure %></asp:HyperLink></li>

                <li class="has-dropdown <%= GetSubMenuSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupCategoryManager_aspx) %>">
                    <asp:HyperLink ID="lnkSocial" runat="server" NavigateUrl='javascript:void();' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroups%></asp:HyperLink>
                    <ul class="dropdown">
                        <li>
                            <asp:HyperLink ID="lnkGroupCat" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupCategoryManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupCategoryManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroupCat %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnkGroups" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroups %></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="lnkGroupMembers" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupMembershipManager_aspx) %>' Enabled='<%# MonoSoftware.MonoX.Utilities.PageUtility.CanViewAdminPage(MonoSoftware.MonoX.Paths.MonoX.Admin.SnGroupMembershipManager_aspx) %>'><%= AdminResources.AdminHeader_lnkGroupMembers %></asp:HyperLink>
                        </li>
                    </ul>
                </li>

                <li class="<%= GetSubMenuSelectedCssClass(MonoSoftware.MonoX.Paths.MonoX.Admin.Analytics.Dashboard_aspx) %>">
                    <a href="<%= ResolveUrl(MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.Analytics.Dashboard_aspx)) %>" title="Analytics">
                        <%= AdminResources.AdminHeader_Analytics %>
                    </a>
                </li>
            </ul>
            </section>
        </nav>
    </div>
</header>
<!-- sub_nav_start -->
<div class="sub-nav">
    <div class="toggle-holder"><a id="navigation-toggle"></a></div>
    <ul>
        <li>
            <asp:Label ID="labQuickTasks" runat="server" CssClass="title" Text='<%$ Code: AdminResources.Default_labQuickTasks %>'></asp:Label> 
        </li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-file" ID="lnkAddPage" NavigateUrl="javascript:AddPage();"><%= AdminResources.Default_AddPage %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-user" ID="lnkAddUser" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.UserManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddUser %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-ribbon" ID="lnkAddRole" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.RoleManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddRole %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-news" ID="lnkAddNews" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsQuickPost_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddNews %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-pricetag" ID="lnkAddAd" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.AdManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddAd %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-graph" ID="lnkAddPoll" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PollManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddPoll %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-list" ID="lnkAddList" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.ListManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddList %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-plane" ID="lnkAddNewsletter" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.NewsletterManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddNewsletter %></asp:HyperLink></li>
        <li>
            <asp:HyperLink runat="server" CssClass="icon-pencil" ID="lnkAddBlogPost" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.BlogManager_aspx + String.Format("?{0}={1}", MonoSoftware.MonoX.UrlParams.EntityId.Name, Guid.Empty)) %>'><%= AdminResources.Default_AddBlogPost %></asp:HyperLink></li>
        <li>
            <asp:Label ID="Label1" runat="server" CssClass="title" Text='<%$ Code: AdminResources.Default_labDocumentation %>'></asp:Label>
        </li>
        <li>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="icon-book" NavigateUrl='http://www.mono-software.com/Downloads/#MonoX' Target="_blank" Text='<%$ Code: AdminResources.Default_lnkMonoXDocumentation %>'></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="icon-med" NavigateUrl='http://www.mono-software.com/Downloads/#MonoX' Target="_blank" Text='<%$ Code: AdminResources.Default_lnkMonoXApi %>'></asp:HyperLink></li>
        <li>
            <asp:Label ID="labOtherTasks" runat="server" CssClass="title" Text='<%$ Code: AdminResources.Default_labOtherTasks %>'></asp:Label>
        </li>
        <li>
            <asp:HyperLink ID="lnkLanguageAdmin" CssClass="icon-flag" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.LanguageManager_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkLanguageAdmin %>'></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="lnkPortalLocalization" CssClass="icon-pin" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PortalLocalization_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkPortalLocalization %>'></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="lnkPortalSettings" CssClass="icon-adjust" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(MonoSoftware.MonoX.Paths.MonoX.Admin.PortalSettings_aspx) %>' Text='<%$ Code: AdminResources.Default_lnkPortalSettings %>'></asp:HyperLink></li>
    </ul>
</div>
<!-- sub_nav_end -->