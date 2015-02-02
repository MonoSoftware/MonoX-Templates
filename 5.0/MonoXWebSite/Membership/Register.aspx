<%@ Page 
    Language="C#"
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true"
    Inherits="Mono.Web.Pages.Register"
    Theme="Mono"
    Codebehind="Register.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>

<%@ Register TagPrefix="MonoX" TagName="Membership" Src="~/Mono/Controls/Membership/MembershipEditor.ascx" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="top-bar">
        <div class="l--row top-wrapper">
            <a id="A1" runat="server" href="~/">
                <img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.svg" alt="Logo" class="logo" />
            </a>
        </div>
    </div>
    <div class="l--row l--home">
        <MonoX:Membership runat="server" ID="ctlMembershipEditor" />
    </div>
    

</asp:Content>
