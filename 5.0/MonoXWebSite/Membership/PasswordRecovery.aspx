<%@ Page 
    Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true" 
    Inherits="Mono.Web.Pages.PasswordRecovery" 
    Theme="Mono"
    Codebehind="PasswordRecovery.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register TagPrefix="MonoX" TagName="PasswordRecovery" Src="~/Mono/Controls/Membership/PasswordRecovery.ascx" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="top-bar">
        <div class="l--row top-wrapper">
            <a id="A1" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
    </div>
    <div class="l--row l--home">
        <MonoX:PasswordRecovery runat="server" ID="ctlPasswordRecovery"  />
    </div>

</asp:Content>