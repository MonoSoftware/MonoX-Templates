<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Header.ascx.cs"
    Inherits="Mono.Web.Controls.Header" %>

<%@ Register TagPrefix="ctl" TagName="Search" Src="~/Mono/Controls/MonoXSearchBoxWithFilter.ascx" %>
<%@ Register TagPrefix="ctl" TagName="Menu" Src="~/Mono/Controls/MonoXMenuSimple.ascx" %>
<%@ Register TagPrefix="ctl" TagName="MembershipNavigation" Src="~/Mono/Controls/MembershipNavigation.ascx" %>



<div class="top-bar">
    <div class="l--row top-wrapper">
        <ctl:MembershipNavigation runat="server" ID="ctlMembership" />
        <ctl:Search runat="server" ID="ctlSearch" DefaultSearchText="Enter search term" ButtonText="Go"></ctl:Search>
    </div>
</div>
<header role="banner" class="header">
    <div class="l--row">
        <div class="header--branding">
            <h1>MonoX</h1>
            <a id="A1" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
        <ctl:Menu runat="server" ID="ctlMenu" UseSpanElementsInMenuItems="true" CacheDuration="600"  SelectedItemCssClass="selected" FirstItemCssClass="first" LastItemCssClass="last" />
    </div>
</header>








<nav>
    <div class="container">
        
        <div class="clearfix">
            
        </div>
    </div>
</nav>