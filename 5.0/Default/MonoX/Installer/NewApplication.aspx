<%@ Page 
    Language="C#" 
    MasterPageFile="~/MonoX/Installer/Installer.master" 
    AutoEventWireup="true" 
    Inherits="MonoX_Installer_NewApplication" 
    Title="New application info" 
    Theme="Installer"
    Codebehind="NewApplication.aspx.cs" %>
<%@ MasterType VirtualPath="~/MonoX/Installer/Installer.master" %>    
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="cp_hd" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cp_cnt" Runat="Server">
    <monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>
    <div class="installer_dbinfo new-aplication">
        <h4>
            <asp:Literal ID="labSubTitle" runat="server" Text='<%$ Code: InstallerResources.NewApplication_labSubTitle %>'></asp:Literal>
        </h4>
        <div class="installer_data">            
            <dl class="installer_editform">
                <dd>
                    <asp:Label ID="labNewAppName" runat="server" AssociatedControlID="txtNewAppName" Text='<%$ Code: InstallerResources.NewApplication_labNewAppName %>'></asp:Label>
                </dd>
                <dd class="jq_FieldValidatorWrapper">
                    <asp:TextBox ID="txtNewAppName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredNewApp" runat="server" CssClass="validator" Display="Dynamic" 
                        ControlToValidate="txtNewAppName" SetFocusOnError="true" Text="*"
                        ErrorMessage='<%$ Code: InstallerResources.NewApplication_requiredNewApp %>'>
                    </asp:RequiredFieldValidator>
                </dd>
                <dd>
                    <asp:Label ID="labCloneAppName" runat="server" AssociatedControlID="ddlCloneAppName" Text='<%$ Code: InstallerResources.NewApplication_labCloneAppName %>'></asp:Label>
                </dd>
                <dd>
                    <asp:DropDownList ID="ddlCloneAppName" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="requiredCloneAppName" runat="server" CssClass="validator" Display="Dynamic" 
                        ControlToValidate="ddlCloneAppName" SetFocusOnError="true" Text="*"
                        ErrorMessage='<%$ Code: InstallerResources.NewApplication_requiredCloneAppName %>'>
                    </asp:RequiredFieldValidator>
                </dd>
                <dd class="checkbox-holder">
                    <asp:CheckBox ID="chkExistingMembershipProvider" runat="server" Text='<%$ Code: InstallerResources.NewApplication_chkExistingMembershipProvider %>'></asp:CheckBox>
                </dd>
            </dl>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cp_ft" Runat="Server">
</asp:Content>

