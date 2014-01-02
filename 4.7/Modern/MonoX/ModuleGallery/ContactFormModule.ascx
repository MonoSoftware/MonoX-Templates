<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.ContactFormModule" 
    Codebehind="ContactFormModule.ascx.cs" %>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>


<div class="contact-us">
    <div class="contact-holder">
        <dl>
            <dd>
                <h2><asp:Literal ID="lblTitle" runat="server"></asp:Literal></h2>
            </dd>
            <dd>
                <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" CssClass="validation-summary" ShowSummary="true" EnableClientScript="true" />
            </dd>
            <dd>
                <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" class="short-textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" CssClass="validator ValidatorAdapter" ControlToValidate="txtName" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            </dd>
            <dd>
                <asp:Label ID="lblEMail" AssociatedControlID="txtEMail" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtEMail" runat="server" class="short-textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEMail" runat="server" CssClass="validator ValidatorAdapter" ControlToValidate="txtEMail" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmail" CssClass="validator ValidatorAdapter" ControlToValidate="txtEMail"
                    Display="Dynamic" Font-Bold="true" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                    runat="server"></asp:RegularExpressionValidator>
            </dd>
            <dd>
                <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" CssClass="label-width"></asp:Label>
                <asp:TextBox ID="txtSubject" runat="server" class="short-textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqSubject" runat="server" CssClass="validator ValidatorAdapter" ControlToValidate="txtSubject" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
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