<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="MessageDetails.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.InMail.MessageDetails" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="Mono" Assembly="MonoX" Namespace="MonoSoftware.MonoX.Blog" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="CustomRadEditor" Src="~/MonoX/Controls/CustomRadEditor.ascx" %>

<div class="spacer--large blog--single">

<div>
    <div class="content">
        <h2 class="title--secondary blog-title"><asp:Literal runat="server" ID="ltlSubject"></asp:Literal></h2>
        
        <asp:ListView ID="lvPosts" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="blog--avatar">
                <div class="blog--avatar__item"><Mono:Gravatar ID="ctlGravatar" runat="server" Email='<%# Eval("AspnetUser.Email") %>' UserName='<%# Eval("AspnetUser.UserName") %>' /></div>
            </div>
            <div class="blog--content">
            <div class="blog--home-list">
                <div class="blog--meta-info">
                    <strong><asp:Literal ID="lblAuthor" runat="server" Text='<%# Eval("AspnetUser.UserName") %>'></asp:Literal></strong>
                    <span class="date"><asp:Literal ID="lblDate" runat="server" Text='<%# Eval("DateCreated") %>'></asp:Literal></span>
                </div>
            </div>
            <div class="blog--description article--post spacer--underline-primary ">
                    <asp:Literal ID="ltlMessage" runat="server" Text='<%# Eval("Body") %>'></asp:Literal>
            </div>
            <div class="blog--files">
                <MonoX:FileGallery ID="ctlFileGalleryItem" runat="server" ParentEntityType="<%$ Code: Convert.ToInt32(MonoSoftware.MonoX.Utilities.SnEntityType.Message) %>" ParentEntityId='<%# Eval("Id") %>' Visible='<%# AllowFileUpload %>' ViewFilePageId='<%# ViewFilePageId %>' ViewFilePageUrl='<%# ViewFilePageUrl %>' UsePrettyPhoto='<%# this.UsePrettyPhoto %>' Width="100%"  />    
            </div>
                </div>
        </ItemTemplate>
        <ItemSeparatorTemplate>
        </ItemSeparatorTemplate>
        </asp:ListView>
    </div>
</div>
        <mono:Pager runat="server" ID="pager" PageSize="20" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
            <PagerTemplate></PagerTemplate>
        </mono:Pager>

        <asp:Panel runat="server" ID="pnlContainer">
            <div class="input-form comment-form clearfix">
                <div class="form spacer-secondary">
                    <div class="comment--field">
                        <asp:ValidationSummary ID="summary" CssClass="validation-summary" runat="server" />
                    </div>
                    <div class="comment--field">
                        <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" CssClass="form--label"></asp:Label>
                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>
                        <MonoX:CustomRadEditor ID="txtHTMLMessage" IsRequired="true" runat="server" AutoResizeHeight="false" ContentAreaMode="Div" ToolBarMode="ShowOnFocus"></MonoX:CustomRadEditor>
                    </div>
                    <asp:Panel runat="server" ID="pnlUpload" CssClass="comment--field">
                        <div class="comment--field">
                            <asp:Label ID="lblUpload" AssociatedControlID="ctlUpload" runat="server"  CssClass="form--label"></asp:Label>
                            <MonoX:HTML5Upload runat="server" ID="ctlUpload" Width="100%" EnableFileGallery="false" CssClass="blog-file-upload" />
                        </div>
                        <div class="comment--field">
                            <asp:Label ID="lblFileGallery" AssociatedControlID="ctlFileGallery" runat="server" Visible="false" CssClass="form--label spacer--secondary">&nbsp;</asp:Label>
                            <MonoX:FileGallery ID="ctlFileGallery" runat="server" ParentEntityType="<%$ Code: Convert.ToInt32(MonoSoftware.MonoX.Utilities.SnEntityType.Message) %>" />
                        </div>
                    </asp:Panel>
                </div>
                <div class="spacer--secondary">
                    <MonoX:StyledButton id="btnSend" runat="server" CausesValidation="false" OnClick="btnSend_Click"  />
                    <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click"  />
                    <MonoX:StyledButton ID="btnBack" runat="server" CausesValidation="false" OnClick="btnBack_Click" />
                    <asp:PlaceHolder ID="plhSendMail" runat="server">
                        <div class="checkbox-messaging">
                            <asp:CheckBox ID="chkSendMail" runat="server" TextAlign="Right" Checked="true"></asp:CheckBox>
                            <asp:Label ID="lblChkSend" AssociatedControlID="chkSendMail" runat="server" ><%= SocialNetworkingResources.Messaging_MessageDetails_SendMailCopy %></asp:Label>
                        </div>
                    </asp:PlaceHolder>
                </div>
            </div>
            <div class="warning"><asp:Label runat="server" ID="lblWarning"></asp:Label></div>
        </asp:Panel>
    </div>
