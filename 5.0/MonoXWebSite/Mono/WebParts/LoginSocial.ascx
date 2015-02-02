<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginSocial.ascx.cs" Inherits="Mono.WebParts.LoginSocial" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>

<h2 class="title--main__center">Login with your social account</h2>
<div class="social login spacer--primary">
    <div class="social--box">
        <asp:LinkButton ID="btnFacebook" runat="server" OnClick="btn_Click" class="btn--social btn--block" CommandArgument="FACEBOOK">
            <span class="icon-facebook">Facebook</span>
        </asp:LinkButton>
    </div>
    <div class="social--box">
        <asp:LinkButton ID="btnGoogle" runat="server" OnClick="btn_Click" class="btn--social btn--block" CommandArgument="GOOGLE">
            <span class="icon-google">Google</span>
        </asp:LinkButton>
    </div>
    <div class="social--box">
        <asp:LinkButton ID="btnTwitter" runat="server" OnClick="btn_Click" class="btn--social btn--block" CommandArgument="TWITTER">
            <span class="icon-twitter">Twitter</span>
        </asp:LinkButton>
    </div>                   
</div>


<div class="login">
    <asp:Panel runat="server" ID="pnlEmail" Visible="true">


                <h3 class="title--main__center"><%= DefaultResources.LoginRpx_Title %></h3>
                <div class="login form">
                    <div class="login--full"><p class="article--paragraph"><asp:Literal runat="server" ID="ltlEmailInfo"></asp:Literal></p></div>
                    <div class="login--field-d">
                        <asp:Label CssClass="form--label" ID="lblEmail" AssociatedControlID="txtEmail" runat="server"><%= DefaultResources.LoginRpx_Email %></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vldRequiredEmail" runat="server" ControlToValidate="txtEmail" Text="!" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                        <MonoXControls:RegExValidator ID="regexEmail" CssClass="ValidatorAdapter"  ControlToValidate="txtEmail" Display="Dynamic" Text="!" ValidationType="EMail" runat="server"></MonoXControls:RegExValidator>
                    </div>
                    <div class="login--submit">
                        <MonoX:StyledButton ID="btnSaveEmail" runat="server" CssClass="btn--small" OnClick="btnSaveEmail_Click" Text='<%$ Code:DefaultResources.LoginSocial_ProceedButton %>'></MonoX:StyledButton>
                    </div>
                </div>    
    </asp:Panel>
    <asp:literal ID="ltlWarning" runat="server"></asp:literal>
</div>

