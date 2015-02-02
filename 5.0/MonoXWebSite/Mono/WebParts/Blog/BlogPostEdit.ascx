<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogPostEdit" Codebehind="BlogPostEdit.ascx.cs" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="mono" %> 
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Src="~/Mono/controls/TagTextBox.ascx" TagPrefix="mono" TagName="TagTextBox" %>
<%@ Register Src="~/Mono/WebParts/Blog/BlogManageCategories.ascx" TagPrefix="MonoX" TagName="BlogManageCategories" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
<asp:Panel runat="server" ID="pnlContainer">

        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List"  ShowSummary="true" CssClass="validation-summary" />
        <div class="form" >
            <div>
                <asp:Label ID="lblTitle" runat="server" AssociatedControlID="txtTitle" CssClass="form--label"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Dynamic" Text="!"></asp:RequiredFieldValidator>
            </div>        
            <div class="spacer--secondary">
                <asp:Label ID="lblContent" runat="server" AssociatedControlID="radContent" CssClass="form--label"></asp:Label>
                <mono:CustomRadEditor Width="100%" id="radContent" ToolsFile="~/MonoX/controls/CustomRadEditorBlogToolsFile.xml" runat="server" ToolBarMode="ShowOnFocus"></mono:CustomRadEditor>
            </div>        
            <div class="spacer--secondary">
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription" CssClass="form--label"></asp:Label>
                <mono:CustomRadEditor Width="100%" id="txtDescription" ToolsFile="~/MonoX/controls/CustomRadEditorBlogToolsFile.xml" runat="server" ToolBarMode="ShowOnFocus"></mono:CustomRadEditor>
                <%--<asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>    --%>
            </div>
            <div class="spacer--secondary">
                <asp:Panel runat="server" ID="pnlCategories">
                    <asp:UpdatePanel runat="server" ID="pnlUpdateCategories">
                        <ContentTemplate>
                            <div>
                                <asp:Label ID="lblCategories" AssociatedControlID="chkCategories" runat="server" CssClass="form--label"></asp:Label>
                                <asp:CheckBoxList CssClass="spacer--secondary chk--list" ID="chkCategories" runat="server" DataTextField="Name" DataValueField="Id" RepeatLayout="UnorderedList"></asp:CheckBoxList>
                                <asp:Hyperlink ID="lnkCategories" runat="server" CssClass="jq_categoriesAction btn--small" NavigateUrl="javascript:void(0);"></asp:Hyperlink>
                            </div>
                            <asp:Panel runat="server" ID="pnlCategoriesEdit" CssClass="jq_categoriesEdit">
                                <MonoX:BlogManageCategories id="blogManageCategories" runat="server"></MonoX:BlogManageCategories>    
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
            <div class="spacer--secondary">
                <asp:Panel runat="server" ID="pnlRoles">
                    <asp:Label ID="lblRoles" AssociatedControlID="chkRoles" runat="server" CssClass="form--label"></asp:Label>
                    <asp:CheckBoxList CssClass="table" ID="chkRoles" runat="server" DataTextField="RoleName" DataValueField="RoleId" RepeatColumns="5" RepeatLayout="Table" RepeatDirection="Horizontal" TextAlign="Left"></asp:CheckBoxList>
                </asp:Panel>
            </div>
            <div class="spacer--secondary">
                <mono:TagTextBox id="tags" runat="server"></mono:TagTextBox>
            </div>            
            <div class="spacer--secondary">
                <asp:Label ID="lblDatePublished" AssociatedControlID="txtDatePublished" runat="server" CssClass="form--label"></asp:Label>
                <div><rad:RadDatePicker ID="txtDatePublished" Skin="MetroTouch" Runat="server"></rad:RadDatePicker></div>
            </div>
            <div class="spacer--secondary">
                <asp:CheckBox ID="chkIsPublished" runat="server" TextAlign="Right"></asp:CheckBox>
                <asp:Label ID="lblIsPublished" AssociatedControlID="chkIsPublished" runat="server" CssClass="form--label"></asp:Label>
            </div>
            <div class="spacer--secondary">
                <asp:CheckBox ID="chkIsCommentAllowed" runat="server" TextAlign="Right" ></asp:CheckBox>
                <asp:Label ID="lblIsCommentAllowed" AssociatedControlID="chkIsCommentAllowed" runat="server" CssClass="form--label"></asp:Label>
            </div>
            <div class="spacer--secondary">
                <asp:Label ID="lblAttachments" AssociatedControlID="ctlUpload" runat="server" CssClass="form--label spacer--secondary"></asp:Label>
                <MonoX:HTML5Upload runat="server" ID="ctlUpload" EnableFileGallery="false" CssClass="blog-file-upload" />
            </div>
            <asp:PlaceHolder ID="plhBlogAttachments" runat="server">
                <div class="spacer--primary">
                    <MonoX:FileGallery ID="ctlFileGallery" runat="server" />
                </div>
            </asp:PlaceHolder>
        </div>
        <div class="button-holder">
            <asp:PlaceHolder id="plhActions" Runat="server">
                <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" OnClick="btnSave_Click"  />
                <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click" />                        
            </asp:PlaceHolder>
            <div class="warning"><asp:Literal ID="labMessage" runat="server"></asp:Literal></div>
        </div>

</asp:Panel>