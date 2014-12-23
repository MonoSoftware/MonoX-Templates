<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="UserManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.UserManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>    
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification"></monox:ValidationHandler>
<asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
    <Scripts>
        <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
    </Scripts>
</asp:ScriptManagerProxy>

<div class="AdminContainer">
    <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true">
        <CustomFilterTemplate>
            <div class="app-roles-holder">
                <div id="rowAppFilter" runat="server">
                    <%-- Note: Hidden but left for possible future use --%>
                    <label style="margin-bottom: 5px"><asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                    <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlApps_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div>
                    <label style="margin-bottom: 5px"><asp:Literal ID="labRoles" runat="server" Text='<%$ Code: AdminResources.UserManager_labRoles %>'></asp:Literal></label>
                    <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
        </CustomFilterTemplate>
        <Columns>
            <mono:LiteGridBoundField DataField="Id" Visible="false" />
            <mono:LiteGridBoundField DataField="UserName" HeaderText='<%$ Code: AdminResources.UserManager_sortUserName %>' SortExpression="UserName" />
            <mono:LiteGridBoundField DataField="Email" HeaderText='<%$ Code: AdminResources.UserManager_sortEMail %>' SortExpression="Email" />
            <mono:LiteGridTemplateField HeaderText='<%$ Code: AdminResources.UserManager_labComment %>' SortExpression="Comment" >
                <ItemTemplate>

                        <%# MonoSoftware.MonoX.Utilities.MonoXUtility.GetSubString(Eval("AspnetMembership.Comment") != null ? Eval("AspnetMembership.Comment").ToString() : String.Empty, 0, 500)%>
                    
                </ItemTemplate>
            </mono:LiteGridTemplateField>
            <mono:LiteGridBoundField DataField="IsApproved" HeaderText='<%$ Code: AdminResources.UserManager_sortIsApproved %>' SortExpression="IsApproved" />
            <mono:LiteGridBoundField DataField="IsLockedOut" HeaderText='<%$ Code: AdminResources.UserManager_sortIsLockedOut %>' SortExpression="IsLockedOut" />
            <mono:LiteGridBoundField DataField="LastActivityDate" HeaderText='<%$ Code: AdminResources.UserManager_sortLastActivityDate %>' SortExpression="LastActivityDate" />
            <mono:LiteGridBoundField DataField="FailedPasswordAttemptCount" HeaderText='<%$ Code: AdminResources.UserManager_sortFailedPasswordAttempts %>' SortExpression="FailedPasswordAttemptCount" />
            <mono:LiteGridBoundField DataField="FailedPasswordAnswerAttemptCount" HeaderText='<%$ Code: AdminResources.UserManager_sortFailedPasswordAnswerAttempts %>' SortExpression="FailedPasswordAnswerAttemptCount" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Literal ID="labEmptyMessage" runat="server" Text='<%$ Code: AdminResources.UserManager_labEmptyMessage %>'></asp:Literal>
        </EmptyDataTemplate>
        <CustomActionsTemplate>
            <asp:Button ID="btnApproveUser" runat="server" CssClass="AdminLargeButton" OnClick="btnApproveUser_Click" Text='<%$ Code: AdminResources.UserManager_btnApproveUser %>'></asp:Button>
            &nbsp;
            <asp:Button ID="btnLockUser" runat="server" CssClass="AdminLargeButton" OnClick="btnLockUser_Click" Text='<%$ Code: AdminResources.UserManager_btnLockUser %>'></asp:Button>
            &nbsp;
            <asp:Button ID="btnResetFailed" runat="server" CssClass="AdminLargeButton" Text='<%$ Code: AdminResources.UserManager_btnResetFailed %>' OnClick="btnResetFailed_Click"></asp:Button>
            <br />
        </CustomActionsTemplate>
        <ContentTemplate>
            <asp:PlaceHolder ID="plhModification" runat="server">
                <div class="AdminGridFooterContent user-manager-edit">
                <dl>

                    <asp:PlaceHolder id="plhAppEdit" runat="server" Visible="false">
                        <dd id="rowAppEdit" runat="server">
                            <label><asp:Literal ID="labAppNameEdit" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                            <asp:DropDownList ID="ddlAppEdit" runat="server" CssClass="select"></asp:DropDownList>
                        </dd>
                    </asp:PlaceHolder>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labUsername" runat="server" Text='<%$ Code: AdminResources.UserManager_labUsername %>'></asp:Literal></label>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredUserName" runat="server" CssClass="validator" SetFocusOnError="true" Display="Dynamic"
                            ControlToValidate="txtUserName" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_requiredUserName %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validateUserName" runat="server" CssClass="validator" SetFocusOnError="true" Display="Dynamic"
                            ControlToValidate="txtUserName" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateUserName %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labMobileAlias" runat="server" Text='<%$ Code: AdminResources.UserManager_labMobileAlias %>'></asp:Literal></label>
                        <asp:TextBox ID="txtMobileAlias" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <mono:RegExValidator ID="validateMobileAlias" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtMobileAlias" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateMobileAlias %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labMobilePin" runat="server" Text='<%$ Code: AdminResources.UserManager_labMobilePin %>'></asp:Literal></label>
                        <asp:TextBox ID="txtMobilePin" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <mono:RegExValidator ID="validateMobilePin" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtMobilePin" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateMobilePin %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="role-chk chkbox">
                        <asp:CheckBox ID="chkIsAnonymous" runat="server"></asp:CheckBox>
                        <label><asp:Literal ID="labIsAnonymous" runat="server" Text='<%$ Code: AdminResources.UserManager_labIsAnonymous %>'></asp:Literal></label>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labLastActivityDate" runat="server" Text='<%$ Code: AdminResources.UserManager_labLastActivityDate %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtLastActivityDate" Runat="server">                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker> 
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labPassword" runat="server" Text='<%$ Code: AdminResources.UserManager_labPassword %>'></asp:Literal></label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredPassword" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtPassword" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_requiredPassword %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validatePassword" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtPassword" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validatePassword %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labEmail" runat="server" Text='<%$ Code: AdminResources.UserManager_labEmail %>'></asp:Literal></label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <mono:RegExValidator ID="validateEmail" runat="server" SetFocusOnError="true"  CssClass="validator" ControlToValidate="txtEmail" Display="Dynamic"
                            ValidationGroup="Modification" ValidationType="eMail" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateEmail %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labPasswordQuestion" runat="server" Text='<%$ Code: AdminResources.UserManager_labPasswordQuestion %>'></asp:Literal></label>
                        <asp:TextBox ID="txtPasswordQuestion" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPasswordQuestion" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtPasswordQuestion" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_reqPasswordQuestion %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validatePasswordQuestion" runat="server" CssClass="validator" SetFocusOnError="true" Display="Dynamic"
                            ControlToValidate="txtPasswordQuestion" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validatePasswordQuestion %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labPasswordAnswer" runat="server" Text='<%$ Code: AdminResources.UserManager_labPasswordAnswer %>'></asp:Literal></label>
                        <asp:TextBox ID="txtPasswordAnswer" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPasswordAnswer" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                        ControlToValidate="txtPasswordAnswer" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_reqPasswordAnswer %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validatePasswordAnswer" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtPasswordAnswer" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validatePasswordAnswer %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="role-chk chkbox">
                        <asp:CheckBox ID="chkIsApproved" runat="server" ></asp:CheckBox>
                        <label><asp:Literal ID="labIsApproved" runat="server" Text='<%$ Code: AdminResources.UserManager_labIsApproved %>'></asp:Literal></label>
                    </dd>
                    <dd class="role-chk chkbox">
                        <asp:CheckBox ID="chkIsLockedOut" runat="server"></asp:CheckBox>
                        <label><asp:Literal ID="labIsLockedOut" runat="server" Text='<%$ Code: AdminResources.UserManager_labIsLockedOut %>'></asp:Literal></label>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labCreateDate" runat="server" Text='<%$ Code: AdminResources.UserManager_labCreateDate %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtCreateDate" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker> 
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labLastLoginDate" runat="server" Text='<%$ Code: AdminResources.UserManager_labLastLoginDate %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtLastLoginDate" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker>  
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labLastPasswordChangedDate" runat="server" Text='<%$ Code: AdminResources.UserManager_labLastPasswordChangedDate %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtLastPasswordChangedDate" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker> 
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labLastLockoutDate" runat="server" Text='<%$ Code: AdminResources.UserManager_labLastLockoutDate %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtLastLockoutDate" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker> 
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labFailedPasswordAttemptCount" runat="server" Text='<%$ Code: AdminResources.UserManager_labFailedPasswordAttemptCount %>'></asp:Literal></label>
                        <asp:TextBox ID="txtFailedPasswordAttemptCount" runat="server" CssClass="input" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredFailedPasswordAttemptCount" runat="server" CssClass="validator" Display="Dynamic"
                            SetFocusOnError="true" ControlToValidate="txtFailedPasswordAttemptCount" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_requiredFailedPasswordAttemptCount %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validateFailedPasswordAttemptCount" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic"
                            ControlToValidate="txtFailedPasswordAttemptCount" ValidationGroup="Modification"
                            ValidationType="NumericInt32" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateFailedPasswordAttemptCount %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labFailedPasswordAttemptWindowStart" runat="server" Text='<%$ Code: AdminResources.UserManager_labFailedPasswordAttemptWindowStart %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtFailedPasswordAttemptWindowStart" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker> 
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labFailedPasswordAnswerAttemptCount" runat="server" Text='<%$ Code: AdminResources.UserManager_labFailedPasswordAnswerAttemptCount %>'></asp:Literal></label>
                        <asp:TextBox ID="txtFailedPasswordAnswerAttemptCount" runat="server" CssClass="input"
                            Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredFailedPasswordAnswerAttemptCount" runat="server"
                            SetFocusOnError="true" ControlToValidate="txtFailedPasswordAnswerAttemptCount" CssClass="validator" Display="Dynamic"
                            ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_requiredFailedPasswordAnswerAttemptCount %>'></asp:RequiredFieldValidator>
                        <mono:RegExValidator ID="validateFailedPasswordAnswerAttemptCount" runat="server" CssClass="validator" Display="Dynamic"
                            SetFocusOnError="true" ControlToValidate="txtFailedPasswordAnswerAttemptCount"
                            ValidationGroup="Modification" ValidationType="NumericInt32" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateFailedPasswordAnswerAttemptCount %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labFailedPasswordAnswerAttemptWindowStart" runat="server" Text='<%$ Code: AdminResources.UserManager_labFailedPasswordAnswerAttemptWindowStart %>'></asp:Literal></label>
                        <rad:RadDatePicker id="txtFailedPasswordAnswerAttemptWindowStart" Runat="server" >                                                    
                            <datepopupbutton ></datepopupbutton>
                        </rad:RadDatePicker>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper messages">
                        <label><asp:Literal ID="labComment" runat="server" Text='<%$ Code: AdminResources.UserManager_labComment %>'></asp:Literal></label>
                        <asp:TextBox ID="txtComment" TextMode="MultiLine" runat="server" CssClass="input" Rows="5" Width="100%"></asp:TextBox>
                        <mono:RegExValidator ID="validateComment" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic" ControlToValidate="txtComment" 
                            ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateComment %>'>
                        </mono:RegExValidator>
                    </dd>
                    <dd class="dual-boxes">
                        <label><asp:Literal ID="labUserRoles" runat="server" Text='<%$ Code: AdminResources.UserManager_labUserRoles %>'></asp:Literal></label>
                        <div class="dual-item">
                            <label><asp:Literal ID="labAvailableRoles" runat="server" Text='<%$ Code: AdminResources.UserManager_labAvailableRoles %>'></asp:Literal></label>
                            <asp:ListBox runat="server" ID="lbRoles" SelectionMode="Multiple"  Rows="5" CssClass="select"></asp:ListBox>
                        </div>
                        <div class="dual-buttons">
                            <asp:ImageButton runat="server" ID="addImg" ImageUrl="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.All.DefaultAdmin.img.UserManagement.frm_add_gif %>" AlternateText="Add" ToolTip="Add" />
                            <asp:ImageButton runat="server" ID="removeImg" ImageUrl="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.All.DefaultAdmin.img.UserManagement.frm_remove_gif %>" AlternateText="Remove" ToolTip="Remove" />
                        </div>
                        <div class="dual-item">
                            <label><asp:Literal ID="labUserInRoles" runat="server" Text='<%$ Code: AdminResources.UserManager_labUserInRoles %>'></asp:Literal></label>
                            <asp:ListBox runat="server" ID="lbUserInRoles"  Rows="5" SelectionMode="Multiple" CssClass="select"></asp:ListBox>
                        </div>
                    </dd>
                </dl>
            </div>
            </asp:PlaceHolder>
        </ContentTemplate>
    </monox:GridViewEditBox>
</div>
</asp:Content>
