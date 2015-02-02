<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.ContactFormModule" 
    Codebehind="ContactFormModule.ascx.cs" %>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<div class="contact-us">
    <div class="contact-holder">
        <dl>
            <dd>
                <h2><asp:Literal ID="lblTitle" runat="server"></asp:Literal></h2>
            </dd>
            <dd class="validation-wrapper">
                <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" CssClass="validation-summary" ShowSummary="true" EnableClientScript="true" />
            </dd>
            <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" CssClass="validator" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </dd>
            <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblEMail" AssociatedControlID="txtEMail" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEMail" runat="server" CssClass="validator" ControlToValidate="txtEMail" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmail" CssClass="validator" ControlToValidate="txtEMail"
                    Display="Dynamic" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                    runat="server"></asp:RegularExpressionValidator>
            </dd>
             <dd class="jq_FieldValidatorWrapper">
                <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqSubject" runat="server" CssClass="validator" ControlToValidate="txtSubject" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <asp:Label ID="lblMessage" AssociatedControlID="txtMessage" runat="server"></asp:Label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
            </dd>
            <dd>
                <monox:CaptchaModule ID="captchaModule" runat="server" />
            </dd>
            <dd>
                <strong><asp:Label ID="lblInfo" runat="server" ></asp:Label></strong>
            </dd>
            <dd>
                <asp:LinkButton ID="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" CssClass="regular-button" />
            </dd>
        </dl>
    </div>
    <div ID="panInfo"  runat="server" class="contact-info-holder">
        <div class="contact-info">
            <h2><%# DefaultResources.ContactForm_ContactInfoTitle %></h2>
            <ul>
                <li><asp:PlaceHolder ID="panWebSiteName" runat="server"><strong><%# A_WebSiteName%></strong><span>&nbsp;</span></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="panPhone" runat="server"><strong><%# DefaultResources.ContactForm_PhoneLabel %></strong><span><%# A_Phone%></span></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="panFax" runat="server"><strong><%# DefaultResources.ContactForm_FaxLabel %></strong><span><%# A_Fax%></span></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="panAddress" runat="server"><strong><%# DefaultResources.ContactForm_AddressLabel %></strong><span><%# A_Address%></span></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="panZipCode" runat="server"><strong>&nbsp;</strong><span><%# A_ZipCode%>&nbsp;<%# A_City%></span></asp:PlaceHolder></li>
                <li><asp:PlaceHolder ID="panCountry" runat="server"><strong>&nbsp;</strong><span><%# A_Country%></span></asp:PlaceHolder></li>
            </ul>
        </div>
    </div>
</div>