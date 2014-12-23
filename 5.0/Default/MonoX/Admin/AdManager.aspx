<%@ Assembly Name="MonoSoftware.MonoX.DAL" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources"  %>

<%@ Page Title="User management" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    AutoEventWireup="True" CodeBehind="AdManager.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.AdManager"
    Theme="DefaultAdmin" %>

<%@ Register Src="~/MonoX/controls/DualListBox.ascx" TagPrefix="mono" TagName="DualListBox" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register Src="~/MonoX/ModuleGallery/UploadModule.ascx" TagPrefix="mono" TagName="UploadModule" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>    
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="server">
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification"></monox:ValidationHandler>
    <monox:ValidationHandler id="validationHandler1" runat="server" ValidationGroup="ModificationAd"></monox:ValidationHandler>
    <asp:ScriptManagerProxy ID="gridScriptManager" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/MonoX/Admin/controls/scripts/JSHelper.js" ScriptMode="Auto" />
        </Scripts>
    </asp:ScriptManagerProxy>
    <div class="AdminContainer">
        <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true" ValidationGroup="Modification">
            <CustomFilterTemplate>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="Name" HeaderText='<%$ Code: AdminResources.AdAdmin_sortName %>' SortExpression="Name" />
                <mono:LiteGridBoundField DataField="Start" HeaderText='<%$ Code: AdminResources.AdAdmin_sortStart %>' SortExpression="Start" />
                <mono:LiteGridBoundField DataField="End" HeaderText='<%$ Code: AdminResources.AdAdmin_sortEnd %>' SortExpression="End" />
                <mono:LiteGridBoundField DataField="Active" HeaderText='<%$ Code: AdminResources.AdAdmin_sortActive %>' SortExpression="Active" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoDataCamp" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labNoDataCamp %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
                <asp:Button ID="btnToggleActive" runat="server" UseSubmitBehavior="false" Text='<%$ Code: AdminResources.AdAdmin_btnToggleActive %>'
                    CssClass="AdminLargeButton" OnClick="btnToggleActive_Click" />
            </CustomActionsTemplate>
            <ContentTemplate>
            <div class="AdminGridFooterContent admin-edit-form">
                <dl>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labName" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labName %>'></asp:Literal></label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="input" ValidationGroup="Modification"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validator " SetFocusOnError="true" ControlToValidate="txtName" Display="Dynamic" ValidationGroup="Modification" ErrorMessage='<%$ Code: AdminResources.AdAdmin_requiredName %>' Text="!"></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labValidFrom" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labValidFrom %>'></asp:Literal></label>
                        <rad:RadDatePicker ID="radValidFrom" IsRequired="true" runat="server" ></rad:RadDatePicker>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labValidTo" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labValidTo %>'></asp:Literal></label>
                        <rad:RadDatePicker ID="radValidTo" runat="server"></rad:RadDatePicker>
                    </dd>
                    <dd class="chkbox">
                        <asp:CheckBox ID="chkActive" runat="server" ValidationGroup="Modification"></asp:CheckBox>
                        <label><asp:Literal ID="labActive" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labActive %>'></asp:Literal></label>
                    </dd>
                </dl>
            </div>                            
            </ContentTemplate>
        </monox:GridViewEditBox>
    </div>
    <div class="AdminContainer">
        <div class="administration-page">
            <h3><asp:Label ID="labUploadTitle" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labUploadTitle %>' ></asp:Label></h3>
            <div class="RadUploadContainer">
                <mono:UploadModule ID="uploadModule" runat="server"></mono:UploadModule>
            </div>
            <div class="message">
                <span style="color: Green"<asp:Label ID="labMessage" runat="server"></asp:Label></span>
            </div>
        </div>
    </div>
    <div class="AdminContainer">
        <monox:GridViewEditBox ID="gridViewBoxAd" runat="server" ShowTopActions="true" ValidationGroup="ModificationAd" 
            UpdateMode="Always">
            <CustomFilterTemplate>
            </CustomFilterTemplate>
            <Columns>
                <mono:LiteGridBoundField DataField="Id" Visible="false" />
                <mono:LiteGridBoundField DataField="Caption" HeaderText='<%$ Code: AdminResources.AdAdmin_sortCaptionButton %>' SortExpression="Caption" />
                <mono:LiteGridBoundField DataField="Weight" HeaderText='<%$ Code: AdminResources.AdAdmin_sortWeightButton %>' SortExpression="Weight" />
                <mono:LiteGridBoundField DataField="ValidFrom" HeaderText='<%$ Code: AdminResources.AdAdmin_sortValidFromButton %>' SortExpression="ValidFrom" />
                <mono:LiteGridBoundField DataField="ValidTo" HeaderText='<%$ Code: AdminResources.AdAdmin_sortValidToButton %>' SortExpression="ValidTo" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labNoData %>'></asp:Label>
            </EmptyDataTemplate>
            <CustomActionsTemplate>
            </CustomActionsTemplate>
            <ContentTemplate>
            <div class="AdminGridFooterContent admin-edit-form">
                <dl>

                    <dd>
                        <label><asp:Literal ID="labCampaignEdit" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labCampaignEdit %>'></asp:Literal></label>
                        <asp:DropDownList ID="ddlCampaignEdit" runat="server"  ValidationGroup="ModificationAd"></asp:DropDownList>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labCaption" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labCaption %>'></asp:Literal></label>
                        <asp:TextBox ID="txtCaption" runat="server" ValidationGroup="ModificationAd"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredCaption" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic" ControlToValidate="txtCaption" ValidationGroup="ModificationAd" Text="!" ErrorMessage='<%$ Code: AdminResources.AdAdmin_requiredCaption %>'></asp:RequiredFieldValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labImageUrl" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labImageUrl %>'></asp:Literal></label>
                        <asp:DropDownList ID="ddlMedia" runat="server" ValidationGroup="ModificationAd"></asp:DropDownList>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labAdContent" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labAdContent %>'></asp:Literal></label>
                        <asp:TextBox ID="txtAdContent" runat="server" TextMode="multiline" ValidationGroup="ModificationAd" Height="100px"></asp:TextBox>
                        <label style="font-style: italic;"><asp:Literal ID="labAdContentNote" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labAdContentNote %>'></asp:Literal></label>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labNavigateUrl" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labNavigateUrl %>'></asp:Literal></label>
                        <asp:TextBox ID="txtNavigateUrl" runat="server" ValidationGroup="ModificationAd"></asp:TextBox>
                        <mono:RegExValidator ID="regExNavigateUrl" runat="server" SetFocusOnError="true" CssClass="validator" Display="Dynamic" ControlToValidate="txtNavigateUrl" ValidationType="uRL" ValidationGroup="ModificationAd" Text="!" ErrorMessage='<%$ Code: AdminResources.AdAdmin_regExNavigateUrl %>'></mono:RegExValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labKeyword" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labKeyword %>'></asp:Literal></label>
                        <asp:TextBox ID="txtKeyword" runat="server" ValidationGroup="ModificationAd"></asp:TextBox>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labAlternateText" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labAlternateText %>'></asp:Literal></label>
                        <asp:TextBox ID="txtAlternateText" runat="server" ValidationGroup="ModificationAd"></asp:TextBox>
                    </dd>
                    <dd class="jq_FieldValidatorWrapper">
                        <label><asp:Literal ID="labWeight" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labWeight %>'></asp:Literal></label>
                        <asp:TextBox ID="txtWeight" runat="server" ValidationGroup="ModificationAd"></asp:TextBox>
                        <mono:RegExValidator ID="regExWeight" runat="server" SetFocusOnError="true" ControlToValidate="txtWeight" CssClass="validator" Display="Dynamic" ValidationGroup="ModificationAd" ValidationType="numericint32" Text="!" ErrorMessage='<%$ Code: AdminResources.AdAdmin_regExWeight %>'></mono:RegExValidator>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labValidFromAd" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labValidFromAd %>'></asp:Literal></label>
                        <rad:RadDatePicker ID="radValidFromAd" runat="server" Calendar-Skin="MetroTouch"></rad:RadDatePicker>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labValidToAd" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labValidToAd %>'></asp:Literal></label>
                        <rad:RadDatePicker ID="radValidToAd" runat="server" Calendar-Skin="MetroTouch"></rad:RadDatePicker>
                    </dd>
                    <dd>
                        <label><asp:Literal ID="labLanguage" runat="server" Text='<%$ Code: AdminResources.AdAdmin_labLanguage %>'></asp:Literal></label>
                        <asp:DropDownList ID="ddlLanguages" runat="server" AutoPostBack="true"></asp:DropDownList>
                    </dd>
                    <dd class="dual-list">
                        <mono:DualListBox ID="lstPages" runat="server" LeftRows="10" RightRows="10" DualListTextCssClass="select" />
                    </dd>
                </dl>     
            </div>                              
            </ContentTemplate>
        </monox:GridViewEditBox>
    </div>
</asp:Content>
