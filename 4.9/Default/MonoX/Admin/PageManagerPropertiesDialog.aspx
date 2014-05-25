<%@ Page Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.PageManagerPropertiesDialog" EnableTheming="true" Codebehind="PageManagerPropertiesDialog.aspx.cs" Theme="DefaultAdmin" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<%@ Register Src="~/MonoX/Admin/controls/PageCacheSettings.ascx" TagPrefix="mono" TagName="CacheSettings" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>



<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Page properties</title>

    <script type="text/javascript">
        function CloseAndSave() {
            var arg = new Object();
            arg.Id = "RefreshGridOnInsert";
            var oWindow = GetRadWindow();
            if (oWindow != null) {
                oWindow.Argument = arg;
                oWindow.Close();
            }
        }


        function ToggleTreeView() {
            if (document.getElementById("treeDiv").style.visibility == "visible")
                HideTreeView();
            else
                ShowTreeView();
        }

        function ShowTreeView() {
            document.getElementById("treeDiv").style.visibility = "visible";
        }

        function HideTreeView() {
            document.getElementById("treeDiv").style.visibility = "hidden";
        }

        function SetTextBox(id, s) {
            document.getElementById(id).value = s;
        }
     </script>

</head>
<body>
    <form id="form1" runat="server">    
    <div class="popup-box">
    <telerik:RadCodeBlock ID="radCodeBlock" runat="server"> 
    <script type="text/javascript">
        function ProcessClientClick(sender, eventArgs) {
            var node = eventArgs.get_node();
            SetTextBox('<%= txtPagePath.ClientID %>', node.get_text());
            document.getElementById('<%= tvSelectedValue.ClientID %>').value = node.get_value();
            HideTreeView();
        }
    </script>
    </telerik:RadCodeBlock>    
    <asp:ScriptManager ID="AjaxScriptManager" EnablePageMethods="True" runat="server">
        <Scripts>
        </Scripts>
    </asp:ScriptManager>
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="mainVg"></monox:ValidationHandler>
    <MonoXControls:MonoXWindowManager ID="rwmSingleton" runat="server" Skin="MetroTouch"></MonoXControls:MonoXWindowManager>
    <asp:HiddenField ID="tvSelectedValue" runat="server" />
    <asp:Panel CssClass="CssForm" runat="server" ID="pnlContainer">
        <div class="header">
            <div class="headerContent">
                <h2 class="toolIcon"><asp:Literal runat="server" ID="ltlTitle" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_ltlTitle %>'></asp:Literal></h2>
                <p>
                    <asp:Label ID="lblHeaderDescription" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblHeaderDescription %>' runat="server"></asp:Label>
                </p>
            </div>
        </div>
        <div class="content"> 
        <div class="tabs-admin">
            <telerik:RadTabStrip Skin="MetroTouch" ID="tabAdminStrip" CssClass="tabStripHeader" runat="server" MultiPageID="adminMultiPage" SelectedIndex="0" CausesValidation="false" >
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
                    <asp:ValidationSummary ID="valSum" runat="server" HeaderText='<%$ Code: AdminResources.PageManagerPropertiesDialog_valSum %>' DisplayMode="List"  EnableClientScript="true" ValidationGroup="mainVg" CssClass="validation-summary" />
                </dd>
                <dd class="drop-holder">
                    <asp:Label ID="lblPagePath" AssociatedControlID="txtPagePath" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblPagePath %>'></asp:Label>
                    <asp:TextBox ID="txtPagePath" runat="server" ReadOnly="true" onclick="ToggleTreeView()"></asp:TextBox>
                    <telerik:RadCodeBlock id="radCodeBlock2" runat="server">
                        <img class="toggle-button" onclick="ToggleTreeView()" src='<%= GetImgPath("DropArrow.gif") %>'  />
                    </telerik:RadCodeBlock>
                    <div id="treeDiv">
                        <telerik:RadTreeView ID="tvFolders" runat="server" ValidationGroup="treeViewVg"  
                            AutoPostBack="True"
                            OnNodeClick="tvFolders_NodeClick"
                            Skin="Default"
                            Width="100%"
                            Height="100%"
                            AllowNodeEditing="False"
                            AccessKey="T"
                            DragAndDrop="False"
                            OnNodeExpand="tvFolders_NodeExpand"
                            ShowLineImages="true"
                            OnClientNodeClicking="ProcessClientClick"
                            >
                        </telerik:RadTreeView>
                    </div>
                </dd>
                <dd>
                    <asp:Label ID="lblTemplate" AssociatedControlID="cboTemplates" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblTemplate %>'></asp:Label>
                    <asp:DropDownList ID="cboTemplates" runat="server"></asp:DropDownList>
                </dd>
                <dd class="jq_FieldValidatorWrapper">
                    <asp:Label ID="lblPageName" AssociatedControlID="txtPageName" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblPageName %>'></asp:Label>
                    <asp:TextBox id="txtPageName" Runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="rfvPageName" Runat="server" CssClass="validator" Display="Dynamic" Text="!" ControlToValidate="txtPageName" ErrorMessage='<%$ Code: AdminResources.PageManagerPropertiesDialog_rfvPageName %>' ValidationGroup="mainVg"></asp:RequiredFieldValidator>
                </dd>
                <dd>
                    <asp:Label ID="lblPageTitle" AssociatedControlID="txtPageTitle" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblPageTitle %>'></asp:Label>
                    <asp:TextBox id="txtPageTitle" Runat="server"></asp:TextBox>
                </dd>
                <dd>
                    <asp:Label ID="lblDescription" AssociatedControlID="txtDescription" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblDescription %>'></asp:Label>
                    <asp:TextBox id="txtDescription" Runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </dd>
                <dd>
                    <asp:Label ID="lblKeywords" AssociatedControlID="txtKeywords" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblKeywords %>'></asp:Label>
                    <asp:TextBox id="txtKeywords" Runat="server"></asp:TextBox>
                </dd>
                <dd class="checkboxes">
                    <asp:Label ID="lblRoles" AssociatedControlID="chkRoles" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblRoles %>'></asp:Label>
                    <asp:CheckBoxList Width="100%" BorderStyle="None" BorderWidth="0px" ID="chkRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatLayout="UnorderedList"></asp:CheckBoxList>
                </dd>
                <dd class="checkboxes">
                    <asp:Label ID="lblEditRoles" AssociatedControlID="chkEditRoles" runat="server" Text='<%$ Code: AdminResources.PageManagerPropertiesDialog_lblEditRoles %>'></asp:Label>
                    <asp:CheckBoxList Width="100%" BorderStyle="None" BorderWidth="0px" ID="chkEditRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatLayout="UnorderedList"></asp:CheckBoxList>
                </dd>
            </dl>
        </telerik:RadPageView>
        <telerik:RadPageView ID="CachePaneView" runat="server" >
            <mono:CacheSettings runat="server" ID="ctlCacheSettings"></mono:CacheSettings>
        </telerik:RadPageView>
        </telerik:RadMultiPage>
        </div>
        </asp:Panel>
    
        
        <div class="footer">
            <asp:Label ID="lblInjectScript" Runat="server"></asp:Label>  
            <asp:Button ID="btnSave" runat="server" AccessKey="S" OnClick="btnSave_Click" CssClass="AdminButton" Text='<%$ Code: AdminResources.Button_Save %>' ValidationGroup="mainVg" /> <asp:button id="btnClose" OnClientClick="CloseWindow();" Text='<%$ Code: AdminResources.Button_Close %>' CssClass="AdminButton" runat="server"></asp:button>
        </div>
    
    <telerik:radajaxmanager id="ajaxManager" runat="server" >
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="tvFolders">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="tvFolders" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:radajaxmanager>    
    </div>
    </form>
</body>
</html>
