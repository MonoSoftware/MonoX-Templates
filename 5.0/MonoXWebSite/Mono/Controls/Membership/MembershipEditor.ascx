<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.MembershipEditor" Codebehind="MembershipEditor.ascx.cs" Title="User information" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Src="~/MonoX/Controls/TimeZonePicker.ascx" TagPrefix="monox" TagName="TimeZonePicker" %>


<div id="Div1" runat="server" class="login">
    <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
</div>
<h2 class="title--main__center"><%= Page.User.Identity.IsAuthenticated ? DefaultResources.MembershipEditor_Title_UpdateAccount : DefaultResources.MembershipEditor_Title_CreateAccount %></h2>
<div class="login form">
    <div class="login--half">
        <label class="form--label" for="<%= txtUserName.ClientID %>"><%= DefaultResources.MembershipEditor_UserName %></label>
        <asp:Label ID="lblUserName" runat="server"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
        <asp:CustomValidator ID="vldCustomUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
    </div>
    <div class="login--half">
        <label class="form--label" for="<%= txtEmail.ClientID %>"><%= DefaultResources.MembershipEditor_Email %></label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldRequiredEmail" runat="server" ControlToValidate="txtEmail" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
        <asp:RegularExpressionValidator ID="vldRegexEmail" runat="server" ControlToValidate="txtEmail" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
    </div>
    <div class="login--half">
        <label class="form--label" for="<%= txtPassword.ClientID %>"><%= DefaultResources.MembershipEditor_Password %></label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
    </div>
    <div class="login--half">
        <label class="form--label" for="<%= txtRepeatPassword.ClientID %>"><%= DefaultResources.MembershipEditor_RepeatPassword %></label>
        <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldRequiredRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
        <asp:CompareValidator ID="vldCompareRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" Text="!" SetFocusOnError="true" ControlToCompare="txtPassword" Operator="Equal" CssClass="validator ValidatorAdapter" Display="Dynamic"></asp:CompareValidator>
    </div>
    <div class="login--half">
        <label class="form--label" for="<%= ddlTimeZone.ClientID %>"><%= DefaultResources.MembershipEditor_TimeZone %></label>
        <monox:TimeZonePicker id="ddlTimeZone" runat="server"></monox:TimeZonePicker>
    </div>
    <asp:PlaceHolder ID="plhRememberMe" runat="server">
        <div class="login--half nolabel login--spacer">
            <asp:CheckBox ID="chkRememberMe" runat="server" />
            <label for="<%= chkRememberMe.ClientID %>"><%= DefaultResources.MembershipEditor_RememberMe %></label>                
        </div>
    </asp:PlaceHolder>
    <div class="login--half">
        <asp:Label ID="labInfo" runat="server"></asp:Label>
    </div>
</div>
<div class="login">
    <MonoX:StyledButton ID="btnCreateAccount" runat="server"></MonoX:StyledButton>
    <MonoX:StyledButton ID="btnUpdateAccount" runat="server"></MonoX:StyledButton>
</div>