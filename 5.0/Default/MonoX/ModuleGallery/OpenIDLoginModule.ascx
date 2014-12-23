<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.OpenIDLoginModule" Codebehind="OpenIDLoginModule.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>
<%@ Register Assembly="DotNetOpenAuth" Namespace="DotNetOpenAuth.OpenId.RelyingParty" TagPrefix="rp" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<div class="user-account activation-email-recovery">

    <asp:Panel runat="server" ID="pnlOpenIdContainer" Width="100%">

    <monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

        <h3><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_OpenId_Title%></h3>
        <div class="soc-login">
            <dl>
                <dd id="Div1" runat="server">
                    <asp:ValidationSummary ID="validationSummaryOpenId" runat="server" DisplayMode="BulletList" CssClass="validation-summary" ValidationGroup="OpenId" />
                </dd>
                <dd class="openid-container jq_FieldValidatorWrapper">
                    <label class="inline-label"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_OpenId_Login %></label>
                    <div class="control-holder">
                        <img runat="server" src="~/App_Themes/Default/img/icon-openid.png" alt="OpenID icon" />
                        <rp:OpenIdTextBox ID="txtOpenId" runat="server" RequestCountry="Request" RequestFullName="Request" RequestNickname="Request" 
                        RequestEmail="Require" RequestGender="Request" RequestPostalCode="Request" RequestTimeZone="Request" CssClass="openid-textbox" />
                    </div>
                    <asp:RequiredFieldValidator ID="vldRequiredOpenId" runat="server" ControlToValidate="txtOpenId" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
                    <asp:CustomValidator ID="vldCustomOpenId" runat="server" ControlToValidate="txtOpenId" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
                </dd>
                <dd class="offset">
                    <span class="italic-style">
                        <span><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_OpenId_Example%></span>
                        http://your.name.myopenid.com
                    </span>
                </dd>
                <dd class="offset">
                    <asp:CheckBox runat="server" ID="chkOpenIdRememberMe" />
                    <label for="<%= chkOpenIdRememberMe.ClientID %>" runat="server"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_RememberMe %></label>
                </dd>
            </dl>                    
        </div>
        <div>
            <MonoX:StyledButton ID="btnOpenIdLogin" CssClass="styled-button styled-button-blue" runat="server" Text="<% $Code:DefaultResources.Login_Login %>"></MonoX:StyledButton>
            <a href="https://www.myopenid.com/signup" class="regular-button" title="<%= MonoSoftware.MonoX.Resources.DefaultResources.Login_OpenId_Register_ToolTip %>"><%= MonoSoftware.MonoX.Resources.DefaultResources.Login_OpenId_Register %></a>
        </div>
    </asp:Panel>
</div>