<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.LoginModule"
    Codebehind="LoginModule.ascx.cs" %>
    <%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<div class="login-module">
    <dl>
        <dd runat="server">
            <asp:ValidationSummary ID="validationSummaryLogin" runat="server" DisplayMode="BulletList" CssClass="validation-summary" ValidationGroup="Login" />
        </dd>
    </dl>
    <asp:Panel runat="server" ID="pnlLoginContainer" Width="100%">
        <asp:Login ID="ctlLogin" runat="server" Width="100%" >
            <LayoutTemplate>
                <!--<div class="login-headline">
                    <h5><%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Title%></h5>
                </div>-->
                <div class="login-user-name jq_FieldValidatorWrapper">
                    <asp:Label ID="lblUserName" CssClass="inline-label" AssociatedControlID="UserName" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_UserName %>'></asp:Label>
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="UserName" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_UserName) %>" />
                </div>
                <div class="login-password jq_FieldValidatorWrapper">
                    <asp:Label ID="lblPassword" CssClass="inline-label" AssociatedControlID="Password" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Password %>'></asp:Label>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="Password" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_Password) %>" />
                </div>
                <div class="offset">
                    <asp:CheckBox runat="server" ID="RememberMe" />
                    <asp:Label ID="lblRememberMe" AssociatedControlID="RememberMe" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_RememberMe %>'></asp:Label>
                </div>
                <div class="login-buttons">
                    <div class="login-buttons-holder">
                        <MonoX:StyledButton ID="Login" CommandName="Login" CssClass="regular-button" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Login %>' ValidationGroup="Login"></MonoX:StyledButton>
                        <asp:HyperLink ID="lnkRegister" CssClass="regular-button" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(RegisterPageUrl) %>'><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_Register %></asp:HyperLink>
                        <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(PasswordRecoveryPageUrl) %>'><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_PasswordRecoveryText%></asp:HyperLink>
                    </div>
                </div>
            </LayoutTemplate>
        </asp:Login>
    </asp:Panel>
</div>