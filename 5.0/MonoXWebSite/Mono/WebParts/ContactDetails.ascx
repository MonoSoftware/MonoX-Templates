<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactDetails.ascx.cs" Inherits="Mono.Web.Parts.ContactDetails" %>
<script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>

<div class="contact-details">
    <p>
        <a href='<%= Mono.Web.Utilities.EncodeAddress("mailto:info@mono-software.com")%>' class="mail-contact">General information</a>    
        <a href='<%= Mono.Web.Utilities.EncodeAddress("mailto:sales@mono-software.com")%>' class="mail-contact">Sales department</a>    
        <a href='<%= Mono.Web.Utilities.EncodeAddress("mailto:support@mono-software.com")%>' class="mail-contact">Technical support</a>
        <a href="~/contact/" runat="server" class="mail-contact">Contact form</a>
        <a href='<%= Mono.Web.Utilities.EncodeAddress("skype:monosoftware?call") %>' onclick='return skypeCheck();' class="mail-contact phone-contact">Skype support</a>    
        <a href='<%= Mono.Web.Utilities.EncodeAddress("skype:+38531213966?call")%>' class="mail-contact phone-contact">+385 31 2<span style="display: none;">_</span>13 966</a>
    </p>
</div>