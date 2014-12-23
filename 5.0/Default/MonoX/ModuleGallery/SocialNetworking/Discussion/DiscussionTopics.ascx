<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="DiscussionTopics.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionTopics" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/ModuleGallery/SocialNetworking/Discussion/DiscussionMessages.ascx" TagPrefix="MonoX" TagName="DiscussionMessages" %>
<%@ Register Src="~/MonoX/controls/TagTextBox.ascx" TagPrefix="mono" TagName="TagTextBox" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
<asp:UpdatePanel ID="upNewTopic" runat="server" UpdateMode="Always">
    <ContentTemplate>    
    
    <div class="discussion">
        <asp:PlaceHolder ID="plhHeader" runat="server">
        <div class="discussion-top-section clearfix">
            <div class="topic-title-holder">
                <div class="topic-title-wrapper">
                    <h2><asp:Literal ID="labTitle" runat="server"></asp:Literal></h2>
                </div>
                <div class="back-button-wrapper">
                    <asp:HyperLink ID="lnkBack" runat="server" CssClass="discussion-link back-link"></asp:HyperLink>
                </div>
            </div>
            
            <div class="main-options">
                    
                <asp:PlaceHolder ID="panNewTopic" runat="server">
                    <div class="button-wrapper">
                        <asp:UpdatePanel ID="upSub" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:LinkButton ID="lnkSubscribe" CssClass="blog-button" runat="server"></asp:LinkButton>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="button-wrapper">
                        <ul class="first">
                            <li class="first-level">
                                <asp:HyperLink ID="lnkOptions" runat="server" CssClass="blog-button"></asp:HyperLink>
                                <ul class="level0">
                                    <li id="pnlClose" runat="server"><asp:LinkButton CssClass="blog-button" ID="lnkClose" runat="server"></asp:LinkButton></li>
                                    <li id="pnlEditBoard" runat="server"><asp:LinkButton CssClass="blog-button" ID="lnkEditBoard" runat="server"></asp:LinkButton></li>
                                    <li id="pnlDeleteUnApproved" runat="server"><asp:LinkButton CssClass="blog-button" ID="lnkDeleteUnApproved" runat="server"></asp:LinkButton></li>
                                    <li id="pnlDeleteSpam" runat="server"><asp:LinkButton CssClass="blog-button" ID="lnkDeleteSpam" runat="server"></asp:LinkButton></li>
                                    <li><asp:HyperLink CssClass="blog-button" ID="lnkSortNewTopicsOnTop" runat="server"></asp:HyperLink></li>
                                    <li><asp:HyperLink CssClass="blog-button" ID="lnkSortUpdatedTopicsOnTop" runat="server"></asp:HyperLink></li>
                                    <li><asp:HyperLink CssClass="blog-button" ID="lnkSortTopicsAlphabetically" runat="server"></asp:HyperLink></li>
                                    <li><asp:HyperLink CssClass="blog-button" ID="lnkSortHotTopicsOnTop" runat="server"></asp:HyperLink></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="button-wrapper">
                        <MonoX:StyledButton ID="btnNewTopic" runat="server" CssClass="add-new-post" />
                    </div>
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                            <div class="progress-holder">
                                <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..." width="20" class="progress" />
                            </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </asp:PlaceHolder>
            </div>
        </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="plhNewTopic" runat="server" Visible="false">
            <div class="board-container blog-edit-settings discussion-topics-form">
                <dl>
                    <dd class="validation-wrapper">
                        <asp:ValidationSummary ID="summary" runat="server" CssClass="validation-summary" DisplayMode="List" ShowSummary="true" />
                    </dd>
                    <dd class="discussion-form jq_FieldValidatorWrapper">
                        <asp:Label ID="lblTopicTitle" runat="server" AssociatedControlID="txtTopicTitle" CssClass="label"></asp:Label>
                        <asp:TextBox ID="txtTopicTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vldRequiredTopicTitle" runat="server" ControlToValidate="txtTopicTitle" CssClass="validator" Display="Dynamic" />
                    </dd>
                    <dd class="discussion-messages-wrapper">
                        <MonoX:DiscussionMessages ID="discussionMessages" runat="server" ShowHeader="false">
                        </MonoX:DiscussionMessages>
                    </dd>
                    <dd class="discussion-form">
                        <mono:TagTextBox id="tags" runat="server"></mono:TagTextBox>
                    </dd>
                    <dd class="discussion-form">
                        <MonoX:StyledButton ID="btnSaveNewTopic" runat="server" CommandName="Save" CssClass="discussion-styled-button" />
                        <MonoX:StyledButton ID="btnCancelNewTopic" runat="server" CausesValidation="false" CssClass="discussion-styled-button" />
                    </dd>
                </dl>
            </div>
        </asp:PlaceHolder>
        <asp:ListView ID="lvDT" runat="server">
            <LayoutTemplate>
                <div>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
            </ItemTemplate>           
            <EmptyDataTemplate>
                <div class="empty-message "><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Topic_Empty %></div>
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
    </ContentTemplate>
</asp:UpdatePanel>