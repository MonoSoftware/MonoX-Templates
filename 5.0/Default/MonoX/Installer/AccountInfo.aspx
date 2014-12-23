<%@ Page 
    Language="C#" 
    MasterPageFile="~/MonoX/Installer/Installer.master" 
    AutoEventWireup="true" 
    Inherits="MonoX_Installer_AccountInfo" 
    Title="Database Info" 
    Theme="Installer"
    Codebehind="AccountInfo.aspx.cs" %>
<%@ MasterType VirtualPath="~/MonoX/Installer/Installer.master" %>    
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="radcb" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>        
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>   
    
<asp:Content ID="Content1" ContentPlaceHolderID="cp_hd" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp_cnt" Runat="Server">
    <monox:ValidationHandler id="validationHandler" runat="server" ></monox:ValidationHandler>
    <div class="installer_dbinfo">
        <h4>
            <asp:Literal ID="labSubTitle" runat="server" Text='<%$ Code: InstallerResources.AccountInfo_labSubTitle %>'></asp:Literal>
        </h4>
        <div class="installer_data">
            <div class="installer_editform">
                <p>
                    <strong><%= InstallerResources.AccountInfo_UsernameNote %></strong>
                </p>
                <div class="jq_FieldValidatorWrapper">
                    <asp:Label ID="labUsername" runat="server" AssociatedControlID="txtUsername" Text='<%$ Code: InstallerResources.AccountInfo_labUsername %>'></asp:Label>                    
                    <asp:TextBox ID="txtUsername" runat="server" Text="admin"></asp:TextBox>                    
                    <mono:regexvalidator id="validateUserName" runat="server" cssclass="validator" Display="Dynamic"
                        setfocusonerror="true" controltovalidate="txtUsername" validationtype="numeric" text="!" errormessage='<%$ Code: AdminResources.UserManager_validateUserName %>'>
                    </mono:regexvalidator>
                </div>
                <div class="jq_FieldValidatorWrapper">
                    <asp:Label ID="labPassword" runat="server" AssociatedControlID="txtPassword" Text='<%$ Code: InstallerResources.AccountInfo_labPassword %>'></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <mono:regexvalidator id="validatePassword" runat="server" setfocusonerror="true" Display="Dynamic"
                        cssclass="validator" controltovalidate="txtPassword" validationtype="alphaNumericWithSymbolsAllowedSpecialChr" text="!" errormessage='<%$ Code: AdminResources.UserManager_validatePassword %>'>
                    </mono:regexvalidator>
                </div>
                <div class="jq_FieldValidatorWrapper margin-bottom">
                    <asp:Label ID="labEmail" runat="server" AssociatedControlID="txtEMail" Text='<%$ Code: InstallerResources.AccountInfo_labEmail %>'></asp:Label>
                    <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                    <mono:RegExValidator id="validateEmail" runat="server" setfocusonerror="true" cssclass="validator" Display="Dynamic"
                        controltovalidate="txtEMail" validationtype="eMail"
                        text="!" errormessage='<%$ Code: InstallerResources.AccountInfo_validateEmail %>'></mono:RegExValidator>
                </div>
            </div>            
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cp_ft" Runat="Server">
</asp:Content>

