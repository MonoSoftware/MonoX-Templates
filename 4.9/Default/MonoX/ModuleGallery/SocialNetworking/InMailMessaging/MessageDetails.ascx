<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="MessageDetails.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.InMail.MessageDetails" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Import Namespace="MonoSoftware.Web" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Blog" TagPrefix="MonoX" %>
<%@ Register TagPrefix="MonoX" TagName="SilverlightUpload" Src="~/MonoX/ModuleGallery/SilverlightUploadModule.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="CustomRadEditor" Src="~/MonoX/Controls/CustomRadEditor.ascx" %>

<div class="message-center">
    <div class="message-details">
        <h1><asp:Literal runat="server" ID="ltlSubject"></asp:Literal></h1>
        <hr />
        <asp:ListView ID="lvPosts" runat="server">
            <LayoutTemplate>
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate>
            <div class="message-holder" >
                <div class="avatar">
                    <MonoX:Gravatar ID="ctlGravatar" runat="server" Size="100" Email='<%# Eval("AspnetUser.Email") %>' UserName='<%# Eval("AspnetUser.UserName") %>' />
                </div>
                <div class="content">
                    <div class="date"><asp:Literal ID="lblDate" runat="server" Text='<%# MonoSoftware.MonoX.Repositories.UserRepository.GetInstance().ConvertTimeFromUtcToUserLocalTime(MonoSoftware.MonoX.Utilities.SecurityUtility.GetUserId(), ((MonoSoftware.MonoX.DAL.EntityClasses.SnMessageEntity)Container.DataItem).DateCreated) %>'></asp:Literal></div>
                    <h2><asp:Literal ID="lblAuthor" runat="server" Text='<%# Eval("AspnetUser.UserDisplayName") %>'></asp:Literal></h2>
                    <p><asp:Literal ID="ltlMessage" runat="server" Text='<%# Eval("Body") %>'></asp:Literal></p>
                    <MonoX:FileGallery ID="ctlFileGalleryItem" runat="server" Visible='<%# AllowFileUpload %>' ParentEntityId='<%# Eval("Id") %>' ViewFilePageId='<%# ViewFilePageId %>' ViewFilePageUrl='<%# ViewFilePageUrl %>' UsePrettyPhoto='<%# this.UsePrettyPhoto %>' Width="100%" GroupItemCount="5" />
                </div>
            </div>
            </ItemTemplate>
            <ItemSeparatorTemplate>
                <hr />
            </ItemSeparatorTemplate>
        </asp:ListView>
    </div>
    <div class="clearfix">
        <Mono:Pager runat="server" ID="pager" PageSize="20" NumericButtonCount="5" AllowCustomPaging="true"
            AutoPaging="false">
            <pagertemplate></pagertemplate>
        </Mono:Pager>
    </div>
    <asp:Panel runat="server" ID="pnlContainer">
        <div class="message-form">
            <dl>
                <dd class="editor-height">
                    <asp:ValidationSummary ID="summary" CssClass="validation-summary" runat="server" />
                    <div class="edit-title">
                        <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage"></asp:Label>
                    </div>
                    <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <MonoX:CustomRadEditor ID="txtHTMLMessage" IsRequired="true" runat="server" AutoResizeHeight="false" ContentAreaMode="Div" ToolBarMode="ShowOnFocus"></MonoX:CustomRadEditor>
                </dd>
                <asp:Panel runat="server" ID="pnlUpload" Style="border: none;">
                    <dd class="silverlight-file-holder">
                        <div class="edit-title">
                            <asp:Label ID="lblUpload" AssociatedControlID="ctlUpload" runat="server"></asp:Label>
                        </div>
                        <MonoX:SilverlightUpload runat="server" ID="ctlUpload" Width="100%" EnableFileGallery="false" />
                        <asp:Label ID="lblFileGallery" AssociatedControlID="ctlFileGallery" runat="server" CssClass="attached-files">&nbsp;</asp:Label>
                        <MonoX:FileGallery ID="ctlFileGallery" runat="server" CssClass="file-gallery" />
                    </dd>
                </asp:Panel>
                <asp:PlaceHolder ID="plhSendMail" runat="server">
                    <dd class="checkbox-messaging">
                        <asp:CheckBox BorderStyle="None" BorderWidth="0px" ID="chkSendMail" runat="server" TextAlign="Right" Checked="true"></asp:CheckBox>
                        <%= SocialNetworkingResources.Messaging_MessageDetails_SendMailCopy %>
                    </dd>
                </asp:PlaceHolder>
                <dd>
                    <div class="button-holder">
                        <MonoX:StyledButton ID="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" />
                        <MonoX:StyledButton ID="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click" Visible="false" />
                        <MonoX:StyledButton ID="btnBack" runat="server" CausesValidation="false" OnClick="btnBack_Click" />
                    </div>
                    <div>
                        <asp:Label runat="server" CssClass="valdiation-summary" ID="lblWarning"></asp:Label>
                    </div>
                </dd>
            </dl>
        </div>
    </asp:Panel>
</div>