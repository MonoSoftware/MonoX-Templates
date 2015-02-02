<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.CaptchaModule" 
    Codebehind="CaptchaModule.ascx.cs" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:UpdatePanel ID="upCaptcha" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
        <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
        <dl class="captcha">
            <dd><h3><%= DefaultResources.Captcha_ImageTitle %></h3></dd>
            <dd class="captcha-form">
                <div class="image-captcha">
                    <asp:Image ID="imgCaptcha" runat="server" />
                </div>
                <div class="captcha-input jq_FieldValidatorWrapper">
                    <asp:ImageButton ID="btnRefresh" runat="server" OnClick="btnRefresh_Click" CausesValidation="false" CssClass="refresh" />
                    <asp:TextBox ID="txtCaptchaCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCaptchaCode" runat="server" ControlToValidate="txtCaptchaCode" SetFocusOnError="true" CssClass="validator" Display="dynamic" Text="!"></asp:RequiredFieldValidator>
                </div>
            </dd>
            <dd>
                <label class="small-text"><%= DefaultResources.Captcha_ShortInfo %></label>
                <hr />
                <label class="small-text"><%= DefaultResources.Captcha_LongInfo %></label>
            </dd>
            <dd id="rowInvalidCaptcha" runat="server">
                <asp:Label ID="labInvalidCaptcha" runat="server"></asp:Label>
            </dd>
        </dl>
    </ContentTemplate>
</asp:UpdatePanel>