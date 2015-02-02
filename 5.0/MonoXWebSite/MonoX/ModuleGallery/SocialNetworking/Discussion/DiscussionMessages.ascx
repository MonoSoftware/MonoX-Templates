<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="DiscussionMessages.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionMessages" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/TextBoxSyntaxHighlighter.ascx" TagPrefix="mono" TagName="TextBoxSyntaxHighlighter" %>
<%@ Register tagPrefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/ModuleGallery/RelatedContent.ascx" TagPrefix="MonoX" TagName="RelatedContent" %>

<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>


<telerik:radwindowmanager id="rwm" runat="server" Skin="MetroTouch"></telerik:radwindowmanager>
<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
            
<asp:UpdatePanel ID="pnlMain" runat="server" UpdateMode="Always"> 
    <ContentTemplate>
    <div class="discussion">
        <asp:PlaceHolder ID="panHeader" runat="server">
            <div class="discussion-top-section discussion-message">
                <div class="discussion-message-top">
                    <div class="button-share">
                        <div class="share"><asp:Panel ID="panTellAFriend" runat="server"></asp:Panel></div>
                    </div>
                    <div class="back-button-wrapper">
                        <asp:HyperLink ID="lnkBack" runat="server" CssClass="discussion-link back-link"></asp:HyperLink>
                    </div>
                </div>
                <div class="discussion-message-title-wrapper">
                    <div class="title-holder">
                        <h2>
                            <asp:Label ID="labBoardTitle" runat="server" CssClass="board-title"></asp:Label>
                            <asp:Literal ID="labTopicTitle" runat="server"></asp:Literal>
                        </h2> 
                    </div>
                    <div class="notif-holder">
                        <asp:PlaceHolder ID="plhTopicInfo" runat="server">
                            <span class="message-info">
                                <asp:Label ID="labStats" runat="server"></asp:Label>,
                                <asp:Label ID="labStatsPosts" runat="server"></asp:Label>,
                                <asp:Label ID="labDate" runat="server"></asp:Label> -
                                <asp:HyperLink ID="lnkAuthor" runat="server"></asp:HyperLink>
                            </span>
                        </asp:PlaceHolder>
                    </div>
                </div>

                <div class="main-options">
                    <div class="button-wrapper">
                        <asp:UpdatePanel ID="upSub" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:LinkButton ID="lnkSubscribe" CssClass="blog-button" runat="server"></asp:LinkButton>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="button-wrapper">
                        <asp:LinkButton ID="lnkClose" runat="server" CssClass="blog-button"></asp:LinkButton>
                    </div>
                    <div class="button-wrapper">
                        <asp:LinkButton ID="lnkEditTopic" runat="server" CssClass="blog-button"></asp:LinkButton>
                    </div>
                    <div class="button-wrapper button-wrapper-long">
                        <asp:LinkButton ID="lnkDeleteUnApproved" runat="server" CssClass="blog-button"></asp:LinkButton>
                    </div>
                    <div class="button-wrapper button-wrapper-long">
                        <asp:LinkButton ID="lnkDeleteSpam" runat="server" CssClass="blog-button"></asp:LinkButton>  
                    </div>          
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                            <div class="progress-holder">
                                <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..."
                                width="20" class="progress" />
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
            </div>
        </asp:PlaceHolder>        
        <asp:PlaceHolder ID="plhMessages" runat="server">
        <MonoX:RelatedContent id="relatedContent" runat="server" CssClass="related-content"></MonoX:RelatedContent>

            <asp:ListView ID="lvM" runat="server">
                <LayoutTemplate>
                    <dl>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                    </dl>
                </LayoutTemplate>
                <ItemTemplate>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="empty-message"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Posts_Empty %></div>
                </EmptyDataTemplate>
            </asp:ListView>


                <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
                    AutoPaging="false">
                    <PagerTemplate>
                    </PagerTemplate>
                </mono:Pager>


        </asp:PlaceHolder>
        <div class="board-container blog-edit-settings">
        <asp:PlaceHolder ID="plhReply" runat="server">
            
                <dl class="post-imput">
                    <dd class="discussion-form">
                        <asp:PlaceHolder ID="plhSummary" runat="server">
                            <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ShowSummary="true" CssClass="validation-summary" />
                        </asp:PlaceHolder>
                        <h3><asp:Literal ID="litReply" runat="server"></asp:Literal></h3>
                        <mono:TextBoxSyntaxHighlighter ID="textBoxSyntaxHighlighter" runat="server" />
                    <div class="editor-height jq_FieldValidatorWrapper">
                        <asp:TextBox ID="txtReply" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                        <mono:CustomRadEditor Width="100%" Height="220px" ID="radReply" EditModes="Design" StripFormattingOptions="AllExceptNewLines" IsRequired="true" runat="server" ToolBarMode="ShowOnFocus" ContentAreaMode="Div" ></mono:CustomRadEditor>
                        <asp:Label ID="labApprovalNote" runat="server" CssClass="approval-font" ></asp:Label>
                    </div>
                    </dd>
                    <dd>
                        <asp:UpdatePanel ID="upS" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <asp:PlaceHolder ID="panSubscribe" runat="server">
                                    <div class="discussion-form">
                                        <asp:CheckBox ID="chkSubscribe" runat="server" Checked="true" />
                                        <span><asp:Label ID="labSubscribe" runat="server" AssociatedControlID="chkSubscribe"></asp:Label></span>
                                    </div>
                                </asp:PlaceHolder>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </dd>
                    <dd class="discussion-form">

                        <asp:Label CssClass="discuss-label" ID="lblAttachments" AssociatedControlID="ctlUpload" runat="server"><%=  MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Attachments  %></asp:Label>
                        <MonoX:HTML5Upload runat="server" ID="ctlUpload" EnableFileGallery="false"  />
                        <MonoX:FileGallery CssClass="attached-files file-gallery" ID="ctlFileGallery" runat="server" EnableFileEdit="false" UsePrettyPhoto="true"  />

                    </dd>
                    <dd class="discussion-form empty-override">
                        <MonoX:StyledButton ID="btnPost" runat="server" CssClass="discussion-styled-button" />
                        <MonoX:StyledButton ID="btnCancel" runat="server" Visible="false" CausesValidation="false" CssClass="discussion-styled-button" />
                    </dd>
                </dl>
            
        </asp:PlaceHolder>
        </div>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
