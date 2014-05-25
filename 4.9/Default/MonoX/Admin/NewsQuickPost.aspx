<%@ Page Title="" Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master"
    Theme="DefaultAdmin" AutoEventWireup="true" CodeBehind="NewsQuickPost.aspx.cs"
    Inherits="MonoSoftware.MonoX.Admin.NewsQuickPost" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:Content ID="cp" ContentPlaceHolderID="cp" runat="server">
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="NewsItems"></monox:ValidationHandler>
    <div class="AdminContainer">
        <div>
            <asp:UpdatePanel ID="upGridBox" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:Panel ID="panMain" runat="server">
                        <div class="AdminHeaderTop">
                        </div>
                        <div class="AdminHeaderBottom padding-wrapper">
                            <h3><%= MonoSoftware.MonoX.Resources.NewsAdmin.Global_Title%></h3>
                        </div>
                        <div class="AdminGridFooterContent news-quick-post">
                            <dl>
                                <dd class="title-holder">
                                    <strong><asp:Literal ID="labNoCategories" runat="server"></asp:Literal></strong>
                                </dd>

                                <dd class="message">
                                    <span style="color: Red;"><asp:Label ID="labMessage" runat="server"></asp:Label></span>
                                </dd>
                                <dd>
                                    <label><asp:Literal ID="labCategories" runat="server"></asp:Literal></label>
                                    <rad:RadComboBox ID="ddlCategories" runat="server" Skin="MetroTouch"></rad:RadComboBox>
                                </dd>
                                <dd class="jq_FieldValidatorWrapper">
                                    <label><asp:Label ID="labNewsTitle" runat="server"></asp:Label></label>
                                    <asp:TextBox ID="txtNewsTitle" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requiredNewsTitle" runat="server" CssClass="validator" ValidationGroup="NewsItems" ControlToValidate="txtNewsTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsQuickPost_RequiredTitle %>'></asp:RequiredFieldValidator>
                                </dd>
                            </dl> 
                        </div>
                        <div class="AdminGridFooterContent news-quick-post">
                            <dl>
                                <dd class="custom-editor">
                                    <label><asp:Label ID="labNewsContent" runat="server"></asp:Label></label>
                                    <mono:CustomRadEditor ID="radNewsContent" EditorHeight="200px" AutoResizeHeight="False" ToolBarMode="ShowOnFocus" runat="server"  ></mono:CustomRadEditor>                                            
                                </dd>
                            </dl>
                        </div>

                        <dl class="AdminGridFooterTop padding-wrapper">
                            <dd>
                                <asp:Button ID="btnSave" runat="server" CausesValidation="true" UseSubmitBehavior="false" CssClass="AdminButton" ValidationGroup="NewsItems" />
                            </dd>
                            <dd class="message">
                                <span style="color: Green; padd"><asp:Label ID="labInfoMessage" runat="server" EnableViewState="false"></asp:Label></span>
                            </dd> 
                        </dl>
                        <div class="AdminGridFooterBottom">
                            
                        </div>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
