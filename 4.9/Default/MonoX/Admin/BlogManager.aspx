<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<%@ Page Title="BLog post management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="BlogManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.BlogManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox" TagName="GridViewEditBox" %>
<%@ Register Src="~/MonoX/ModuleGallery/Blog/BlogPostEdit.ascx" TagPrefix="mono" TagName="Blog" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>    

<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">

<asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
    <Scripts>
        <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
    </Scripts>
</asp:ScriptManagerProxy>

<div class="AdminContainer blog-manager">
    <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true" UpdateMode="Always">
        <CustomFilterTemplate>
        <dl>
            <dd class="half-lenght">
                <label><asp:Literal ID="ltlBlogName" runat="server" Text='<%$ Code: AdminResources.BlogManager_ltlBlogName %>'></asp:Literal></label>
                <rad:RadComboBox ID="ddlBlogs" runat="server" EnableLoadOnDemand="true" ShowToggleImage="false" MarkFirstMatch="true" ShowDropDownOnTextboxClick="true" Skin="MetroTouch"  AutoPostBack="true"></rad:RadComboBox>
            </dd>
        </dl>
        </CustomFilterTemplate>
        <Columns>
            <mono:LiteGridBoundField DataField="Id" Visible="false" />
            <mono:LiteGridBoundField DataField="Title" HeaderText='<%$ Code: AdminResources.BlogManager_colTitle %>' SortExpression="Title"/>
            <mono:LiteGridBoundField DataField="DateModified" HeaderText='<%$ Code: AdminResources.BlogManager_colDateModified %>' SortExpression="DateModified" />
            <mono:LiteGridBoundField DataField="AspnetUser.UserName" HeaderText='<%$ Code: AdminResources.BlogManager_colCreatedByUserName %>' SortExpression="UserName" />
            <mono:LiteGridBoundField DataField="IsPublished" HeaderText='<%$ Code: AdminResources.BlogManager_colPublished %>' SortExpression="IsPublished" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.BlogManager_labNoData %>'></asp:Label>
        </EmptyDataTemplate>
        <CustomActionsTemplate>            
        </CustomActionsTemplate>
        <ContentTemplate>
            <asp:PlaceHolder ID="plhModification" runat="server">
            <div  class="AdminGridFooterContent">
                <mono:Blog runat="server" ID="ctlBlogEdit" ShowActions="false"></mono:Blog>
            </div>
            </asp:PlaceHolder>
        </ContentTemplate>
    </monox:GridViewEditBox>
</div>
</asp:Content>
