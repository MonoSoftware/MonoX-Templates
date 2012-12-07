<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.LoginModule" Codebehind="LoginModule.ascx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>

<table cellpadding="0" cellspacing="0" class="login input-form">
    <tr>
        <td>
            <div runat="server">
                <asp:ValidationSummary ID="validationSummaryLogin" runat="server" DisplayMode="BulletList" CssClass="validationSummary" ValidationGroup="Login" />
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel runat="server" ID="pnlLoginContainer">
                <asp:Login ID="ctlLogin" runat="server" Width="100%">
                    <LayoutTemplate>
                    <div class="regualar-login">
                        <h2><%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Title%></h2>
                        <dl>
                            <dd>
                                <asp:Label ID="lblUserName" AssociatedControlID="UserName" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_UserName %>'></asp:Label>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="UserName" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_UserName) %>" />
                            </dd>
                            <dd>
                                <asp:Label ID="lblPassword" AssociatedControlID="Password" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Password %>'></asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="Password" Text="!" SetFocusOnError="true" ValidationGroup="Login" CssClass="validator ValidatorAdapter" Display="Dynamic" ErrorMessage="<%# String.Format(MonoSoftware.MonoX.Resources.DefaultResources.ValidationMessage_RequiredField, MonoSoftware.MonoX.Resources.DefaultResources.Global_Password) %>" />
                            </dd>
                            <dd>                                
                                <asp:CheckBox runat="server" ID="RememberMe" style="float: left;"  />
                                <asp:Label ID="lblRememberMe" AssociatedControlID="RememberMe" runat="server" style="width: auto !important;" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_RememberMe %>'></asp:Label>
                            </dd>
                            <dd style="float: right; margin: 21px 10px 0px 0px;">
                                <div style="float: right;"><MonoX:StyledButton ID="Login" CommandName="Login" runat="server" Text='<%# MonoSoftware.MonoX.Resources.DefaultResources.Login_Login %>' ValidationGroup="Login"></MonoX:StyledButton></div>
                                <div style="float: right; padding: 15px 5px 0px 0px;">
                                    <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(RegisterPageUrl) %>' CssClass="member-link"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_Register %></asp:HyperLink> | 
                                    <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl='<%# MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink(PasswordRecoveryPageUrl) %>' CssClass="member-link"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_PasswordRecoveryText%></asp:HyperLink>
                                </div>                                
                            </dd>
                        </dl>
                    </div>
                    </LayoutTemplate>
                </asp:Login>
            </asp:Panel>             
        </td>        
    </tr>
</table>    
