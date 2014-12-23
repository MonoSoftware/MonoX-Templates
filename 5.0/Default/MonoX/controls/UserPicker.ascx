<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="UserPicker.ascx.cs"
    Inherits="MonoSoftware.MonoX.Controls.UserPicker" %>

<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<dl class="user-picker">
    <dd class="jq_FieldValidatorWrapper">
        <rad:RadComboBox ID="ddlRecipients" AutoCompleteSeparator="," Width="100%" runat="server" HighlightTemplatedItems="true" EnableLoadOnDemand="true" ShowToggleImage="false"
         MarkFirstMatch="true" AllowCustomText="false" ShowDropDownOnTextboxClick="false" Skin="AutoCompleteBox" EnableEmbeddedSkins="false"  >
        <ItemTemplate>
            <%# GetItemTemplate() %>
            <br />
        </ItemTemplate>
        <FooterTemplate>
            <asp:Literal runat="server" ID="ltlTip"></asp:Literal>
        </FooterTemplate>
        </rad:RadComboBox>
        <asp:RequiredFieldValidator ID="vldRequiredRecipients" runat="server" ControlToValidate="ddlRecipients" Text="*" SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
    </dd>
</dl> 