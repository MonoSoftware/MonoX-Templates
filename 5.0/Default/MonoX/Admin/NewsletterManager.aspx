<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="NewsletterManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.NewsletterManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
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
            <dl class="newsletter-forms">
                <dd>
                    <label><asp:Literal ID="labAppName" runat="server" Text='<%$ Code: AdminResources.Label_Application %>'></asp:Literal></label>
                    <asp:DropDownList ID="ddlApps" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlApps_SelectedIndexChanged"></asp:DropDownList>
                </dd>
                <dd>
                    <label><asp:Literal ID="labRoles" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_labRoles %>'></asp:Literal></label>
                    <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged"></asp:DropDownList></label>
                </dd>
            </dl>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="Title" HeaderText='<%$ Code: AdminResources.NewsletterManager_colTitle %>' SortExpression="Title" />
                <mono:LiteGridBoundField DataField="UserName" HeaderText='<%$ Code: AdminResources.NewsletterManager_colCreatedByUserName %>' SortExpression="UserName" />
                <mono:LiteGridBoundField DataField="DateModified" HeaderText='<%$ Code: AdminResources.NewsletterManager_colDateModified %>' SortExpression="DateModified" />
                <mono:LiteGridBoundField DataField="Status" HeaderText='<%$ Code: AdminResources.NewsletterManager_colStatus %>' SortExpression="Status" />
                <mono:LiteGridBoundField DataField="SentOnString" HeaderText='<%$ Code: AdminResources.NewsletterManager_colSentOn %>' SortExpression="SentOn" />
                <mono:LiteGridBoundField DataField="NewsletterRolesString" HeaderText='<%$ Code: AdminResources.NewsletterManager_colNewsletterRoles %>' SortExpression="NewsletterRolesString" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_labNoData %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
                <asp:Button ID="btnReset" runat="server" CssClass="AdminLargeButton" OnClick="btnReset_Click" Text='<%$ Code: AdminResources.NewsletterManager_btnReset %>'></asp:Button>
                <asp:Button ID="btnTest" runat="server" CssClass="AdminLargeButton" OnClick="btnTest_Click" Text='<%$ Code: AdminResources.NewsletterManager_btnTest %>'></asp:Button>
                <asp:Button ID="btnSend" runat="server" CssClass="AdminLargeButton" OnClick="btnSend_Click" Text='<%$ Code: AdminResources.NewsletterManager_btnSend %>'></asp:Button>
            </CustomActionsTemplate>
            <ContentTemplate>
            <div class="AdminGridFooterContent newsletter-manager">
                <asp:Panel CssClass="CssForm" runat="server" ID="pnlContainer">
                    <dl class="list-title-holder">
                        <dd style="display: none">
                            <asp:Label ID="lblApp" runat="server" Text='<%$ Code: AdminResources.Label_Application %>' AssociatedControlID="ddlApp"></asp:Label>
                            <asp:DropDownList ID="ddlApp" runat="server"></asp:DropDownList>
                        </dd>
                        <dd class="jq_FieldValidatorWrapper">
                            <asp:Label ID="lblTitle" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblTitle %>' AssociatedControlID="txtTitle"></asp:Label>
                            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="validator" ValidationGroup="Modification" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsletterManager_requiredTitle %>'></asp:RequiredFieldValidator>
                        </dd>
                        <dd class="jq_FieldValidatorWrapper">
                            <asp:Label ID="lblMailFrom" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblMailFrom %>' AssociatedControlID="txtMailFrom"></asp:Label>
                            <asp:TextBox ID="txtMailFrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredMailFrom" runat="server" CssClass="validator" ValidationGroup="Modification" ControlToValidate="txtMailFrom" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsletterManager_requiredMailFrom %>'></asp:RequiredFieldValidator>
                            <mono:RegExValidator ID="validateEmail" runat="server" SetFocusOnError="true"  CssClass="validator" ControlToValidate="txtMailFrom" ValidationGroup="Modification" Display="Dynamic" ValidationType="eMail" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateEmail %>'></mono:RegExValidator> 
                        </dd>
                        <dd class="jq_FieldValidatorWrapper">
                            <asp:Label ID="lblTestAddress" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblTestAddress %>' AssociatedControlID="txtTestAddress"></asp:Label>
                            <asp:TextBox ID="txtTestAddress" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredTestAddress" runat="server" CssClass="validator" ValidationGroup="Modification" ControlToValidate="txtTestAddress" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsletterManager_requiredTestAddress %>'></asp:RequiredFieldValidator>
                            <mono:RegExValidator ID="validateTestEmail" runat="server" SetFocusOnError="true"  CssClass="validator" ControlToValidate="txtTestAddress" ValidationGroup="Modification" Display="Dynamic" ValidationType="eMail" Text="!" ErrorMessage='<%$ Code: AdminResources.UserManager_validateEmail %>'></mono:RegExValidator>
                        </dd>
                        <dd class="messages roles-list">
                            <asp:Label ID="lblRoles" AssociatedControlID="chkRoles" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblRoles %>'></asp:Label>
                            <asp:CheckBoxList BorderStyle="None" BorderWidth="0px" ID="chkRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatLayout="UnorderedList">
                            </asp:CheckBoxList>
                        </dd>
                        <dd class="custom-chkbox messages">
                            <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkTextOnly" runat="server" TextAlign="Right"></asp:CheckBox>
                            <asp:Label ID="lblTextOnly" AssociatedControlID="chkRoles" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblTextOnly %>'></asp:Label>
                        </dd>
                    </dl>
                    <br />
                    <dl class="list-title-holder">
                         <dd class="messages">
                            <asp:Label ID="lblTextContent" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblTextContent %>' AssociatedControlID="txtContent"></asp:Label>
                            <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtContent"></asp:TextBox>
                        </dd>
                        <dd class="messages">
                            <asp:Label ID="lblContent" runat="server" Text='<%$ Code: AdminResources.NewsletterManager_lblContent %>' AssociatedControlID="radContent"></asp:Label>
                            <mono:CustomRadEditor Width="100%" ID="radContent" ToolBarMode="ShowOnFocus" EditorHeight="300px" runat="server" ContentAreaMode="Iframe"></mono:CustomRadEditor>
                        </dd>
                        <dd>
                            <span style="color: Red;"><asp:Label ID="labMessage" runat="server"></asp:Label></span>
                        </dd>
                    </dl>    
                </asp:Panel>
            </div>
                
            </ContentTemplate>
        </monox:GridViewEditBox>
    </div>
</asp:Content>
