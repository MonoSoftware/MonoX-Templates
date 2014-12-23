<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="Group category manager" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="SnGroupCategoryManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.SnGroupCategoryManager"
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
            <dl>
                <dd class="half-lenght">
                    <label><asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label> 
                    <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlApps_SelectedIndexChanged"></asp:DropDownList>
                </dd>
            </dl>
        </CustomFilterTemplate>
        <Columns>
            <mono:LiteGridBoundField DataField="Id" Visible="false" />
            <mono:LiteGridBoundField DataField="Name" HeaderText='<%$ Code: AdminResources.SnGroupCategoryManager_sortNameButton %>' SortExpression="Name" />
            <mono:LiteGridBoundField DataField="Slug" HeaderText='<%$ Code: AdminResources.SnGroupCategoryManager_sortSlugButton %>' SortExpression="Slug" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Literal ID="labEmptyMessage" runat="server" Text='<%$ Code: AdminResources.SnGroupCategoryManager_labEmptyMessage %>'></asp:Literal>
        </EmptyDataTemplate>
        <CustomActionsTemplate>
        </CustomActionsTemplate>
        <ContentTemplate>
        <div class="AdminGridFooterContent">
            <dl class="list-title-holder">

                <dd>
                    <label><asp:Literal ID="labAppNameEdit" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                    <asp:DropDownList ID="ddlAppEdit" runat="server" CssClass="select" Width="100%"></asp:DropDownList>
                </dd>
                <dd class="form-middle jq_FieldValidatorWrapper">
                    <label><asp:Literal ID="labName" runat="server" Text='<%$ Code: AdminResources.SnGroupCategoryManager_labName %>'></asp:Literal></label>
                    <asp:TextBox ID="txtName" Runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="validator" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" ValidationGroup="Modification" Text="!" ErrorMessage='<%$ Code: AdminResources.SnGroupCategoryManager_requiredName %>'></asp:RequiredFieldValidator>
                    <mono:RegExValidator ID="validateName" runat="server" CssClass="validator" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" ValidationGroup="Modification" Text="!" ValidationType="AlphaNumericWithSymbolsAllowedSpecialChr" ErrorMessage='<%$ Code: AdminResources.SnGroupCategoryManager_validateName %>'></mono:RegExValidator>

                </dd>
            </dl>  
        </div>
        </ContentTemplate>
    </monox:GridViewEditBox>
</div>    
</asp:Content>
