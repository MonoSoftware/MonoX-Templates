<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.LoginModule"
    Codebehind="LoginModule.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<div class="user-account">
    <div runat="server">
        <asp:ValidationSummary ID="validationSummaryLogin" runat="server" DisplayMode="BulletList" CssClass="validation-summary" ValidationGroup="Login" />
    </div>
    <asp:Panel runat="server" ID="pnlLoginContainer" Width="100%">
        <asp:Login ID="ctlLogin" runat="server" Width="100%">
            <LayoutTemplate>
            <h3><%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Title%></h3>
            <div class="input-form">
                <dl>
                    <dd class="clearfix">
                        <asp:Label ID="lblUserName" CssClass="inline-label" AssociatedControlID="UserName" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_UserName %>'></asp:Label>
                        <div class="control-holder">
                            <img runat="server" src="~/App_Themes/Default/img/icon-user-name.png" alt="User name icon" />
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="UserName" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_UserName) %>" />
                    </dd>
                    <dd class="clearfix">
                        <asp:Label ID="lblPassword" CssClass="inline-label" AssociatedControlID="Password" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Password %>'></asp:Label>
                        <div class="control-holder">
                            <img runat="server" src="~/App_Themes/Default/img/icon-pwd.png" alt="Password icon" />
                            <asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="Password" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_Password) %>" />
                    </dd>
                    <dd class="offset">
                        <asp:CheckBox runat="server" ID="RememberMe" />
                        <asp:Label ID="lblRememberMe" AssociatedControlID="RememberMe" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_RememberMe %>'></asp:Label>
                    </dd>
                </dl>
            </div>
            <div>
                <MonoX:StyledButton ID="Login" CommandName="Login" CssClass="styled-button-blue" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Login %>' ValidationGroup="Login"></MonoX:StyledButton>
                <asp:HyperLink ID="lnkRegister" CssClass="styled-button" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(RegisterPageUrl) %>'><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_Register %></asp:HyperLink>
                <asp:HyperLink ID="lnkForgotPassword" CssClass="forger-password" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(PasswordRecoveryPageUrl) %>'><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_PasswordRecoveryText%></asp:HyperLink>
            </div>
            </LayoutTemplate>
        </asp:Login>
    </asp:Panel>
</div>