<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.MembershipEditor" Codebehind="MembershipEditor.ascx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>

<%@ Register Src="~/MonoX/Controls/TimeZonePicker.ascx" TagPrefix="monox" TagName="TimeZonePicker" %>

<div class="user-account">
    <h2><%= Page.User.Identity.IsAuthenticated ? DefaultResources.MembershipEditor_Title_UpdateAccount : DefaultResources.MembershipEditor_Title_CreateAccount %></h2>
    <div class="input-form">
        <dl>
            <dd id="Div1" runat="server">
                <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
            </dd>
            <dd class="clearfix">
                <label class="inline-label" for="<%= txtUserName.ClientID %>"><%= DefaultResources.MembershipEditor_UserName %></label>
                <div class="control-holder">
                    <img runat="server" src="~/App_Themes/Default/img/icon-user-name.png" alt="User name icon" />
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:Label CssClass="disabled" ID="lblUserName" runat="server"></asp:Label>
                </div>
                <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                <asp:CustomValidator ID="vldCustomUserName" runat="server" ControlToValidate="txtUserName" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd class="clearfix">
                <label class="inline-label" for="<%= txtEmail.ClientID %>"><%= DefaultResources.MembershipEditor_Email %></label>
                <div class="control-holder">
                    <img id="Img2" runat="server" src="~/App_Themes/Default/img/icon-mail-activation.png" alt="Password icon" />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="vldRequiredEmail" runat="server" ControlToValidate="txtEmail" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="vldRegexEmail" runat="server" ControlToValidate="txtEmail" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd class="clearfix">
                <label class="inline-label" for="<%= txtPassword.ClientID %>"><%= DefaultResources.MembershipEditor_Password %></label>
                <div class="control-holder">
                    <img runat="server" src="~/App_Themes/Default/img/icon-pwd.png" alt="Password icon" />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
            </dd>
            <dd class="clearfix">
                <label class="inline-label" for="<%= txtRepeatPassword.ClientID %>"><%= DefaultResources.MembershipEditor_RepeatPassword %></label>
                <div class="control-holder">
                    <img runat="server" src="~/App_Themes/Default/img/icon-pwd.png" alt="Password icon" />
                    <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="vldRequiredRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" Text="!" SetFocusOnError="true" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                <asp:CompareValidator ID="vldCompareRepeatPassword" runat="server" ControlToValidate="txtRepeatPassword" Text="!" SetFocusOnError="true" ControlToCompare="txtPassword" Operator="Equal" CssClass="validator ValidatorAdapter" Display="Dynamic"></asp:CompareValidator>
            </dd>
            <dd class="clearfix">
                <label class="inline-label" for="<%= ddlTimeZone.ClientID %>"><%= DefaultResources.MembershipEditor_TimeZone %></label>
                <div class="control-holder">
                    <img runat="server" src="~/App_Themes/Default/img/icon-timezone.png" alt="Password icon" />
                    <monox:TimeZonePicker id="ddlTimeZone" runat="server"></monox:TimeZonePicker>
                </div>
            </dd>
            <asp:PlaceHolder ID="plhRememberMe" runat="server">
                <dd class="offset">
                    <asp:CheckBox ID="chkRememberMe" runat="server" />
                    <label for="<%= chkRememberMe.ClientID %>"><%= DefaultResources.MembershipEditor_RememberMe %></label>                
                </dd>
            </asp:PlaceHolder>
            <dd class="offset">
                <asp:Label ID="labInfo" runat="server"></asp:Label>
            </dd>
        </dl>
    </div>
    <div>
        <MonoX:StyledButton ID="btnCreateAccount" runat="server" CssClass="styled-button-blue"></MonoX:StyledButton>
        <MonoX:StyledButton ID="btnUpdateAccount" runat="server" CssClass="styled-button-blue"></MonoX:StyledButton>
    </div>
</div>