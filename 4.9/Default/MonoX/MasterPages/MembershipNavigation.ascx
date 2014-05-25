<%@ Control 
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="MembershipNavigation.ascx.cs"
    Inherits="MonoSoftware.MonoX.MasterPages.MembershipNavigation" %>
<%@ Register Src="~/MonoX/controls/SeoLoginStatus.ascx" TagPrefix="monox" TagName="SeoLoginStatus" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<div class="membership-navigation">
    <asp:PlaceHolder ID="panAnonymousTemplate" runat="server">
        <monox:SeoLoginStatus ID="loginStatus1" runat="server" />
        <asp:HyperLink runat="server" ID="lnkRegister" Visible="<% $Code: MonoSoftware.MonoX.ApplicationSettings.EnableUserRegistration %>"></asp:HyperLink>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="panLoggedInTemplate" runat="server">
        <asp:HyperLink runat="server" ID="lnkProfile">
            <span class="icon-profile"></span>
        </asp:HyperLink>
        <asp:HyperLink runat="server" ID="lnkMessages">
            <span class="icon-message"></span>
        </asp:HyperLink>
        <a href="javascript:$('.search-holder').slideToggle('fast');" class="search-icon-holder">
            <span class="icon-search"></span>
        </a>
        <monox:SeoLoginStatus runat="server" ID="loginStatus2"/>
    </asp:PlaceHolder>
    <div id="panLoginName" runat="server" class="login-name">
        <asp:LoginName ID="loginName" runat="server" /> 
    </div>
</div>