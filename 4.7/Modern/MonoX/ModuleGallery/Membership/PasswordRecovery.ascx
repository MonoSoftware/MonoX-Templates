<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.PasswordRecovery" Codebehind="PasswordRecovery.ascx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register Src="~/MonoX/ModuleGallery/CaptchaModule.ascx" TagPrefix="monox" TagName="CaptchaModule" %>

<div id="panRequest" runat="server" class="user-account activation-email-recovery">
    <h2><%= DefaultResources.PasswordRecovery_Title %></h2>
    <div>
        <dl>
            <dd id="Div1" runat="server">
                <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
            </dd>
            <dd>
                <label for="<%= txtUserName.ClientID %>" class="inline-label"><%= DefaultResources.PasswordlRecovery_UserName %></label>
                <div class="pass-control-holder">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <img id="Img1" runat="server" src="~/App_Themes/Modern/img/privacy-icon.png" alt="Password icon" />
                </div>
                <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd>
                <hr />
                <monox:CaptchaModule ID="captchaModule" runat="server" />
            </dd>
            <dd>
                <asp:Label ID="labMessage" runat="server"></asp:Label>
            </dd>
        </dl>
    </div>
    <MonoX:StyledButton ID="btnSend" runat="server" CssClass="styled-button-blue"></MonoX:StyledButton>
</div>    
<div id="panChange" runat="server" class="login membership-module-container input-form">
    <div>
        <asp:ValidationSummary ID="validationSummaryChange" CssClass="validation-summary" runat="server" />
    </div>
    <div class="password-recovery">
        <h2><%= DefaultResources.PasswordRecovery_TitleChange %></h2>
        <asp:PlaceHolder ID="plhPasswordForm" runat="server">
        <dl>
            <dd>
                <label for="<%= txtPassword.ClientID %>">
                    <%= DefaultResources.MembershipEditor_Password %></label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword"
                    Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd>
                <label for="<%= txtRepeatPassword.ClientID %>">
                    <%= DefaultResources.MembershipEditor_RepeatPassword %></label>
                <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldRequiredRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword"
                    Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                <asp:CompareValidator ID="vldCompareRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword"
                    Text="!" SetFocusOnError="true" ControlToCompare="txtPassword" Operator="Equal"
                    CssClass="validator ValidatorAdapter" Display="Dynamic"></asp:CompareValidator>
            </dd>
            <dd>
                <asp:Label ID="labMessageChange" runat="server"></asp:Label>
            </dd>
        </dl>        
        </asp:PlaceHolder>
        <div class="input-form"> 
            <div>
                <strong><%= DefaultResources.PasswordRecovery_ChangeNote %></strong>
            </div>           
            <div class="button-holder">
                <MonoX:StyledButton ID="btnChange" runat="server" CssClass="CssFormButton"></MonoX:StyledButton>            
            </div>
        </div>            
    </div>
</div>