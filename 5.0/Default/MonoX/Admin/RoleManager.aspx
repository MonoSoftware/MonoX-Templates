<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="RoleManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.RoleManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox" TagName="GridViewEditBox" %>
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
    <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true" >
        <CustomFilterTemplate>
            <div class="AdminGridFooterContent user-manager-edit">
                <dl>
                    <dd>
                        <%-- Note: Hidden but left for possible future use --%>
                        <label><asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                        <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlApps_SelectedIndexChanged">
                            </asp:DropDownList>
                    </dd>
                </dl>
            </div>
        </CustomFilterTemplate>
        <Columns>
            <mono:LiteGridBoundField DataField="Id" Visible="false" />
            <mono:LiteGridBoundField DataField="RoleName" HeaderText='<%$ Code: AdminResources.RoleManager_sortNameButton %>' SortExpression="RoleName" />
            <mono:LiteGridBoundField DataField="LoweredRoleName" HeaderText='<%$ Code: AdminResources.RoleManager_sortLoweredNameButton %>' SortExpression="LoweredRoleName" />
            <mono:LiteGridBoundField DataField="Description" HeaderText='<%$ Code: AdminResources.RoleManager_sortDescriptionButton %>' SortExpression="Description" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Literal ID="labEmptyMessage" runat="server" Text='<%$ Code: AdminResources.RoleManager_labNoData %>'></asp:Literal>
        </EmptyDataTemplate>
        <CustomActionsTemplate>
        </CustomActionsTemplate>
        <ContentTemplate>
        <div class="AdminGridFooterContent user-manager-edit">
            <dl>

                <asp:PlaceHolder id="plhAppEdit" runat="server" Visible="false">
                    <dd>
                        <label><asp:Literal ID="labAppNameEdit" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                        <asp:DropDownList ID="ddlAppEdit" runat="server" CssClass="select" Width="100%"></asp:DropDownList>
                    </dd>
                </asp:PlaceHolder>
                <dd class="jq_FieldValidatorWrapper">
                    <label><asp:Literal ID="labName" runat="server" Text='<%$ Code: AdminResources.RoleManager_labName %>'></asp:Literal></label>
                    <asp:TextBox ID="txtName" Runat="server" CssClass="input" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="validator" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.RoleManager_requiredName %>'></asp:RequiredFieldValidator>
                    <mono:RegExValidator ID="validateName" runat="server" CssClass="validator" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.RoleManager_validateName %>'></mono:RegExValidator>
                </dd>
                <dd class="jq_FieldValidatorWrapper">
                    <label><asp:Literal ID="labDescription" runat="server" Text='<%$ Code: AdminResources.RoleManager_labDescription %>'></asp:Literal></label>
                    <asp:TextBox ID="txtDescription" Runat="server" CssClass="input" TextMode="multiline" Width="100%" Height="100px"></asp:TextBox>
                    <mono:RegExValidator ID="validateDescription" runat="server" Display="Dynamic"  CssClass="validator" SetFocusOnError="true" ControlToValidate="txtDescription" ValidationGroup="Modification" ValidationType="alphaNumericWithSymbolsAllowedSpecialChr" Text="!" ErrorMessage='<%$ Code: AdminResources.RoleManager_validateDescription %>'></mono:RegExValidator>
                </dd>
            </dl>   
        </div>
        </ContentTemplate>
    </monox:GridViewEditBox>
</div>    
</asp:Content>
