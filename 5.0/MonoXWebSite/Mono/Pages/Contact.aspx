<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="Contact Mono Software"
    CodeBehind="Contact.aspx.cs"
    Inherits="Mono.Web.Pages.Contact" %>

<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register TagPrefix="MonoX" TagName="ContactForm" Src="~/Mono/WebParts/ContactFormModule.ascx" %>

<asp:Content ID="Cp1" ContentPlaceHolderID="Cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
	        <h1 class="title--primary">Contact us</h1>
            <p>Whether you want to share your thoughts, or just ask a question, we'd love to hear from you.</p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">
    <div class="l--row spacer--box article--post">
        <MonoX:ContactForm ID="ctlContact" runat="server"
            A_WebSiteName="Mono Software" A_Address="Bihacka 1d" A_City="Osijek" 
            A_ZipCode="31000" A_Country="Croatia" A_Phone="+385 31 213 966" A_Fax="+385 31 213 967"  EnableSSL="false" A_EMail="info@mono-software.com">
        </MonoX:ContactForm>
    </div>
</asp:Content>