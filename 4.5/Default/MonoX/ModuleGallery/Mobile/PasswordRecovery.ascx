<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.Mobile.PasswordRecovery" Codebehind="PasswordRecovery.ascx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>

<div class="login membership-module-container input-form">
    <div id="Div1" runat="server">
        <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
    </div>
    <div class="password-recovery">
        <h2><%= DefaultResources.PasswordRecovery_Title %></h2>
        <dl>
            <dd>
                <label for="<%= txtUserName.ClientID %>"><%= DefaultResources.PasswordlRecovery_UserName %></label>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd>
                <asp:Label ID="labMessage" runat="server"></asp:Label>
            </dd>
        </dl>
        
        <div class="input-form">            
            <div class="button-holder">
                <MonoX:StyledButton ID="btnSend" runat="server" EnableNativeButtonMode="true"></MonoX:StyledButton>            
            </div>
        </div>            
    </div>
</div>    
