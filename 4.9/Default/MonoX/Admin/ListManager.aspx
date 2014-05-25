<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="ListManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.ListManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>  
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
  

<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification"></monox:ValidationHandler>
    <monox:ValidationHandler id="validationHandlerDetails" runat="server" ValidationGroup="ModificationDetails"></monox:ValidationHandler>
    <asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="AdminContainer">
        <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true">
            <CustomFilterTemplate>
                <div style="display: none;">
                    <%-- Note: Hidden but left for possible future use --%>
                    <asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal>&nbsp;
                    <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect"
                        OnSelectedIndexChanged="ddlApps_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="Title" HeaderText='<%$ Code: AdminResources.ListManager_colTitle %>' SortExpression="Title" />
                <mono:LiteGridBoundField DataField="DateModified" HeaderText='<%$ Code: AdminResources.ListManager_colDateModified %>' SortExpression="DateModified" />
                <mono:LiteGridBoundField DataField="UserName" HeaderText='<%$ Code: AdminResources.ListManager_colCreatedByUserName %>' SortExpression="UserName" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.ListManager_labNoData %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
            </CustomActionsTemplate>
            <ContentTemplate>
            <div class="AdminGridFooterContent">
                <asp:Panel CssClass="CssForm" runat="server" ID="pnlContainer">
                <dl class="list-title-holder">

                    <dd style="display: none">
                        <asp:Label ID="lblApp" runat="server" Text='<%$ Code: AdminResources.Label_Application %>' AssociatedControlID="ddlApp"></asp:Label>
                        <asp:DropDownList ID="ddlApp" runat="server"></asp:DropDownList>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <asp:Label ID="lblTitle" runat="server" Text='<%$ Code: AdminResources.ListManager_lblTitle %>' AssociatedControlID="txtTitle"></asp:Label>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="validator" ValidationGroup="Modification" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.ListManager_requiredTitle %>'></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <span><asp:Literal ID="labMessage" runat="server"></asp:Literal></span>
                    </dd>
                </dl>  
                </asp:Panel>
            </div>

            </ContentTemplate>
        </monox:GridViewEditBox>
        <monox:GridViewEditBox ID="gridViewBoxDetails" runat="server" ShowTopActions="true" UpdateMode="Always">
            <CustomFilterTemplate>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="ItemTitle" HeaderText='<%$ Code: AdminResources.ListManager_colTitle %>' SortExpression="ItemTitle" />
                <mono:LiteGridBoundField DataField="ItemUrl" HeaderText='<%$ Code: AdminResources.ListManager_colUrl %>' SortExpression="ItemUrl" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkMoveUp" runat="server" CommandArgument='<%# Eval("Id") %>' OnCommand="lnkMoveUp_Click" Text='<%$ Code: AdminResources.ListManager_lnkMoveUp %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkMoveDown" runat="server" CommandArgument='<%# Eval("Id") %>' OnCommand="lnkMoveDown_Click" Text='<%$ Code: AdminResources.ListManager_lnkMoveDown %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.ListManager_labNoData %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
            </CustomActionsTemplate>
            <ContentTemplate>
            <div class="AdminGridFooterContent admin-edit-form">
                <asp:Panel CssClass="CssForm" runat="server" ID="Panel1">
                <dl>
                    <dd class="jq_FieldValidatorWrapper">
                        <asp:Label ID="lblTitleCaption" runat="server" Text='<%$ Code: AdminResources.ListManager_lblTitleCaption %>' AssociatedControlID="txtItemTitle"></asp:Label>
                        <asp:TextBox ID="txtItemTitle" Text='<%# Eval("ItemTitle") %>' runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqItemTitle" runat="server" CssClass="validator" ValidationGroup="ModificationDetails" ControlToValidate="txtItemTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.ListManager_requiredTitle %>'></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <asp:Label ID="lblUrlCaption" runat="server" Text='<%$ Code: AdminResources.ListManager_lblUrlCaption %>' AssociatedControlID="txtItemUrl"></asp:Label>
                        <asp:TextBox ID="txtItemUrl" Text='<%# Eval("ItemUrl") %>' runat="server"></asp:TextBox>
                    </dd>
                    <dd class="messages">
                        <asp:Label ID="lblContentCaption" runat="server" Text='<%$ Code: AdminResources.ListManager_lblContentCaption %>' AssociatedControlID="radContent"></asp:Label>
                        <mono:CustomRadEditor Width="100%" ID="radContent" runat="server" ToolBarMode="ShowOnFocus" Content='<%# Eval("ItemContent") %>'></mono:CustomRadEditor>
                    </dd>
                </dl>
                </asp:Panel>
            </div>
            </ContentTemplate>
            
            <CustomActionsTemplate>
            </CustomActionsTemplate>
        </monox:GridViewEditBox>
    </div>
</asp:Content>
