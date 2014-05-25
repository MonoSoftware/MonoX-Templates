<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="LanguageManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.LanguageManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
    <asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="AdminContainer">
        <asp:UpdatePanel ID="up" runat="server">
            <ContentTemplate>
                <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true">
                    <CustomFilterTemplate>
                        <div  style="display: none;">
                            <%-- Note: Hidden but left for possible future use --%>
                            <asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal>&nbsp;
                            <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect"
                                OnSelectedIndexChanged="ddlApps_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    </CustomFilterTemplate>
                    <Columns>
                        <mono:LiteGridBoundField DataField="Id" Visible="false" />
                        <mono:LiteGridBoundField DataField="LanguageName" HeaderText='<%$ Code: AdminResources.LanguageManager_sortLanguageName %>' SortExpression="LanguageName" />
                        <mono:LiteGridBoundField DataField="CultureName" HeaderText='<%$ Code: AdminResources.LanguageManager_sortCultureName %>' SortExpression="CultureName" />
                        <mono:LiteGridBoundField DataField="DefaultLanguage" HeaderText='<%$ Code: AdminResources.LanguageManager_sortDefaultLanguage %>' SortExpression="DefaultLanguage" />
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.LanguageManager_labNoData %>'></asp:Label>
                    </EmptyDataTemplate>
                    <CustomActionsTemplate>
                        <asp:Button ID="btnSetDefault" runat="server" OnClick="btnSetDefault_Click" Text='<%$ Code: AdminResources.Button_SetAsDefault %>' CssClass="AdminButton" />
                    </CustomActionsTemplate>
                    <ContentTemplate>
                        <div class="AdminGridFooterContent">
                        </div>
                    </ContentTemplate>
                </monox:GridViewEditBox>
                <div class="language-picker">
                    <asp:ListBox ID="lstCultures" runat="server" SelectionMode="Multiple" Rows="10" Width="100%" style="width: auto;">
                    </asp:ListBox>
                    <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text='<%$ Code: AdminResources.Button_Insert %>' CssClass="AdminButton" />
                </div>
                <br />
                <b style="color: Red;">
                    <asp:Label ID="labMessage" runat="server"></asp:Label></b>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
