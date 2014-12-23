<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Title="Group category manager" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="SnGroupMembershipManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.SnGroupMembershipManager"
    Theme="DefaultAdmin" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/controls/UserPicker.ascx" TagPrefix="MonoX" TagName="UserSearch" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
    <div class="AdminContainer">
        <asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
            <ContentTemplate>
                <div class="AdminHeaderTop"></div>
                <div class="AdminHeaderBottom groups-form">
                    <dl>
                        <dd>
                            <asp:Label ID="labCategory" runat="server" AssociatedControlID="ddlCategory" Text='<%$ Code: AdminResources.SnGroupMembershipManager_labCategory %>'></asp:Label>
                            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true" CssClass="searchselect" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                        </dd>
                        <dd>
                            <asp:Label ID="labGroup" runat="server" AssociatedControlID="ddlGroup" Text='<%$ Code: AdminResources.SnGroupMembershipManager_labGroup %>'></asp:Label>
                            <telerik:RadComboBox Skin="MetroTouch" ID="ddlGroup" runat="server" EnableLoadOnDemand="true" MarkFirstMatch="true" AllowCustomText="false" ShowDropDownOnTextboxClick="false" AutoPostBack="true">
                                </telerik:RadComboBox>
                        </dd>
                        <dd class="people-search">
                            <asp:Label ID="labUser" runat="server" AssociatedControlID="userSearch" Text='<%$ Code: AdminResources.SnGroupMembershipManager_labUser %>'></asp:Label>
                            <MonoX:UserSearch ID="userSearch" runat="server" UserFilterMode="ShowAllUsers" UserAddressFormat="UsernameAndFullname" IsRequired="false"></MonoX:UserSearch>
                        </dd>
                        <dd class="button-holder">
                            <asp:Button ID="btnAdd" runat="server" CausesValidation="false" Text='<%$ Code: AdminResources.SnGroupMembershipManager_btnAdd %>' CssClass="AdminLargeButton" OnClick="btnAdd_Click" />
                        </dd>
                    </dl>
                </div>
                <div class="AdminHeaderBottom groups-users">                                        
                    <dl>
                        <dd>
                            <asp:Label ID="labUserInGroup" runat="server" AssociatedControlID="lstUserInGroup" Text='<%$ Code: AdminResources.SnGroupMembershipManager_labUserInGroup %>'></asp:Label>
                            <telerik:RadListBox ID="lstUserInGroup" runat="server" SelectionMode="Single" AllowReorder="true"
                                AllowDelete="true" Width="470px" Height="200px" Skin="MetroTouch" AutoPostBackOnDelete="true">
                            </telerik:RadListBox>
                            <asp:Button ID="btnSetAsAdmin" runat="server" CausesValidation="false" Text='<%$ Code: AdminResources.SnGroupMembershipManager_btnSetAsAdmin %>'
                            CssClass="AdminLargeButton" OnClick="btnSetAsAdmin_Click" />
                            <mono:Pager ID="pager" runat="server" AutoPaging="False" AllowCustomPaging="True"
                                PageSize="5" NumericButtonCount="5">
                                <PagerTemplate>
                                </PagerTemplate>
                            </mono:Pager>
                        </dd>
                        <dd>
                            <asp:Label ID="labGroupRequests" runat="server" AssociatedControlID="lstGroupRequests" Text='<%$ Code: AdminResources.SnGroupMembershipManager_labGroupRequests %>'></asp:Label>
                            <telerik:RadListBox ID="lstGroupRequests" runat="server" SelectionMode="Single" AllowReorder="true"
                                AllowDelete="true" Width="470px" Height="200px" Skin="MetroTouch" AutoPostBackOnDelete="true">
                            </telerik:RadListBox><br />
                            <asp:Button ID="btnApprove" runat="server" CausesValidation="false" Text='<%$ Code: AdminResources.SnGroupMembershipManager_btnApprove %>'
                            CssClass="AdminLargeButton" OnClick="btnApprove_Click" />
                            <mono:Pager ID="pagerGroupRequests" runat="server" AutoPaging="False" AllowCustomPaging="True"
                                PageSize="5" NumericButtonCount="5">
                                <PagerTemplate>
                                </PagerTemplate>
                            </mono:Pager>
                        </dd>
                        <dd class="message-group-label">
                            <asp:Literal ID="labError" runat="server"></asp:Literal>
                        </dd>
                    </dl>
                </div>                    
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
