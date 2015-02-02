<%@ Control
    Language="C#"
    AutoEventWireup="true"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogPostEdit"
    Codebehind="BlogPostEdit.ascx.cs" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Src="~/MonoX/controls/TagTextBox.ascx" TagPrefix="mono" TagName="TagTextBox" %>
<%@ Register Src="~/MonoX/ModuleGallery/Blog/BlogManageCategories.ascx" TagPrefix="MonoX" TagName="BlogManageCategories" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>

<asp:Panel runat="server" ID="pnlContainer">
    <div class="blog-edit-settings">
        
        <dl>
            <dd>
                <asp:ValidationSummary ID="summary" CssClass="validation-summary" runat="server" DisplayMode="List"  ShowSummary="true" ValidationGroup="<% $Code: this.ValidationGroup %>" />
            </dd>
            <dd class="categories jq_FieldValidatorWrapper">
                <div class="edit-title">  
                    <asp:Label ID="lblTitle" runat="server" AssociatedControlID="txtTitle"></asp:Label>
                </div>
                <asp:TextBox ID="txtTitle" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="validator validator-absolute" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic" ValidationGroup="<% $Code: this.ValidationGroup %>" ></asp:RequiredFieldValidator>
            </dd>        
            <dd class="categories jq_FieldValidatorWrapper">
                <div class="edit-title">  
                    <asp:Label ID="lblContent" runat="server" AssociatedControlID="radContent"></asp:Label>
                </div>
                <mono:CustomRadEditor Width="100%" id="radContent" ContentAreaMode="Div" ToolsFile="~/MonoX/controls/CustomRadEditorBlogToolsFile.xml" runat="server" ToolBarMode="ShowOnFocus" ></mono:CustomRadEditor>
            </dd>        
            <dd class="categories jq_FieldValidatorWrapper">
                <div class="edit-title">  
                    <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription"></asp:Label>
                </div>
                <mono:CustomRadEditor Width="100%" id="txtDescription" ContentAreaMode="Div" ToolsFile="~/MonoX/controls/CustomRadEditorBlogToolsFile.xml" runat="server" ToolBarMode="ShowOnFocus" ></mono:CustomRadEditor>
            </dd>
            <dd class="categories">
                <asp:Panel runat="server" ID="pnlCategories">
                    <asp:UpdatePanel runat="server" ID="pnlUpdateCategories">
                        <ContentTemplate>
                                <div class="edit-title edit-title-category">  
                                    <div class="blog-categories-holder">
                                    <asp:Label ID="lblCategories" AssociatedControlID="chkCategories" runat="server"></asp:Label>
                                    <asp:Hyperlink ID="lnkCategories" runat="server" CssClass="jq_categoriesAction" NavigateUrl="javascript:void(0);"></asp:Hyperlink>
                                </div>
                                <asp:Panel runat="server" ID="pnlCategoriesEdit" CssClass="jq_categoriesEdit blog-categories-wrapper">
                                    <MonoX:BlogManageCategories id="blogManageCategories" runat="server"></MonoX:BlogManageCategories>    
                                </asp:Panel>
                            </div>
                            <asp:CheckBoxList CssClass="check-box-list" ID="chkCategories" runat="server" DataTextField="Name" DataValueField="Id" RepeatLayout="UnorderedList" TextAlign="Right"></asp:CheckBoxList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </dd>
            <dd class="categories">
                <asp:Panel runat="server" ID="pnlRoles">
                    <div class="edit-title edit-title-category">  
                        <asp:Label ID="lblRoles" AssociatedControlID="chkRoles" runat="server"></asp:Label>
                    </div>
                    <asp:CheckBoxList CssClass="check-box-list" ID="chkRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatLayout="UnorderedList"  TextAlign="Right" ></asp:CheckBoxList>
                    
                </asp:Panel>
            </dd>
            <dd class="categories post-edit-title">
                <mono:TagTextBox id="tags" runat="server"></mono:TagTextBox>
            </dd>            
            <dd class="categories post-edit-title date-picker-holder">
                <asp:Label ID="lblDatePublished" AssociatedControlID="txtDatePublished" runat="server"></asp:Label>
                <rad:RadDatePicker id="txtDatePublished" Runat="server" Calendar-Skin="Default2006">                                                    
                    <datepopupbutton ></datepopupbutton>
                </rad:RadDatePicker>
            </dd>
            <dd class="categories chk-list">
                <dl>
                    <dd>
                        <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkIsPublished" runat="server" TextAlign="Right"></asp:CheckBox>
                        <asp:Label ID="lblIsPublished" AssociatedControlID="chkIsPublished" runat="server" CssClass="label"></asp:Label>
                    </dd>
                    <dd>
                        <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkIsCommentAllowed" runat="server" TextAlign="Right"></asp:CheckBox>
                        <asp:Label ID="lblIsCommentAllowed" AssociatedControlID="chkIsCommentAllowed" runat="server" CssClass="label"></asp:Label>
                    </dd>
                
                </dl>
            </dd>
            <dd class="categories post-edit-title">
                <asp:Label ID="lblAttachments" AssociatedControlID="ctlUpload" runat="server"></asp:Label>
                <MonoX:HTML5Upload runat="server" ID="ctlUpload" EnableFileGallery="false" CssClass="blog-file-upload" />
            </dd>
            <asp:PlaceHolder ID="plhBlogAttachments" runat="server">
            <dd class="categories">
                <MonoX:FileGallery ID="ctlFileGallery" runat="server" />
            </dd>
            </asp:PlaceHolder>
        </dl>
    </div>
</asp:Panel>

<div class="button-holder boxed-content">
    <asp:PlaceHolder id="plhActions" Runat="server">
        <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" OnClick="btnSave_Click" ValidationGroup="<% $Code: this.ValidationGroup %>"  />
        <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click" />                        
    </asp:PlaceHolder>
    <b style="color:Red;"><asp:Literal ID="labMessage" runat="server"></asp:Literal></b>
</div>

