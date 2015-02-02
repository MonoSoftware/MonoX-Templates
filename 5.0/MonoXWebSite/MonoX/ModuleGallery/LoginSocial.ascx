<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="LoginSocial.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.LoginSocial" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<!--<div class="or-use">
    <div><%= PageResources.Login_Or %></div>
</div>-->
<div class="social-holder">
    <div class="social-headline">
        <h5><%= DefaultResources.LoginSocial_SubTitle %></h5>
    </div>
    <div class="social-buttons">
    <div class="social-button-holder">
        <asp:LinkButton ID="btnFacebook" runat="server" CausesValidation="false" OnClick="btn_Click" class="regular-button facebook" CommandArgument="FACEBOOK">
            <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Sn.facebook_login_png) %>" alt="<%= DefaultResources.LoginSocial_LoginWithFacebook %>" />
            <span><%= DefaultResources.LoginSocial_LoginWithFacebook %></span>
        </asp:LinkButton>
    </div>
    <div class="social-button-holder">
        <asp:LinkButton ID="btnGoogle" runat="server" CausesValidation="false" OnClick="btn_Click" class="regular-button google" CommandArgument="GOOGLE">
            <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Sn.google_login_png) %>" alt="<%= DefaultResources.LoginSocial_LoginWithGoogle %>" />
            <span><%= DefaultResources.LoginSocial_LoginWithGoogle %></span>
        </asp:LinkButton>
    </div>
    <div class="social-button-holder">
        <asp:LinkButton ID="btnLinkedIn" runat="server" CausesValidation="false" OnClick="btn_Click" class="regular-button linkedin" CommandArgument="LINKEDIN">
            <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Sn.linkedin_login_png) %>" alt="<%= DefaultResources.LoginSocial_LoginWithLinkedIn %>" />
            <span><%= DefaultResources.LoginSocial_LoginWithLinkedIn %></span>
        </asp:LinkButton>
    </div>
    <div class="social-button-holder">
        <asp:LinkButton ID="btnTwitter" runat="server" CausesValidation="false" OnClick="btn_Click" class="regular-button twitter" CommandArgument="TWITTER">
            <img src="<%= ResolveUrl(MonoSoftware.MonoX.Paths.App_Themes.img.Sn.twitter_login_png) %>" alt="<%= DefaultResources.LoginSocial_LoginWithTwitter %>" />
            <span><%= DefaultResources.LoginSocial_LoginWithTwitter %></span>
        </asp:LinkButton>
    </div>
    </div>
    <asp:Panel runat="server" ID="pnlEmail" Visible="true">
        <div class="social-mail">
            <hr />
            <h3><%= DefaultResources.LoginSocial_Title %></h3>
            <dl>
                <dd>
                    <asp:Literal runat="server" ID="ltlEmailInfo"></asp:Literal>
                </dd>
                <dd class="jq_FieldValidatorWrapper">
                    <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server"><%= DefaultResources.LoginSocial_Email %></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldRequiredEmail" runat="server" ControlToValidate="txtEmail" Text="!" CssClass="validator" Display="Dynamic" />
                    <MonoXControls:RegExValidator ID="regexEmail" CssClass="validator"  ControlToValidate="txtEmail" Display="Dynamic" ValidationType="EMail" runat="server"></MonoXControls:RegExValidator>
                </dd>
                <dd>
                    <MonoX:StyledButton ID="btnSaveEmail" runat="server" CssClass="styled-button" OnClick="btnSaveEmail_Click" Text='<%$ Code:DefaultResources.LoginSocial_ProceedButton %>'></MonoX:StyledButton>
                </dd>
                <dd>
                    <asp:literal ID="ltlWarning" runat="server"></asp:literal>
                </dd>
            </dl>
        </div>    
    </asp:Panel>
</div>
