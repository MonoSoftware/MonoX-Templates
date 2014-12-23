<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.Admin.NewsCategoryManager" EnableTheming="true"
    Theme="DefaultAdmin" Title="" CodeBehind="NewsCategoryManager.aspx.cs" %>

<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/controls/DualListBox.ascx" TagPrefix="mono" TagName="DualListBoxUC" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="Server">
<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="NewsCategories"></monox:ValidationHandler>
    <asp:PlaceHolder ID="plhScript" runat="server">

        <script type="text/javascript">
        var clickedNode = null;
        function MenuClick(sender, args)
        {
            clickedNode = args.get_node();  
            var menuItem = args.get_menuItem();
            if (menuItem.get_text() == '<%# MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.Delete %>')
            {
                var menu = menuItem.get_menu();
                menu.hide(); 
                radconfirm('<%# MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.DeleteConfirmation %>', ConfirmDeleteFolderCallBack, 330, 100, "", '<%# MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.Delete %>');
                args.set_cancel(true);
                return false;
            }            
         }  
          
        function ConfirmDeleteFolderCallBack(arg)
        {
            if (arg)
            {
                //need to do it this way due to the Firefox bug - 0x80004005 (NS_ERROR_FAILURE)...
                window.top.setTimeout(function() 
                { 
                    var aManager = <%# ajaxManager.ClientID %>;                    
                    var id = clickedNode.get_value();
                    aManager.ajaxRequest("DeleteCategory::" + id);
                    clickedNode = null;
                }, 0);                 
	            return true;                    
            }
            else
                clickedNode = null;
        }
            
            
        function ShowRadMenu(node, e)
        {    
            var menu = null;
            menu = window["<%# treeContextMenu.ClientID %>"];
            if (menu)
            {
                menu.Show(e);
                e.cancelBubble = true;
                if (e.stopPropagation)
                {
                    e.stopPropagation();
                }
                e.returnValue = false;
                if (e.preventDefault)
                {
                    e.preventDefault();
                }
            }
            
        }       
       
       $(window).resize(function () {
            var masterDiv = $('.masterDiv');
            var header = $('header').height();
            var viewport = $(window).height();
            var razlika = viewport - header;
            masterDiv.height(razlika);
        }
        ).resize();

        </script>

    </asp:PlaceHolder>
    <telerik:RadCodeBlock ID="cb1" runat="server">
    <style type="text/css">
        HTML, FORM
        {
	        margin:0;
	        height:100%;
        }
        #<%= upPage.ClientID %>
        {
        	height:100%;
        }    
    </style>
    </telerik:RadCodeBlock> 
    <rad:RadWindowManager ID="rwmSingleton" runat="server" Skin="MetroTouch">
    </rad:RadWindowManager>
    <asp:UpdatePanel ID="upPage" runat="server" ChildrenAsTriggers="true">    
        <ContentTemplate>
        <div style="height:100%;">
            <telerik:RadSplitter ID="RadSplitterBrowser" runat="server" VisibleDuringInit="false" ResizeWithBrowserWindow="true" BorderColor="Gray" LiveResize="true"
                Height="100%"
                Width="100%"
                EnableClientDebug="False"
                BorderSize="1"
                BorderStyle="Solid"
                Skin="MetroTouch"                
                >
                <telerik:RadPane ID="RadPaneTreeView" runat="server" Height="100%" Width="20%" BackColor="#e7f5ff" CssClass="splitter-left">
                    <div class="splitter-content">
                        <div style="padding: 10px;">
                            <rad:RadTreeView ID="radCategoriesTree" runat="server" Skin="MetroTouch" AutoPostBack="true"
                                EnableDragAndDrop="true" EnableDragAndDropBetweenNodes="true" BeforeClientContextMenu="ShowRadMenu"
                                OnNodeClick="radCategoriesTree_NodeClick" OnNodeDrop="radCategoriesTree_NodeDrop">
                                <ContextMenus>
                                    <rad:RadTreeViewContextMenu ID="treeContextMenu" runat="server" Skin="MetroTouch" 
                                        CausesValidation="false">
                                        <Items>
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.Cut" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.PasteBefore" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.Paste" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.PasteAfter" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.MoveUp" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.MoveDown" />
                                            <rad:RadMenuItem Text="MonoSoftware.MonoX.Resources.CategoryContextMenuOperations.Delete" />
                                        </Items>
                                    </rad:RadTreeViewContextMenu>
                                </ContextMenus>
                            </rad:RadTreeView>
                            <br />                        
                            <b id="labCategoryDragAndDrop" runat="server"><%# MonoSoftware.MonoX.Resources.NewsAdmin.CategoryDragAndDrop %></b>
                        </div>
                        <asp:Panel runat="server" CssClass="splitterDummy" ID="pnlDummyLeft" Visible="false"></asp:Panel>                                        
                    </div>
                </telerik:RadPane>
                <telerik:RadSplitBar ID="RadSplitBar1" runat="server" Width="1px" />
                <telerik:RadPane ID="RadPaneGrid" Height="100%" runat="server" Width="80%">
                    <div class="splitter-content">
                        <div class="splitter-top">
                            <div id="imgCategory" runat="server" class="image-holder">
                                <asp:Image ID="imgCategoryPhoto" runat="server" />
                            </div>
                            <div class="category-holder">
                                <asp:Label ID="labSelectedCategory" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labSelectedCategory %>'></asp:Label>
                                <h2><asp:Label ID="labTitleView" runat="server"></asp:Label></h2>
                            </div>                            
                        </div>
                        <asp:PlaceHolder ID="panView" runat="server">
                            <div class="split-content">
                                <dl>
                                    <dd>
                                        <asp:CheckBox ID="chkPublishedView" runat="server" Enabled="false" CssClass="checkbox" />
                                        <asp:Label ID="labPublishedViewCaption" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labPublished %>' AssociatedControlID="chkPublishedView"></asp:Label>
                                    </dd>
                                    <dd>
                                        <span class="main-label"><asp:Label ID="labDescriptionViewCaption" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labDescription %>' AssociatedControlID="labDescriptionView"></asp:Label></span>                                              
                                        <asp:Label ID="labDescriptionView" runat="server" ></asp:Label>                                              
                                    </dd>
                                    <dd>
                                        <span class="main-label"><asp:Label ID="Label1" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labCategoryViewRole %>' AssociatedControlID="chkViewRolesView"></asp:Label></span>
                                        <asp:CheckBoxList ID="chkViewRolesView" runat="server" Enabled="false" Width="100%" RepeatLayout="UnorderedList"></asp:CheckBoxList>
                                    </dd>
                                    <dd>
                                        <span class="main-label"><asp:Label ID="Label2" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labCategoryEditRole %>' AssociatedControlID="chkEditRolesView"></asp:Label></span>
                                        <asp:CheckBoxList ID="chkEditRolesView" runat="server" Enabled="false" RepeatLayout="UnorderedList" Width="100%"></asp:CheckBoxList>
                                    </dd>
                                </dl>                                    
                            </div>
                            <div class="splitter-bottom">
                                <asp:Button ID="btnAddNew" runat="server" CssClass="AdminButton" CausesValidation="false" Text='<%$ Code: AdminResources.Button_Add %>' OnClick="btnAddNew_Click" />
                                <asp:Button ID="btnEdit" runat="server" CssClass="AdminButton" CausesValidation="false" ValidationGroup="NewsCategories" Text='<%$ Code: AdminResources.Button_Edit %>' OnClick="btnEdit_Click" />
                            </div>        
                            <asp:Panel runat="server" CssClass="splitterDummy" ID="pnlDummyRight" Visible="false"></asp:Panel>                                        
                        </asp:PlaceHolder>                
                        <asp:PlaceHolder ID="panEdit" runat="server">
                            <div class="split-content">

                                    <dl class="add-category-news">

                                        <dd class="jq_FieldValidatorWrapper">
                                            <asp:Label CssClass="big-label" ID="labTitle" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labTitle %>' ToolTip='<%$ Code: AdminResources.NewsCategoryManager_labTitle_ToolTip %>' AssociatedControlID="txtTitle"></asp:Label>
                                            <asp:TextBox ID="txtTitle" runat="server" ValidationGroup="NewsCategories"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="validator" ValidationGroup="NewsCategories" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsCategoryManager_requiredTitle %>'></asp:RequiredFieldValidator>
                                        </dd>
                                        <dd class="jq_FieldValidatorWrapper">
                                            <asp:Label CssClass="big-label" ID="labName" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labName %>' ToolTip='<%$ Code: AdminResources.NewsCategoryManager_labName_ToolTip %>' AssociatedControlID="txtName"></asp:Label>                       
                                            <asp:TextBox ID="txtName" runat="server" ValidationGroup="NewsCategories"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="requiredName" runat="server" CssClass="validator" ValidationGroup="NewsCategories" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsCategoryManager_requiredName %>'></asp:RequiredFieldValidator>
                                        </dd>
                                        <dd>
                                            <asp:Label CssClass="big-label" ID="labImage" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labImage %>' AssociatedControlID="photoUpload"></asp:Label>
                                            <div class="upload-holder"><asp:FileUpload ID="photoUpload" runat="server"  /></div>
                                        </dd>    
                                        <dd id="rowPublish" runat="server">
                                            <asp:CheckBox ID="chkPublished" runat="server" CssClass="checkbox" />
                                            <asp:Label ID="labPublished" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labPublished %>' AssociatedControlID="chkPublished"></asp:Label>
                                        </dd>
                                    </dl>
                                    <br />
                                    <dl class="add-category-news">
                                        <dd class="label-straight">
                                            <asp:Label CssClass="big-label" ID="labDescription" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labDescription %>' AssociatedControlID="txtDescription"></asp:Label>                      
                                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Columns="30" Rows="8" Width="100%"></asp:TextBox>                        
                                        </dd>
                                    
                                        <dd>
                                            <asp:Label CssClass="big-label" ID="labTemplate" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labTemplate %>' AssociatedControlID="ddlTemplates"></asp:Label>                      
                                            <asp:DropDownList ID="ddlTemplates" runat="server" Width="100%"></asp:DropDownList>
                                        </dd>
                                        <dd>
                                            <asp:Label CssClass="big-label" ID="labTemplateFullContent" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labTemplateFullContent %>' AssociatedControlID="ddlTemplatesFullContent"></asp:Label>                        
                                            <asp:DropDownList ID="ddlTemplatesFullContent" runat="server" Width="100%"></asp:DropDownList>
                                        </dd>
                                        <dd>
                                            <asp:Label CssClass="big-label" ID="labCategoryViewRole" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labCategoryViewRole %>' AssociatedControlID="chkCategoryViewPermissions"></asp:Label>
                                            <asp:CheckBoxList ID="chkCategoryViewPermissions" runat="server" RepeatLayout="UnorderedList" Width="100%"></asp:CheckBoxList>
                                        </dd>
                                        <dd>
                                            <asp:Label CssClass="big-label" ID="labCategoryEditRole" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labCategoryEditRole %>' AssociatedControlID="chkCategoryEditPermissions"></asp:Label>
                                            <asp:CheckBoxList ID="chkCategoryEditPermissions" runat="server" RepeatLayout="UnorderedList" Width="100%"></asp:CheckBoxList>
                                        </dd>
                                        <dd>
                                            <asp:Label ID="labCategoryRoleNote" runat="server" Text='<%$ Code: AdminResources.NewsCategoryManager_labCategoryRoleNote %>'></asp:Label>
                                        </dd>
                                    </dl>   
                            </div>                                             
                            <div class="splitter-bottom">
                                <asp:Button ID="btnSave" runat="server" CssClass="AdminButton" CausesValidation="true" ValidationGroup="NewsCategories" Text='<%$ Code: AdminResources.Button_Save %>' OnClick="btnSave_Click" />
                                <asp:Button ID="btnCancel" runat="server" CssClass="AdminButton" CausesValidation="false" ValidationGroup="NewsCategories" Text='<%$ Code: AdminResources.Button_Cancel %>' OnClick="btnCancel_Click" />
                                <b style="color: Red;"><asp:Literal ID="labMessage" runat="server"></asp:Literal></b>
                            </div>                                                                                
                        </asp:PlaceHolder>
                    </div>
                </telerik:RadPane>
            </telerik:RadSplitter>
            </div>
        </ContentTemplate>    
    </asp:UpdatePanel>    
    <rad:RadAjaxManager ID="ajaxManager" runat="server" >
    </rad:RadAjaxManager>
</asp:Content>
