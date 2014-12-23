<%@ Import Namespace="MonoSoftware.MonoX.DAL.HelperClasses" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<%@ Page Language="C#" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" AutoEventWireup="True"
    Inherits="MonoSoftware.MonoX.Admin.NewsManager" EnableTheming="true" Theme="DefaultAdmin"
    Title="" CodeBehind="NewsManager.aspx.cs" %>

<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %>
<%@ Register TagPrefix="mono" Namespace="MonoSoftware.Web.LiteGrid" Assembly="MonoSoftware.Web.LiteGrid" %>
<%@ Register Src="~/MonoX/Admin/controls/GridViewEditBox.ascx" TagPrefix="monox"
    TagName="GridViewEditBox" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ MasterType VirtualPath="~/MonoX/MasterPages/AdminDefault.master" %>    
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cp" runat="Server">
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="NewsItems"></monox:ValidationHandler>
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

            <telerik:RadSplitter ID="RadSplitterBrowser" runat="server" VisibleDuringInit="false" ResizeWithBrowserWindow="true" BorderColor="Gray"
                Height="100%"
                Width="100%"
                EnableClientDebug="False"
                BorderSize="1"
                BorderStyle="Solid"
                Skin="Default" 
                CssClass="news-administration"               
                >    
                <telerik:RadPane ID="RadPaneTreeView" runat="server" Height="100%" Width="20%" BackColor="#e7f5ff" CssClass="splitter-left" >
                    <div class="splitter-content">
                            <asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                                <ContentTemplate>
                                    <rad:RadTreeView ID="radCategoriesTree" runat="server" Skin="MetroTouch" AutoPostBack="true"
                                        MultipleSelect="false" OnNodeClick="radCategoriesTree_NodeClick" />
                                    <asp:Button ID="btnGridTreeRefresh" runat="server" CausesValidation="false" Style="visibility: hidden;
                                        display: none;" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                    </div>
                </telerik:RadPane>
                
                <telerik:RadSplitBar ID="RadSplitBar1" runat="server" Width="1px" />            
                
                <telerik:RadPane ID="RadPaneGrid" Height="100%" runat="server" Width="80%"> 
                <div class="grid-holder">           
                    <monox:GridViewEditBox ID="gridViewBox" runat="server" ShowTopActions="true">
                        <CustomFilterTemplate>                                        
                        </CustomFilterTemplate>
                        <Columns>
                            <mono:LiteGridBoundField DataField="Id" Visible="false" />
                            <mono:LiteGridBoundField DataField="Title" HeaderText='<%$ Code: AdminResources.NewsManager_sortTitle %>' SortExpression="Title" />
                            <mono:LiteGridBoundField DataField="AspnetUser.UserName" HeaderText='<%$ Code: AdminResources.NewsManager_sortAuthor %>' SortExpression="UserName" />
                            <mono:LiteGridBoundField DataField="Published" HeaderText='<%$ Code: AdminResources.NewsManager_sortStatus %>' SortExpression="Published" />
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="labNoData" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNoData %>'></asp:Label>
                        </EmptyDataTemplate>
                        <CustomActionsTemplate>
                            <asp:Button ID="btnPublish" runat="server" CssClass="AdminLargeButton" OnClick="btnPublish_Click" Text='<%$ Code: AdminResources.NewsManager_btnPublish %>'></asp:Button>
                        </CustomActionsTemplate>
                        <ContentTemplate>
                            <rad:RadTabStrip ID="tabStripNewsItems" runat="server" CausesValidation="false" Skin="Default"
                                MultiPageID="multiPageNewsItems" ReorderTabRows="false" Align="left">
                                <Tabs>
                                    <rad:RadTab >
                                    </rad:RadTab>
                                    <rad:RadTab >
                                    </rad:RadTab>
                                    <rad:RadTab >
                                    </rad:RadTab>
                                    <rad:RadTab >
                                    </rad:RadTab>
                                </Tabs>
                            </rad:RadTabStrip>
                            <rad:RadMultiPage ID="multiPageNewsItems" runat="server" CssClass="page-news">
                                <rad:RadPageView ID="EditData" runat="server" CssClass="tab-float-left">
                                <dl class="news-list news-list-labels">
                                    <dd class="full-width">
                                        <span id="imgCategory" runat="server">
                                            <img src="<%= MonoSoftware.MonoX.GetImage.GetImageHandlerPath %>?<%= MonoSoftware.MonoX.UrlParams.ImageType.Name %>=<%= MonoSoftware.MonoX.Utilities.GetImageType.NewsCategory.ToString() %>&amp;<%= MonoSoftware.MonoX.UrlParams.EntityId.Name %>=<%= SelectedCategoryId %>" />
                                        </span>
                                    </dd>
                                    <dd class="full-width"><span style="color: Red;"><asp:Label ID="labMessage" runat="server"></asp:Label></span></dd>
                                    <dd>
                                        <asp:Label ID="labSelectedCategory" runat="server" Text='<%$ Code: AdminResources.NewsManager_labSelectedCategory %>'></asp:Label>
                                        <rad:RadComboBox ID="ddlCategories" runat="server" Width="100%" ></rad:RadComboBox>
                                    </dd>
                                    <dd class="jq_FieldValidatorWrapper title-input-fix">
                                        <asp:Label ID="labNewsTitle" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsTitle %>'></asp:Label>
                                        <asp:TextBox ID="txtNewsTitle" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredNewsTitle" runat="server" CssClass="validator" ValidationGroup="NewsItems" ControlToValidate="txtNewsTitle" SetFocusOnError="true" Display="Dynamic" Text="!" ErrorMessage='<%$ Code: AdminResources.NewsManager_requiredNewsTitle %>'></asp:RequiredFieldValidator>
                                    </dd>
                                    <dd class="full-width">
                                        <asp:Label ID="labNewsShortContent" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsShortContent %>'></asp:Label>        
                                        <mono:CustomRadEditor id="radNewsShortContent" EditorHeight="300px" Skin="MetroTouch" AutoResizeHeight="False" runat="server" Width="100%"></mono:CustomRadEditor>
                                    </dd>
                                    <dd class="full-width">
                                        <asp:Label ID="labNewsContent" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsContent %>'></asp:Label>    
                                        <mono:CustomRadEditor id="radNewsContent" EditorHeight="300px" Skin="MetroTouch" AutoResizeHeight="False" runat="server" Width="100%" ></mono:CustomRadEditor>
                                    </dd>
                                </dl>
                            </rad:RadPageView>
                                <rad:RadPageView ID="PublicationTitle" runat="server" CssClass="tab-float-left">
                                    <dl class="tab-content news-list-labels">
                                        <dd id="rowPublished" runat="server">
                                            
                                            <asp:CheckBox ID="chkNewsPublished" CssClass="news-chk" runat="server" />
                                            <asp:Label ID="labNewsPublished" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsPublished %>'></asp:Label>
                                        </dd>
                                        <dd id="rowVisiblePublishDate" runat="server">
                                            <asp:Label ID="labVisiblePublishDate" runat="server" Text='<%$ Code: AdminResources.NewsManager_labVisiblePublishDate %>' ToolTip='<%$ Code: AdminResources.NewsManager_labVisiblePublishDateToolTip %>'></asp:Label>
                                            <rad:RadDateTimePicker ID="radVisiblePublishDate" runat="server" Calendar-Skin="Metro" TimeView-RenderDirection="Vertical">
                                            </rad:RadDateTimePicker>
                                        </dd>
                                        <dd id="rowPublishStart" runat="server">
                                            <div class="jq_FieldValidatorWrapper">
                                                <asp:Label ID="labNewsPublishStart" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsPublishStart %>'></asp:Label>
                                                <rad:RadDateTimePicker ID="radDatePublishStarts" runat="server" Calendar-Skin="Default" TimeView-RenderDirection="Vertical">
                                                </rad:RadDateTimePicker>
                                                <asp:RequiredFieldValidator ID="reqPublishStart" runat="server" CssClass="validator" ValidationGroup="NewsItems"
                                                    ControlToValidate="radDatePublishStarts" SetFocusOnError="true" Display="Dynamic" Text="*" ErrorMessage='<%$ Code: AdminResources.NewsManager_RequiredNewsPuslishStart %>'></asp:RequiredFieldValidator>
                                            </div>
                                        </dd>
                                        <dd id="rowPublishEnd" runat="server">
                                            <asp:Label ID="labNewsPublishEnds" runat="server" Text='<%$ Code: AdminResources.NewsManager_labNewsPublishEnds %>'></asp:Label>
                                            <rad:RadDateTimePicker ID="radDatePublishEnds" runat="server" Calendar-Skin="Default" TimeView-RenderDirection="Vertical">
                                            </rad:RadDateTimePicker>
                                        </dd>
                                    </dl>
                                </rad:RadPageView>
                                <rad:RadPageView ID="DisplayPropsTitle" runat="server" CssClass="tab-float-left">
                                    <dl class="display-properties-list news-list-labels">
                                        <dd>
                                            <asp:CheckBox ID="chkShowOnHomePage" runat="server" Text='<%$ Code: AdminResources.NewsManager_chkShowOnHomePage %>' />
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowTitle" runat="server" />
                                            <label><asp:Label ID="labShowTitle" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowTitle %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowShortContent" runat="server" />
                                            <label><asp:Label ID="labShowShortContent" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowShortContent %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowCategoryTitle" runat="server" />
                                            <label><asp:Label ID="labShowCategoryTitle" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowCategoryTitle %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowCategoryTitleAsLink" runat="server" />
                                            <label><asp:Label ID="labShowCategoryTitleAsLink" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowCategoryTitleAsLink %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowFullCategoryPath" runat="server" />
                                            <label><asp:Label ID="labShowFullCategoryPath" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowFullCategoryPath %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowUserName" runat="server" />
                                            <label><asp:Label ID="labShowUserName" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowUserName %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowDateEntered" runat="server" />
                                            <label><asp:Label ID="labShowDateEntered" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowDateEntered %>'></asp:Label></label>
                                        </dd>
                                        <dd>
                                            <asp:CheckBox ID="chkShowDateModified" runat="server" />
                                            <label><asp:Label ID="labShowDateModified" runat="server" Text='<%$ Code: AdminResources.NewsManager_labShowDateModified %>'></asp:Label></label>
                                       </dd>
                                    </dl>
                                </rad:RadPageView>
                                <rad:RadPageView ID="PageView1" runat="server" CssClass="tab-float-left">
                                    <dl class="news-list-labels">
                                        <dd>
                                            <label><asp:Label ID="labMetaDescription" runat="server" Text='<%$ Code: AdminResources.NewsManager_labMetaDescription %>'></asp:Label></label>
                                            <asp:TextBox ID="txtMetaDescription" runat="server" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
                                            <br />
                                            <strong><%= MonoSoftware.MonoX.Resources.NewsAdmin.MetaDescriptionNote %></strong>
                                        </dd>
                                        <dd>
                                            <label><asp:Label ID="labMetaKeywords" runat="server" Text='<%$ Code: AdminResources.NewsManager_labMetaKeywords %>'></asp:Label></label>
                                            <asp:TextBox ID="txtMetaKeywords" runat="server" TextMode="MultiLine" Rows="5" Width="100%"></asp:TextBox>
                                            <br />
                                            <strong><%= MonoSoftware.MonoX.Resources.NewsAdmin.MetaKeywordsNote %></strong>
                                        </dd>
                                    </dl>
                                </rad:RadPageView>
                            </rad:RadMultiPage>
                        </ContentTemplate>
                    </monox:GridViewEditBox>
                </div>
                </telerik:RadPane>
            </telerik:RadSplitter>
        </ContentTemplate>    
    </asp:UpdatePanel>    
    <rad:RadAjaxManager ID="ajaxManager" runat="server" >
    </rad:RadAjaxManager>
    <script>
        $(window).resize(function () {
            var masterDiv = $('.masterDiv');
            var header = $('header').height();
            var viewport = $(window).height();
            var razlika = viewport - header;
            masterDiv.height(razlika);
        }
        ).resize();
    </script>

</asp:Content>
