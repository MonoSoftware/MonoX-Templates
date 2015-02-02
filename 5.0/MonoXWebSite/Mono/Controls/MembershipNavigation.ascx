<%@ Control 
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="MembershipNavigation.ascx.cs"
    Inherits="Mono.Web.Controls.MembershipNavigation" %>
<%@ Register Src="~/Mono/controls/SeoLoginStatus.ascx" TagPrefix="ctl" TagName="SeoLoginStatus" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>



<a href="javascript:void(0)" class="js-toggle-membership toggle-membership  icon-menu"></a>
<nav role="navgation" aria-label="Secondary" class="top-navigation">
    <ul class="nav--secondary">
        <li>
            <div id="panLoginName" runat="server" class="nav--item__name">
                <asp:LoginName ID="loginName" runat="server"  /> 
            </div>
        </li>
        <asp:PlaceHolder ID="panLoggedInTemplate" runat="server">
            <li><ctl:SeoLoginStatus ID="loginStatus2" runat="server" ToolTip="Logout" CssClass="nav--item first" /></li>
            <li><asp:HyperLink runat="server" CssClass="nav--item" ID="lnkPrioritySupport" NavigateUrl="~/support/mono/" ToolTip="My priority support">Priority support</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" CssClass="nav--item" ID="lnkLicenses" NavigateUrl="~/licenses/" ToolTip="My licenses">Licenses</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" CssClass="nav--item" ID="lnkMessages" NavigateUrl="~/Mono/Pages/Messages.aspx" ToolTip="Messages">Messages</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" CssClass="nav--item last" ID="lnkProfile" NavigateUrl="<% $Code:GetProfileUrl() %>" ToolTip="Profile">Profile</asp:HyperLink></li>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="panAnonymousTemplate" runat="server">
            <li><asp:HyperLink CssClass="nav--item first" runat="server" ID="lnkRegister" NavigateUrl="~/Membership/Register.aspx" Visible="<% $Code: MonoSoftware.MonoX.ApplicationSettings.EnableUserRegistration %>" ToolTip="Register"></asp:HyperLink></li>
            <li><ctl:SeoLoginStatus CssClass="nav--item last" ID="loginStatus1" runat="server" ToolTip="Login" /></li>
        </asp:PlaceHolder>
    </ul>
</nav>









    
    
    
    
    

