<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="Mono.Web.Parts.ContactFormModule" 
    Codebehind="ContactFormModule.ascx.cs" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>
<%@ Register TagPrefix="Mono" Assembly="Mono.Web" Namespace="Mono.Web.Captcha" %>


<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<asp:UpdatePanel ID="updatePanel" ChildrenAsTriggers="true" runat="server" UpdateMode="Always">
        <ContentTemplate>

        <asp:panel cssclass="contact-us" runat="server" ID="pnlForm">
            <h2><asp:Literal ID="lblTitle" runat="server">Send us an e-mail</asp:Literal></h2> 
                <div class="group form">
                    <div class="form--half">
                        <asp:Label ID="lblName" AssociatedControlID="txtName" runat="server" CssClass="form--label">Name:</asp:Label>
                        <asp:TextBox ID="txtName" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtName" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form--half">
                        <asp:Label ID="lblEMail" AssociatedControlID="txtEMail" runat="server" CssClass="form--label">E-mail:</asp:Label>
                        <asp:TextBox ID="txtEMail" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtEMail" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmail" CssClass="validator" ControlToValidate="txtEMail"
                    Display="Dynamic" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                    runat="server"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form--half">
                        <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" CssClass="form--label">Subject:</asp:Label>
                        <asp:TextBox ID="txtSubject" runat="server" class="short-textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqSubject" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtSubject" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblMessage" AssociatedControlID="txtMessage" CssClass="form--label" runat="server">Message text:</asp:Label>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="6"></asp:TextBox>
                </div>
                <div>
                    <Mono:InvisibleCaptcha id="spamValidator" runat="server" ErrorMessage="Antispam protection has been triggered!" Display="Dynamic" Text="*"></Mono:InvisibleCaptcha>
                </div>
                <div><asp:Label CssClass="contact--warning" ID="lblInfo" runat="server" ></asp:Label></div>
                <div>
                    <asp:LinkButton ID="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" CssClass="btn--small" Text="Send now" />
                </div>
        </asp:panel>
        <asp:Panel runat="server"  cssclass="contact-us input-form" ID="pnlNotification">
            <h2><asp:Literal ID="ltlNotification" runat="server"></asp:Literal></h2> 
        </asp:Panel>
    </ContentTemplate>

</asp:UpdatePanel>

