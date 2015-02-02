<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.CaptchaModule" 
    Codebehind="CaptchaModule.ascx.cs" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:UpdatePanel ID="upCaptcha" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
        <div class="captcha group form spacer--secondary">
            <div class="captcha--image">
                <asp:Image ID="imgCaptcha" runat="server" CssClass="scale-with-grid" />
            </div>
            <div class="captcha--button">
                <asp:ImageButton ID="btnRefresh" runat="server" OnClick="btnRefresh_Click" CausesValidation="false" />
            </div>
            <div class="captcha--field captcha-validation">
                <asp:TextBox ID="txtCaptchaCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqCaptchaCode" runat="server" ControlToValidate="txtCaptchaCode"
                SetFocusOnError="true" CssClass="ValidatorAdapter" Display="dynamic" Text="!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="group">
            <div class="discussion--message">
                <p><strong><%= DefaultResources.Captcha_ImageTitle %></strong></p>
                <p><%= DefaultResources.Captcha_ShortInfo %></p>
            </div>

            <div class="error" id="rowInvalidCaptcha" runat="server" ><asp:Label ID="labInvalidCaptcha" runat="server"></asp:Label></div>

        </div>
    </ContentTemplate>
</asp:UpdatePanel>