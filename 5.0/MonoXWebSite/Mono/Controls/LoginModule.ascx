<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.LoginModule"
    Codebehind="LoginModule.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/Controls/StyledButton.ascx" %>

<div runat="server" class="login">
    <asp:ValidationSummary ID="validationSummaryLogin" runat="server" DisplayMode="BulletList" CssClass="validation-summary" ValidationGroup="Login" />
</div>
<asp:Panel runat="server" ID="pnlLoginContainer">
    <asp:Login ID="ctlLogin" runat="server" Width="100%">
        <LayoutTemplate>
            <h2 class="title--main__center"><%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Title%></h2>
            <div class="login form">
                <div class="login--field">
                    <asp:Label CssClass="form--label" ID="lblUserName" AssociatedControlID="UserName" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_UserName %>'></asp:Label>
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="UserName" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_UserName) %>" />
                </div>
                <div class="login--field">
                    <asp:Label CssClass="form--label" ID="lblPassword" AssociatedControlID="Password" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Password %>'></asp:Label>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="Password" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_Password) %>" />
                </div>
                
                <div class="login--submit">
                    <MonoX:StyledButton ID="Login" CommandName="Login" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Login %>' ValidationGroup="Login"></MonoX:StyledButton>
                </div>
            </div>
            <div class="login spacer--primary">
                <div class="login--field">
                    <asp:CheckBox runat="server" ID="RememberMe" />
                    <asp:Label ID="lblRememberMe" AssociatedControlID="RememberMe" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_RememberMe %>'></asp:Label>
                </div>
                <div class="login--field">
                    <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(RegisterPageUrl) %>' CssClass="member-link"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_Register %></asp:HyperLink> | 
                    <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(PasswordRecoveryPageUrl) %>' CssClass="member-link"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_PasswordRecoveryText%></asp:HyperLink>
                </div>
            </div>
        </LayoutTemplate>
    </asp:Login>
</asp:Panel>