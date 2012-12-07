<%@ Page 
    Language="C#" 
    MasterPageFile="~/MonoX/MasterPages/Default.master" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.Pages.PasswordRecovery" 
    Theme="Default"
    Codebehind="PasswordRecovery.aspx.cs" %>
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register TagPrefix="MonoX" TagName="PasswordRecovery" Src="~/MonoX/ModuleGallery/Membership/PasswordRecovery.ascx" %>

<asp:Content ContentPlaceHolderID="cp" Runat="Server">
<div class="main input-form"> <!-- Main Start -->
    <MonoX:PasswordRecovery runat="server" ID="ctlPasswordRecovery"  />
</div>
</asp:Content>
