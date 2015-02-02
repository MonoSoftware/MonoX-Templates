<%@ Page 
    Language="C#" 
    MasterPageFile="~/Mono/MasterPages/Blank.Master"
    AutoEventWireup="true" 
    Inherits="Mono.Web.Pages.ActivationEmailRecovery" 
    Theme="Mono"
    Codebehind="ActivationEmailRecovery.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register TagPrefix="MonoX" TagName="ActivationEmailRecovery" Src="~/Mono/Controls/Membership/ActivationEmailRecovery.ascx" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
    <div class="membership">
        <div class="glow">
            <div class="container input-form login">
                <a id="A1" runat="server" href="~/"><img id="Img1" runat="server" src="~/App_Themes/Mono/img/logo.png" alt="Logo" class="logo" /></a>
                <img id="Img2" runat="server" src="~/App_Themes/Mono/img/shadow-separator-small.png" alt="Separator" class="scale-with-grid separator" />
                <MonoX:ActivationEmailRecovery runat="server" ID="ctlActivationEmailRecovery" />
            </div>
        </div>
    </div>
</asp:Content>