<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.PasswordRecovery" Codebehind="PasswordRecovery.ascx.cs" Title="Password recovery" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Src="~/Mono/WebParts/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>

<div id="panRequest" runat="server">

    <h2 class="title--main__center"><%= DefaultResources.PasswordRecovery_Title %></h2>
    
    <div class="login form">
        <div id="Div1" runat="server">
            <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
        </div>
        <div>
            <label class="form--label" for="<%= txtUserName.ClientID %>"><%= DefaultResources.PasswordlRecovery_UserName %></label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
        </div>
    </div>
    <div class="login">
        <div>
            <monox:CaptchaModule ID="captchaModule" runat="server" />
        </div>
        <div class="article--post">
            <asp:Label ID="labMessage" runat="server"></asp:Label>
        </div>
        <div>
            <MonoX:StyledButton ID="btnSend" runat="server" CssClass="btn--small"></MonoX:StyledButton>
        </div>
    </div>
</div>    
<div id="panChange" runat="server">
    <div class="eight columns">
        <h2 class="eight columns"><%= DefaultResources.PasswordRecovery_TitleChange %></h2>
        <div class="eight columns">
            <asp:ValidationSummary ID="validationSummaryChange" CssClass="validation-summary" runat="server" />
        </div>
        <dl>
            <dd class="eight columns">
                <label for="<%= txtPassword.ClientID %>">
                    <%= DefaultResources.MembershipEditor_Password %></label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword"
                    Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd class="eight columns">
                <label for="<%= txtRepeatPassword.ClientID %>">
                    <%= DefaultResources.MembershipEditor_RepeatPassword %></label>
                <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldRequiredRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword"
                    Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                <asp:CompareValidator ID="vldCompareRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword"
                    Text="!" SetFocusOnError="true" ControlToCompare="txtPassword" Operator="Equal"
                    CssClass="validator ValidatorAdapter" Display="Dynamic"></asp:CompareValidator>
            </dd>
            <dd class="eight columns">
                <asp:Label ID="labMessageChange" runat="server"></asp:Label>
            </dd>
            <dd class="eight columns">
                <MonoX:StyledButton ID="btnChange" runat="server" CssClass="CssFormButton"></MonoX:StyledButton>            
            </dd>
        </dl>
    </div>
</div>