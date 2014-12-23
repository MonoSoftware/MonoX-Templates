<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.ActivationEmailRecovery"
    Codebehind="ActivationEmailRecovery.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<div class="user-account activation-email-recovery">
    <h2 class="title"><%= DefaultResources.ActivationEmailRecovery_Title %></h2>
    <dl>
        <dd id="Div1" runat="server">
            <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
        </dd>
        <dd class="jq_FieldValidatorWrapper">
            <label for="<%= txtUserName.ClientID %>" class="inline-label"><%= DefaultResources.ActivationEmailRecovery_UserName %></label>
            <div class="form-holder">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
            </div>
            <div class="icon-holder">
                <img id="Img1" runat="server" src="~/App_Themes/Default/img/icon-mail-activation.png" alt="Password icon" />
            </div>
            
        </dd>            
        <dd>
            <asp:Label ID="labInfo" runat="server"></asp:Label>
        </dd>
        <dd>
            <hr />
            <monox:CaptchaModule ID="captchaModule" runat="server" />
        </dd>
    </dl>
    <MonoX:StyledButton ID="btnSend" runat="server" CssClass="styled-button-blue"></MonoX:StyledButton>
</div>