<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.MembershipEditor" Codebehind="MembershipEditor.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>

<%@ Register Src="~/MonoX/Controls/TimeZonePicker.ascx" TagPrefix="monox" TagName="TimeZonePicker" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<asp:Panel id="panMembership" runat="server" CssClass="user-account membership-editor">
    <div class="title-holder">
        <h2><%= Page.User.Identity.IsAuthenticated ? DefaultResources.MembershipEditor_Title_UpdateAccount : DefaultResources.MembershipEditor_Title_CreateAccount %></h2>
    </div>
    <dl>
        <dd id="Div1" runat="server" class="validation-wraper">
            <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
        </dd>
        <dd class="jq_FieldValidatorWrapper">
            <label class="inline-label" for="<%= txtUserName.ClientID %>"><%= DefaultResources.MembershipEditor_UserName %></label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:Label CssClass="disabled" ID="lblUserName" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
            <asp:CustomValidator ID="vldCustomUserName" runat="server" ControlToValidate="txtUserName" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
        </dd>
        <dd class="jq_FieldValidatorWrapper">
            <label class="inline-label" for="<%= txtEmail.ClientID %>"><%= DefaultResources.MembershipEditor_Email %></label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRequiredEmail" runat="server" ControlToValidate="txtEmail" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="vldRegexEmail" runat="server" ControlToValidate="txtEmail" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
        </dd>
        <dd class="jq_FieldValidatorWrapper">
            <label class="inline-label" for="<%= txtPassword.ClientID %>"><%= DefaultResources.MembershipEditor_Password %></label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
        </dd>
        <dd class="jq_FieldValidatorWrapper">
            <label class="inline-label" for="<%= txtRepeatPassword.ClientID %>"><%= DefaultResources.MembershipEditor_RepeatPassword %></label>
            <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRequiredRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
            <asp:CompareValidator ID="vldCompareRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" SetFocusOnError="true" ControlToCompare="txtPassword" Operator="Equal" CssClass="validator" Display="Dynamic"></asp:CompareValidator>
        </dd>
        <dd>
            <label class="inline-label" for="<%= ddlTimeZone.ClientID %>"><%= DefaultResources.MembershipEditor_TimeZone %></label>
            <monox:TimeZonePicker id="ddlTimeZone" runat="server"></monox:TimeZonePicker>
        </dd>
        <asp:PlaceHolder ID="plhRememberMe" runat="server">
            <dd class="offset">
                <asp:CheckBox ID="chkRememberMe" runat="server" />
                <label for="<%= chkRememberMe.ClientID %>"><%= DefaultResources.MembershipEditor_RememberMe %></label>                
            </dd>
        </asp:PlaceHolder>
        <dd class="offset">
            <asp:Label ID="labInfo" runat="server"></asp:Label>
        </dd>
    </dl>
    <div class="button-holder">
        <MonoX:StyledButton ID="btnCreateAccount" runat="server"></MonoX:StyledButton>
        <MonoX:StyledButton ID="btnUpdateAccount" runat="server"></MonoX:StyledButton>
    </div>
</asp:Panel>