<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DiscussionMessages.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionMessages" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager"
    TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/TextBoxSyntaxHighlighter.ascx"
    TagPrefix="mono" TagName="TextBoxSyntaxHighlighter" %>
<%@ Register tagPrefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>
<%@ Register Src="~/Mono/WebParts/Discussion/RelatedContent.ascx" TagPrefix="MonoX" TagName="RelatedContent" %>

<telerik:radwindowmanager id="rwm" runat="server">
</telerik:radwindowmanager>

<asp:UpdatePanel ID="pnlMain" runat="server" UpdateMode="Conditional"> 
    <ContentTemplate>
        <asp:PlaceHolder ID="panHeader" runat="server" >
            <div class="spacer--underline-primary">
                <div class="discussion--menu">
                    <asp:HyperLink ID="lnkBack" runat="server" class="btn--small discussion--side"></asp:HyperLink>
                    <asp:UpdatePanel ID="upSub" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:LinkButton ID="lnkSubscribe" runat="server" CssClass="btn--small"></asp:LinkButton>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:LinkButton ID="lnkClose" runat="server" class="btn--small discussion--side"></asp:LinkButton>
                    <asp:LinkButton ID="lnkDeleteUnApproved" runat="server" CssClass="btn--small"></asp:LinkButton>
                    <asp:LinkButton ID="lnkDeleteSpam" runat="server" CssClass="btn--small discussion--side"></asp:LinkButton>                
                    <div class="share-icons"><asp:Panel ID="panTellAFriend" runat="server"></asp:Panel></div>
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                            <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..."
                                width="20px" class="progress" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
                <h1 class="title--regular">
                    <asp:Label ID="labBoardTitle" runat="server"></asp:Label>
                    <asp:Literal ID="labTopicTitle" runat="server"></asp:Literal>
                </h1>
                <div class="discussion--last-post">
                    <span class="views-posts">
                        <asp:Label ID="labStats" runat="server"></asp:Label>,
                        <asp:Label ID="labStatsPosts" runat="server"></asp:Label>
                    </span>
                    <asp:Label ID="labDate" runat="server"></asp:Label>,&nbsp;
                    <asp:HyperLink ID="lnkAuthor" runat="server"></asp:HyperLink>
                </div>
            </div>
        </asp:PlaceHolder>        
        <asp:PlaceHolder ID="plhMessages" runat="server">
            <div class="group">
                <MonoX:RelatedContent id="relatedContent" runat="server"></MonoX:RelatedContent>
                <div class="l--main">
                    <asp:ListView ID="lvM" runat="server">
                        <LayoutTemplate>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                        </LayoutTemplate>
                        <ItemTemplate>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div class="empty-discussion"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Posts_Empty %></div>
                        </EmptyDataTemplate>
                    </asp:ListView>
                    <div style="clear: both">
                        <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
                            AutoPaging="false">
                            <PagerTemplate>
                            </PagerTemplate>
                        </mono:Pager>
                    </div>
                </div>
            </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="plhReply" runat="server">
            <div class="input-form discussion-form">
                <div class="form">
                    <div>
                        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ShowSummary="true" CssClass="validation-summary" />
                    </div>
                    <div>
                        <label class="form--label"><asp:Literal ID="litReply" runat="server"></asp:Literal></label>
                        <mono:TextBoxSyntaxHighlighter ID="textBoxSyntaxHighlighter" runat="server" />
                    </div>
                    <div class="spacer--secondary">
                        <asp:TextBox ID="txtReply" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        <mono:CustomRadEditor Width="100%" ID="radReply" EditModes="Design" StripFormattingOptions="AllExceptNewLines" runat="server"
                            ToolBarMode="ShowOnFocus"  ContentAreaMode="Iframe" ></mono:CustomRadEditor>
                    </div>
                    <div>
                        <asp:Label ID="labApprovalNote" runat="server" CssClass="spacer--secondary" ></asp:Label>
                    </div>
                    <div class="spacer--secondary">
                        <asp:UpdatePanel ID="upS" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <asp:PlaceHolder ID="panSubscribe" runat="server">
                                    <asp:CheckBox ID="chkSubscribe" runat="server" Checked="true" />
                                    <asp:Label ID="labSubscribe" runat="server" AssociatedControlID="chkSubscribe"></asp:Label>
                                </asp:PlaceHolder>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="spacer--secondary">
                        
                        <MonoX:FileGallery ID="ctlFileGallery" runat="server" EnableFileEdit="false" UsePrettyPhoto="true"  />
                    </div>
                    <div class="spacer--secondary">
                        <MonoX:HTML5Upload runat="server" ID="ctlUpload" EnableFileGallery="false"  />
                    </div>
                    <div>
                        <MonoX:StyledButton ID="btnPost" runat="server"/>
                        <MonoX:StyledButton ID="btnCancel" runat="server" Visible="false" CausesValidation="false"/>
                    </div>
                </div>
            </div>
        </asp:PlaceHolder>
    </ContentTemplate>
</asp:UpdatePanel>
