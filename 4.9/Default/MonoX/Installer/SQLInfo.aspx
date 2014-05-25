<%@ Page Language="C#" MasterPageFile="~/MonoX/Installer/Installer.master" AutoEventWireup="true"
    Inherits="MonoX_Installer_SQLInfo" Title="Database Server Info" Theme="Installer"
    CodeBehind="SQLInfo.aspx.cs" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ MasterType VirtualPath="~/MonoX/Installer/Installer.master" %>
<%@ Register TagPrefix="radcb" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cp_hd" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp_cnt" runat="Server">
    <monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>
    <asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
        <ContentTemplate>
            <div class="installer_sqlinfo">
                <h4>
                    <asp:Literal ID="labSubTitle" runat="server" Text='<%$ Code: InstallerResources.SQLInfo_labSubTitle %>'></asp:Literal>
                </h4>
                <div class="installer_data">
                    <div class="installer_editform"> 
                        <p>
                            <asp:Label ID="labSQLServerName" runat="server" AssociatedControlID="txtSQLServers" Text='<%$ Code: InstallerResources.SQLInfo_labSQLServerName %>'></asp:Label>
                        </p>
                    <div class="auth-holder">
                        <p class="ip-input-holder jq_FieldValidatorWrapper">
                            <asp:TextBox ID="txtSQLServers" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredServerName" runat="server" Display="Dynamic" CssClass="validator" ControlToValidate="txtSQLServers" 
                                SetFocusOnError="true" Text="*" ErrorMessage="<%$Code: InstallerResources.SQLInfo_EnterDatabaseServerName %>"></asp:RequiredFieldValidator>
                        </p>
                        <div id="panSQLAuthInfo" runat="server" class="installer_editform autenth" >
                            <p>
                                <asp:Label ID="labUsername" runat="server" AssociatedControlID="txtUsername" Text='<%$ Code: InstallerResources.SQLInfo_labUsername %>'></asp:Label>
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="labPassword" runat="server" AssociatedControlID="txtPassword" Text='<%$ Code: InstallerResources.SQLInfo_labPassword %>'></asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </p>
                        </div>
                    </div>
                        
                    </div>
                    <div class="installer_editform">
                        <asp:RadioButtonList ID="rblAuth" runat="server" RepeatLayout="UnorderedList" CssClass="installer_option"
                            AutoPostBack="true" OnSelectedIndexChanged="rblAuth_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text='<%$ Code: InstallerResources.SQLInfo_winAuthTitle %>'
                                Value="0"></asp:ListItem>
                            <asp:ListItem Text='<%$ Code: InstallerResources.SQLInfo_sqlAuthTitle %>' Value="1"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    
                </div>
                <p class="installer_note">
                    <asp:Literal ID="labNote" runat="server" Text='<%$ Code: String.Format(InstallerResources.SQLInfo_labNote, System.Security.Principal.WindowsIdentity.GetCurrent().Name) %>'></asp:Literal>
                </p>
                <div class="installer_editform database">
                    <h4>
                        <asp:Label ID="labDatabase" runat="server" AssociatedControlID="txtDatabase" Text='<%$ Code: InstallerResources.DatabaseInfo_labSubTitle %>'></asp:Label>
                    </h4>
                    <p>
                        <asp:Label ID="labDatabaseName" runat="server" AssociatedControlID="txtSQLServers" Text='<%$ Code: InstallerResources.SQLInfo_labDatabaseName %>'></asp:Label>
                    </p>
                    <p class="jq_FieldValidatorWrapper">
                        <asp:TextBox ID="txtDatabase" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requireDBName" runat="server" CssClass="validator" Display="Dynamic" ControlToValidate="txtDatabase" 
                            SetFocusOnError="true" Text="*" ErrorMessage="<%$Code: InstallerResources.SQLInfo_EnterDatabaseName %>"></asp:RequiredFieldValidator>
                    </p>
                </div>
                <div class="installer_editform">
                    <asp:RadioButton ID="btnCreateNew" runat="server" CssClass="installer_option" GroupName="ActionType" 
                        Text='<%$ Code: InstallerResources.DatabaseInfo_btnCreateNew %>'></asp:RadioButton>
                    <p class="installer_note">
                        <asp:Literal ID="labNote1" runat="server" Text='<%$ Code: InstallerResources.DatabaseInfo_labNote1 %>'></asp:Literal>
                    </p>
                    <asp:RadioButton ID="btnExisting" runat="server" CssClass="installer_option" GroupName="ActionType"
                        Text='<%$ Code: InstallerResources.DatabaseInfo_btnExisting %>'></asp:RadioButton>
                    <p class="installer_note">
                        <asp:Literal ID="labNote2" runat="server" Text='<%$ Code: InstallerResources.DatabaseInfo_labNote2 %>'></asp:Literal>
                    </p>
                    <asp:RadioButton ID="btnMultiApp" runat="server" CssClass="installer_option" GroupName="ActionType"
                        Text='<%$ Code: InstallerResources.DatabaseInfo_btnMultiApp %>' Visible="true">
                    </asp:RadioButton>
                    <p class="installer_note">
                        <asp:Literal ID="labNote3" runat="server" Text='<%$ Code: InstallerResources.DatabaseInfo_labNote3 %>'
                            Visible="false"></asp:Literal>
                    </p>
                </div>
				<div class="installer_editform">
                    <div class="installer_option">
					    <asp:CheckBox ID="chkImportData" runat="server" Checked="true" Text='<%$ Code: InstallerResources.DatabaseInfo_chkImportData %>'></asp:CheckBox>
                    </div>
                    <p class="installer_note">
                        <asp:Literal ID="labImportDataNote" runat="server" Text='<%$ Code: InstallerResources.DatabaseInfo_ImportDataNote %>'></asp:Literal>
                    </p>
				</div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cp_ft" runat="Server">
</asp:Content>
