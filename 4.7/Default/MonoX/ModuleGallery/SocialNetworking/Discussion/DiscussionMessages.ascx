<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="DiscussionMessages.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionMessages" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="SilverlightUpload" Src="~/MonoX/ModuleGallery/SilverlightUploadModule.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register Src="~/MonoX/controls/SyntaxHighlighter/TextBoxSyntaxHighlighter.ascx" TagPrefix="mono" TagName="TextBoxSyntaxHighlighter" %>
<%@ Register tagPrefix="telerik" namespace="Telerik.Web.UI" assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/ModuleGallery/RelatedContent.ascx" TagPrefix="MonoX" TagName="RelatedContent" %>

<telerik:radwindowmanager id="rwm" runat="server"></telerik:radwindowmanager>
            
<asp:UpdatePanel ID="pnlMain" runat="server" UpdateMode="Conditional"> 
    <ContentTemplate>
        <asp:PlaceHolder ID="panHeader" runat="server">
            <div class="discussion-top-section clearfix">
                <h1>
                    <asp:Label ID="labBoardTitle" runat="server" CssClass="board-title"></asp:Label>
                    <asp:Literal ID="labTopicTitle" runat="server"></asp:Literal>
                    <asp:PlaceHolder ID="plhTopicInfo" runat="server">
                    <strong class="message-info">
                        <asp:Label ID="labStats" runat="server"></asp:Label>,
                        <asp:Label ID="labStatsPosts" runat="server"></asp:Label>,
                        <asp:Label ID="labDate" runat="server"></asp:Label> -
                        <asp:HyperLink ID="lnkAuthor" runat="server"></asp:HyperLink>
                    </strong>
                    </asp:PlaceHolder>
                </h1>            
                <div class="main-options">
                    <asp:HyperLink ID="lnkBack" runat="server"></asp:HyperLink>
                    <div class="float-left">
                        <asp:UpdatePanel ID="upSub" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:LinkButton ID="lnkSubscribe" runat="server"></asp:LinkButton>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <asp:LinkButton ID="lnkClose" runat="server"></asp:LinkButton>
                    <asp:LinkButton ID="lnkDeleteUnApproved" runat="server"></asp:LinkButton>
                    <asp:LinkButton ID="lnkDeleteSpam" runat="server"></asp:LinkButton>                
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                            <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..."
                                width="20px" class="progress" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <div class="float-right share"><asp:Panel ID="panTellAFriend" runat="server"></asp:Panel></div>
                </div>
            </div>
        </asp:PlaceHolder>        
        <asp:PlaceHolder ID="plhMessages" runat="server">
            <MonoX:RelatedContent id="relatedContent" runat="server" CssClass="discussion"></MonoX:RelatedContent>
            <div class="discussion">
                <asp:ListView ID="lvM" runat="server">
                    <LayoutTemplate>
                        <div>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                        </div>
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
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="plhReply" runat="server">
            <div class="input-form">
                <dl>
                    <dd>
                        <asp:PlaceHolder ID="plhSummary" runat="server">
                            <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ShowSummary="true" CssClass="validation-summary" />
                        </asp:PlaceHolder>
                    </dd>
                    <dd>
                        <asp:Literal ID="litReply" runat="server"></asp:Literal>
                        <mono:TextBoxSyntaxHighlighter ID="textBoxSyntaxHighlighter" runat="server" />
                    </dd>
                    <dd class="editor-height">
                        <asp:TextBox ID="txtReply" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                        <mono:CustomRadEditor Width="100%" Height="220px" ID="radReply" EditModes="Design" StripFormattingOptions="AllExceptNewLines" runat="server" ToolBarMode="ShowOnFocus" ContentAreaMode="Div" ></mono:CustomRadEditor>
                    </dd>
                    <dd>
                        <asp:Label ID="labApprovalNote" runat="server" CssClass="approval-font" ></asp:Label>
                    </dd>
                    <dd>
                        <asp:UpdatePanel ID="upS" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <asp:PlaceHolder ID="panSubscribe" runat="server">
                                    <asp:CheckBox ID="chkSubscribe" runat="server" Checked="true" />
                                    <asp:Label ID="labSubscribe" runat="server" AssociatedControlID="chkSubscribe"></asp:Label>
                                </asp:PlaceHolder>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </dd>
                    <dd>
                        <table cellpadding="0" cellspacing="0" width="100%" class="snNoteTable">
                            <tr class="snUploadRow">
                                <td>
                                    <MonoX:SilverlightUpload runat="server" ID="ctlUpload" EnableFileGallery="false"  />
                                    <MonoX:FileGallery CssClass="attached-files file-gallery" ID="ctlFileGallery" runat="server" EnableFileEdit="false" UsePrettyPhoto="true"  />
                                </td>
                            </tr>
                        </table>
                    </dd>
                    <dd>
                        <MonoX:StyledButton ID="btnPost" runat="server" CssClass="discussion-styled-button" />
                        <MonoX:StyledButton ID="btnCancel" runat="server" Visible="false" CausesValidation="false" CssClass="discussion-styled-button" />
                    </dd>
                </dl>
            </div>
        </asp:PlaceHolder>
    </ContentTemplate>
</asp:UpdatePanel>
