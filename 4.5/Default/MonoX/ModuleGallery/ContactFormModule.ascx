<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.ContactFormModule" 
    Codebehind="ContactFormModule.ascx.cs" %>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<div class="contact-us">
<table class="input-form" cellpadding="0" cellspacing="0">   
    <tr>
        <td colspan="2">
            <div style="position: relative;">
                <div ID="panInfo"  runat="server" class="contact-info">
                    <h2><%# DefaultResources.ContactForm_ContactInfoTitle %></h2>                    
                    <asp:PlaceHolder ID="panWebSiteName" runat="server"><strong>&nbsp;</strong><strong><%# A_WebSiteName%></strong></asp:PlaceHolder>
                    <asp:PlaceHolder ID="panPhone" runat="server"><strong><%# DefaultResources.ContactForm_PhoneLabel %></strong><span><%# A_Phone%></span></asp:PlaceHolder>
                    <asp:PlaceHolder ID="panFax" runat="server"><strong><%# DefaultResources.ContactForm_FaxLabel %></strong><span><%# A_Fax%></span></asp:PlaceHolder>
                    <asp:PlaceHolder ID="panAddress" runat="server"><strong><%# DefaultResources.ContactForm_AddressLabel %></strong><span><%# A_Address%></span></asp:PlaceHolder>
                    <asp:PlaceHolder ID="panZipCode" runat="server"><strong>&nbsp;</strong><span><%# A_ZipCode%>&nbsp;<%# A_City%></span></asp:PlaceHolder>
                    <asp:PlaceHolder ID="panCountry" runat="server"><strong>&nbsp;</strong><span><%# A_Country%></span></asp:PlaceHolder>
                </div>
                <h2><asp:Literal ID="lblTitle" runat="server"></asp:Literal></h2> 
                <dl>
                    <dd>
                        <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" CssClass="label-width"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtName" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </dd>
                
                    <dd>
                        <asp:Label ID="lblEMail" AssociatedControlID="txtEMail" runat="server" CssClass="label-width"></asp:Label>
                        <asp:TextBox ID="txtEMail" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEMail" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtEMail" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" CssClass="label-width"></asp:Label>
                        <asp:TextBox ID="txtSubject" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqSubject" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtSubject" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <asp:Label ID="lblMessage" AssociatedControlID="txtMessage" runat="server"></asp:Label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                    </dd>
                </dl>
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <monox:CaptchaModule ID="captchaModule" runat="server" />
        </td>
    </tr>    
    <tr>
        <td>
            <strong><asp:Label ID="lblInfo" runat="server" ></asp:Label></strong>
        </td>
    </tr>
</table>
<asp:LinkButton ID="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" CssClass="send-now-button" /> 
</div>