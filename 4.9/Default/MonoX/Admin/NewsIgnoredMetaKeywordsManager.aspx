
<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.Admin.NewsIgnoredMetaKeywordsManager" EnableTheming="true"
    Theme="DefaultAdmin" Title="" CodeBehind="NewsIgnoredMetaKeywordsManager.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="Server">
<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="WordGroup"></monox:ValidationHandler>
    <asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="AdminContainer">
        <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true">
            <CustomFilterTemplate>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="Word" HeaderText='<%$ Code: AdminResources.NewsIgnoredMetaKeywordsManager_sortWordButton %>' SortExpression="Word" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.Label_NoData %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
            </CustomActionsTemplate>
            <ContentTemplate>
                <div class="AdminGridFooterContent">

                    <dl class="user-manager-edit">
                        <dd class="jq_FieldValidatorWrapper">
                            <label><asp:Label ID="labWord" runat="server" Text='<%$ Code: AdminResources.NewsIgnoredMetaKeywordsManager_labWord %>'></asp:Label></label>
                            <asp:TextBox ID="txtWord" runat="server" ValidationGroup="WordGroup"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredWord" runat="server" CssClass="validator" ValidationGroup="WordGroup" ControlToValidate="txtWord" SetFocusOnError="false" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsIgnoredMetaKeywordsManager_requiredWord %>'></asp:RequiredFieldValidator>
                        </dd>
                    </dl>
            </ContentTemplate>
        </monox:GridViewEditBox>
    </div>
</asp:Content>
