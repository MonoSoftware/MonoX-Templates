<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.ActivationEmailRecovery" Codebehind="ActivationEmailRecovery.ascx.cs" Title="Activation message recovery" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="Mono" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>


<h2 class="eight columns"><%= DefaultResources.ActivationEmailRecovery_Title %></h2>
<div id="Div1" runat="server" class="eight columns">
    <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
</div>
<dl>
    <dd class="eight columns">
        <label for="<%= txtUserName.ClientID %>"><%= DefaultResources.ActivationEmailRecovery_UserName %></label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />                
    </dd>            
    <dd class="eight columns">
        <asp:Label ID="labInfo" runat="server"></asp:Label>
    </dd>
    <dd class="eight columns">
        <MonoX:StyledButton ID="btnSend" runat="server" CssClass="CssFormButton"></MonoX:StyledButton>
    </dd>
</dl>