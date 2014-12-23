<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.UserProfileHeader"
    CodeBehind="UserProfileHeader.ascx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.PrivacyManager" TagPrefix="MonoXPrivacyManager" %> 
<%@ Register Src="~/MonoX/ModuleGallery/ProfileModule/UserAvatar.ascx" TagPrefix="monox"
    TagName="UserAvatar" %>
<%@ Import Namespace="MonoSoftware.MonoX" %>

<asp:ScriptManagerProxy ID="proxySM" runat="server">
    <Scripts>
    </Scripts>
</asp:ScriptManagerProxy>

<div class="gradient-background">
    <div id="page-profile-header" class="content-wrapper">
        <asp:UpdatePanel ID="up" runat="server">
            <ContentTemplate>
                <asp:Panel CssClass="avatar-wrapper" ID="rowSideBar" runat="server">
                    <monox:UserAvatar ID="userAvatar" runat="server" />
                </asp:Panel>
                <asp:Panel ID="rowStatus" runat="server" CssClass="status-wrapper">
                    <h2 class="profile-status-name"><asp:Literal ID="labName" runat="server"></asp:Literal></h2>
                    <div class="user-score">
                        <span class="star"></span>
                        <h2><%= DependencyInjectionFactory.Resolve<MonoSoftware.MonoX.BusinessLayer.IUserProfileBLL>().GetUserReputation(UserId) %></h2>
                    </div>
                    <p class="status-text"><asp:Literal ID="labMyStatus" runat="server"></asp:Literal></p>
                    
                    <div id="panStatusEdit" runat="server" class="profile-status-change">
                        <div class="status-input">
                            <asp:TextBox runat="server" ID="txtMyStatus" CssClass="jq_swap_value"></asp:TextBox>
                            <div class="remove-status">
                                <asp:LinkButton ID="lnkRemoveStatus" runat="server" CausesValidation="false"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="privacy">
                            <MonoXPrivacyManager:PrivacyEditor ID="privacyEditor" runat="server"></MonoXPrivacyManager:PrivacyEditor>
                        </div>
                        <div class="set-status">
                            <asp:LinkButton ID="btnSetMyStatus" runat="server" CssClass="regular-button"></asp:LinkButton>
                        </div>
                        
                    </div>
                    <div id="panStatusView" runat="server"></div>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>

<div id="user-profile-tabs" class="white-background">
    <div class="content-wrapper">
        <ul class="user-profile-tabs">
            <asp:PlaceHolder ID="plhWall" runat="server">
                <li <%= GetSelectedCssClass(AppendUserNameQueryParam(MonoSoftware.MonoX.Paths.MonoX.Pages.UserProfile.MyWall_aspx)) %>>
                    <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileUrl(UserName)) %>'>
                    <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_MyWall%></a>
                </li>
            </asp:PlaceHolder>
            <li <%= GetSelectedCssClass(AppendUserNameQueryParam(MonoSoftware.MonoX.Paths.MonoX.Pages.UserProfile.AboutMe_aspx)) %>>
                <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileAboutUrl(UserName)) %>'>
                <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_About%></a>
            </li>
            <li <%= GetSelectedCssClass(AppendUserNameQueryParam(MonoSoftware.MonoX.Paths.MonoX.Pages.UserProfile.MyFriends_aspx)) %>>
                <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfileFriendsUrl(UserName)) %>'>
                <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_Friends%></a>
            </li>
            <li <%= GetSelectedCssClass(AppendUserNameQueryParam(MonoSoftware.MonoX.Paths.MonoX.Pages.UserProfile.MyPhotos_aspx)) %>>
                <a href='<%= MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(GetProfilePhotosUrl(UserName)) %>'>
                <%= MonoSoftware.MonoX.Resources.UserProfileResources.UserProfileHeader_Photos%></a>
            </li>
        </ul>
    </div>
</div>

<div id="admin-choose-a-user" class="content-wrapper">
    <div class="main-content">
        <asp:Panel ID="rowAdmin" runat="server" class="choose-a-user" Visible="false">
            <asp:Label ID="lblUser" runat="server" CssClass="user-label"></asp:Label>
            <telerik:RadComboBox ID="ddlUsers" runat="server" AllowCustomText="false" EnableLoadOnDemand="True" Skin="MetroTouch" EnableEmbeddedSkins="false"
                MarkFirstMatch="false" ShowDropDownOnTextboxClick="false" ShowToggleImage="true"
                ShowWhileLoading="true" AutoPostBack="true" Height="150px" Width="100%" CausesValidation="false">
            </telerik:RadComboBox>
        </asp:Panel>
    </div>
</div>