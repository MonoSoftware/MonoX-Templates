<%@ Page Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.FileManagerPropertiesDialog" EnableTheming="true" Codebehind="FileManagerPropertiesDialog.aspx.cs" Theme="DefaultAdmin" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<%@ Register Src="~/MonoX/Admin/controls/PageCacheSettings.ascx" TagPrefix="mono" TagName="CacheSettings" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Page properties</title>
    <script type="text/javascript">
        function CloseAndSave()   
        {   
            var arg = new Object();
            arg.Id = "RefreshGrid";
            GetRadWindow().Argument = arg;
            CloseWindow();
        }   
     </script>
</head>
<body>
    <form id="form1" runat="server">    
    <div class="popup-box">
    <asp:ScriptManager ID="AjaxScriptManager" EnablePageMethods="True" runat="server">
        <Scripts>
        </Scripts>
    </asp:ScriptManager> 
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification"></monox:ValidationHandler>
    <MonoXControls:MonoXWindowManager ID="rwmSingleton" runat="server" Skin="MetroTouch"></MonoXControls:MonoXWindowManager>
    <asp:Panel CssClass="CssForm" runat="server" ID="pnlContainer">
        <div class="header">
            <div class="headerContent">
                <h2 class="toolIcon"><asp:Literal runat="server" ID="ltlTitle" Text='<%$ Code: AdminResources.FileManagerProperties_ltlTitle %>'></asp:Literal>
                </h2>
                <p>
                <asp:Label ID="lblHeaderDescription" Text='<%$ Code: AdminResources.FileManagerProperties_lblHeaderDescription %>' runat="server"></asp:Label>
                </p>
            </div>
        </div>
        <div class="content">
        <div class="tabs-admin">
            <telerik:RadTabStrip Skin="MetroTouch" ID="tabAdminStrip" CssClass="tabStripHeader" runat="server" MultiPageID="adminMultiPage" SelectedIndex="0" CausesValidation="false">
                <Tabs> 
                    <telerik:RadTab ID="tabGeneral" runat="server" PageViewID="GeneralPaneView" Text='<%$ Code: AdminResources.PageAdmin_General %>'></telerik:RadTab>
                    <telerik:RadTab ID="tabCache" runat="server" PageViewID="CachePaneView" Text='<%$ Code: AdminResources.PageAdmin_Cache %>'></telerik:RadTab>
                </Tabs>
            </telerik:RadTabStrip>
        </div>
        <telerik:RadMultiPage id="adminMultiPage" runat="server" SelectedIndex="0" >
            <telerik:RadPageView ID="GeneralPaneView" runat="server" >
            <dl>

                <dd>
                    <asp:Label ID="lblPageUrl" AssociatedControlID="ltlPageUrl" runat="server" Text='<%$ Code: AdminResources.FileManagerProperties_lblPageUrl %>'></asp:Label>
                    <asp:Literal id="ltlPageUrl" Runat="server"></asp:Literal>
                </dd>
                <dd class="jq_FieldValidatorWrapper">
                    <asp:Label ID="lblPageTitle" AssociatedControlID="txtPageTitle" runat="server" Text='<%$ Code: AdminResources.FileManagerProperties_lblPageTitle %>'></asp:Label>
                    <asp:TextBox id="txtPageTitle" Runat="server" ValidationGroup="Modification"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvPageTitle" Runat="server" CssClass="validator" ValidationGroup="Modification" Display="Dynamic" Text="!"  ControlToValidate="txtPageTitle" ErrorMessage='<%$ Code: AdminResources.FileManagerProperties_rfvPageTitle %>'></asp:RequiredFieldValidator>
                </dd>
                <dd>
                    <asp:Label ID="lblTheme" AssociatedControlID="ddlThemes" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblTheme %>'></asp:Label>
                    <asp:DropDownList runat="server" ID="ddlThemes" />
                </dd>
                <dd>
                    <asp:Label ID="lblMasterPage" AssociatedControlID="txtMasterPage" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblMasterPage %>'></asp:Label>
                    <asp:TextBox id="txtMasterPage" Runat="server"></asp:TextBox>
                </dd>
                <dd>
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" Text='<%$ Code: AdminResources.FileManagerProperties_lblDescription %>'></asp:Label>
                    <asp:TextBox id="txtDescription" Runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </dd>
                <dd>
                    <asp:Label ID="lblKeywords" AssociatedControlID="txtKeywords" runat="server" Text='<%$ Code: AdminResources.FileManagerProperties_lblKeywords %>'></asp:Label>
                    <asp:TextBox id="txtKeywords" Runat="server"></asp:TextBox>
                </dd>
                <dd class="checkboxes">
                    <asp:Label ID="lblRoles" AssociatedControlID="chkRoles" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblRoles %>'></asp:Label>
                    <asp:CheckBoxList Width="100%" BorderStyle="None" BorderWidth="0px" ID="chkRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatLayout="UnorderedList"></asp:CheckBoxList>
                </dd>
                <dd class="checkboxes">
                    <asp:Label ID="lblEditRoles" AssociatedControlID="chkEditRoles" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblEditRoles %>'></asp:Label>
                    <asp:CheckBoxList Width="100%" BorderStyle="None" BorderWidth="0px" ID="chkEditRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId"  RepeatLayout="UnorderedList"></asp:CheckBoxList>
                </dd>
            </dl>
            </telerik:RadPageView>
            <telerik:RadPageView ID="CachePaneView" runat="server" >
                <mono:CacheSettings runat="server" ID="ctlCacheSettings"></mono:CacheSettings>
            </telerik:RadPageView>
            </telerik:RadMultiPage>

        </div>
        <div class="footer">
            <asp:Button ID="btnSave" runat="server" AccessKey="S" OnClick="btnSave_Click" CssClass="AdminButton" Text='<%$ Code: AdminResources.Button_Save %>' /> <asp:button id="btnClose" OnClick="btnClose_Click" Text='<%$ Code: AdminResources.Button_Close %>' CssClass="AdminButton" runat="server"></asp:button>
        </div>
    </asp:Panel>
    <asp:Label ID="lblWarning" runat="server" CssClass="ErrorMessage" Text='<%$ Code: AdminResources.FileManagerProperties_lblWarning %>'></asp:Label>
    <asp:Label ID="lblInjectScript" Runat="server"></asp:Label> 
    </div>
    </form>
</body>
</html>
