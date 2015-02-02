<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.EditProfile"
    CodeBehind="EditProfile.ascx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="monox" Namespace="MonoSoftware.MonoX.PrivacyManager" Assembly="MonoX" %>
<%@ Register Src="~/MonoX/Controls/TimeZonePicker.ascx" TagPrefix="monox" TagName="TimeZonePicker" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<asp:PlaceHolder ID="mainContainer" runat="server">

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

    <monox:PrivacyManager ID="privacyManager" runat="server" ImageButtonCssClass="privacy-button"></monox:PrivacyManager>
    <h3><asp:Label ID="lblAboutMySelf" AssociatedControlID="AboutMySelf" runat="server"></asp:Label></h3>
    <div id="rowAboutMySelf" runat="server" class="input-form about-me">
        <asp:Panel CssClass="privacy" ID="panAboutMySelfPrivacyEditor" runat="server"></asp:Panel>
        <div class="control-holder">
            <asp:Label ID="prevAboutMySelf" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="AboutMySelf" TextMode="MultiLine" />
        </div>
    </div>
    <div class="edit-profile-preview">
        <dl>
            <dd>
                <asp:ValidationSummary ID="valSum" runat="server" ShowSummary="true" CssClass="validation-summary" />
            </dd>
            <dd id="rowValidation" runat="server">
                <h3 id="rowTitle" runat="server"><asp:Literal ID="lblTitle" runat="server"></asp:Literal></h3>
                <div id="rowInfo" runat="server">
                    <span id="lblInfo" runat="server"></span>
                </div>
            </dd>
            <dd id="rowFirstName" runat="server" class="jq_FieldValidatorWrapper">
                <asp:Label ID="labFirstName" AssociatedControlID="FirstName" runat="server"></asp:Label>
                <asp:Panel ID="panFristNamePrivacyEditor" CssClass="privacy" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="FirstName" />
                    <asp:RequiredFieldValidator runat="server" ID="reqFirstName" CssClass="validator" SetFocusOnError="true" Display="Dynamic" ControlToValidate="FirstName"/>
                </div>
            </dd>
            <dd id="rowLastName" runat="server" class="jq_FieldValidatorWrapper">
                <asp:Label ID="labLastName" AssociatedControlID="LastName" runat="server"></asp:Label>
                <asp:Panel ID="panLastNamePrivacyEditor" CssClass="privacy" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="LastName" />
                    <asp:RequiredFieldValidator runat="server" ID="reqLastName" CssClass="validator" SetFocusOnError="true" Display="Dynamic" ControlToValidate="LastName" />
                </div>
            </dd>
            <dd id="rowBirthDate" runat="server">
                <asp:Label ID="lblBirthDate" AssociatedControlID="BirthDate" runat="server"></asp:Label>
                <strong><asp:Label ID="prevBirthDate" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panBirthDayPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <telerik:RadDatePicker ID="BirthDate" runat="server"></telerik:RadDatePicker>
                </div>
            </dd>
            <dd id="rowAddress" runat="server">
                <asp:Label ID="lblAddress" AssociatedControlID="Address" runat="server"></asp:Label>
                <strong><asp:Label ID="prevAddress" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panAddressPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="Address" />
                </div>
            </dd>
            <dd id="rowCity" runat="server">
                <asp:Label ID="lblCity" AssociatedControlID="City" runat="server"></asp:Label>
                <strong><asp:Label ID="prevCity" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panCityPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="City" />
                </div>
            </dd>
            <dd id="rowZipCode" runat="server">
                <asp:Label ID="lblZipCode" AssociatedControlID="ZipCode" runat="server"></asp:Label>
                <strong><asp:Label ID="prevZipCode" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panZipCodePrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="ZipCode" />
                </div>
            </dd>
            <dd id="rowCountry" runat="server">
                <asp:Label ID="lblCountry" AssociatedControlID="Country" runat="server"></asp:Label>
                <strong><asp:Label ID="prevCountry" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panCountryPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="Country" />
                </div>
            </dd>
            <dd id="rowWebSites" runat="server" class="profile-websites">
                <asp:Label ID="lblWebSites" AssociatedControlID="WebSites" runat="server"></asp:Label>
                <strong><asp:PlaceHolder ID="prevWebSites" runat="server"></asp:PlaceHolder></strong>
                <asp:Panel CssClass="privacy" ID="panWebSitesPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="WebSites" />
                </div>
            </dd>
            <dd id="rowEMail" runat="server" class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblEmail" AssociatedControlID="Email" runat="server"></asp:Label>
                <strong><asp:Label ID="prevEMail" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panEmailPrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <asp:TextBox runat="server" ID="Email" />
                    <asp:RegularExpressionValidator ID="regexEmail" CssClass="validator" ControlToValidate="Email"
                        Display="Dynamic" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                        runat="server"></asp:RegularExpressionValidator>
                </div>
            </dd>
            <dd id="rowTimeZone" runat="server">
                <asp:Label ID="lblTimeZone" AssociatedControlID="ddlTimeZone" runat="server"></asp:Label>                
                <strong><asp:Label ID="prevTimeZone" runat="server"></asp:Label></strong>
                <asp:Panel CssClass="privacy" ID="panTimeZonePrivacyEditor" runat="server"></asp:Panel>
                <div class="control-holder">
                    <monox:TimeZonePicker id="ddlTimeZone" runat="server"></monox:TimeZonePicker>
                </div>
            </dd>
            <dd id="rowPass" runat="server" class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblPassword" AssociatedControlID="Password" runat="server"></asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                <asp:RegularExpressionValidator ID="PasswordLength" runat="server" CssClass="validator" SetFocusOnError="true" Display="Dynamic" ControlToValidate="Password"></asp:RegularExpressionValidator>
            </dd>
            <dd id="rowConfirmPass" runat="server" class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblConfirmPassword" AssociatedControlID="ConfirmPassword" runat="server"></asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                <asp:CompareValidator ID="PasswordCompare" runat="server" CssClass="validator" SetFocusOnError="true" Display="Dynamic" ControlToCompare="Password" ControlToValidate="ConfirmPassword"></asp:CompareValidator>
            </dd>
            <asp:Repeater ID="rptProfile" runat="server">
                <ItemTemplate>
                    <dd id="row" runat="server">
                        <asp:Label ID="labCaption" runat="server"></asp:Label>
                        <asp:Label ID="labValuePreview" runat="server"></asp:Label>
                        <asp:TextBox ID="txtTextValue" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="txtBoolValue" runat="server" />
                        <telerik:RadDatePicker ID="txtDateValue" runat="server"></telerik:RadDatePicker>
                        <monox:PrivacyEditor id="privacyEditor" runat="server"></monox:PrivacyEditor>
                    </dd>
                </ItemTemplate>
            </asp:Repeater>
        </dl>
    </div>
</asp:PlaceHolder>
<asp:PlaceHolder ID="noUserContainer" runat="server">
    <asp:Literal ID="labNoUser" runat="server"></asp:Literal>
</asp:PlaceHolder>
