<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DiscussionTopics.ascx.cs"
    Inherits="Mono.Web.Parts.Discussion.DiscussionTopics" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager"
    TagPrefix="mono" %>
<%@ Register Src="~/Mono/WebParts/Discussion/DiscussionMessages.ascx"
    TagPrefix="MonoX" TagName="DiscussionMessages" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Src="~/MonoX/controls/TagTextBox.ascx" TagPrefix="mono" TagName="TagTextBox" %>

<asp:UpdatePanel ID="upNewTopic" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
        <div class="discussion--menu">
            
            <asp:PlaceHolder ID="panNewTopic" runat="server">
                <asp:UpdatePanel ID="upSub" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:LinkButton ID="lnkSubscribe" runat="server" CssClass="btn--small"></asp:LinkButton>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <ul class="discussion--options discussion--side">
                    <li>
                        <asp:HyperLink ID="lnkOptions" runat="server" CssClass="btn--small"></asp:HyperLink>
                        <ul class="discussion--dropdown">
                            <li id="pnlClose" runat="server"><asp:LinkButton ID="lnkClose" runat="server" CssClass="btn--action"></asp:LinkButton></li>
                            <li id="pnlDeleteUnApproved" runat="server"><asp:LinkButton ID="lnkDeleteUnApproved" runat="server" CssClass="btn--action"></asp:LinkButton></li>
                            <li id="pnlDeleteSpam" runat="server"><asp:LinkButton ID="lnkDeleteSpam" runat="server" CssClass="btn--action"></asp:LinkButton></li>
                            <li><asp:HyperLink ID="lnkSortNewTopicsOnTop" runat="server" CssClass="btn--action"></asp:HyperLink></li>
                            <li><asp:HyperLink ID="lnkSortUpdatedTopicsOnTop" runat="server" CssClass="btn--action"></asp:HyperLink></li>
                            <li><asp:HyperLink ID="lnkSortTopicsAlphabetically" runat="server" CssClass="btn--action"></asp:HyperLink></li>
                            <li><asp:HyperLink ID="lnkSortHotTopicsOnTop" runat="server" CssClass="btn--action"></asp:HyperLink></li>
                        </ul>
                    </li>
                </ul>
                <asp:HyperLink ID="lnkBack" runat="server" CssClass="btn--small discussion--side"></asp:HyperLink>

                <MonoX:StyledButton ID="btnNewTopic" runat="server" />
                <div>
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                            <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..." class="progress" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
            </asp:PlaceHolder>
        </div>
        <h2 class="title--secondary">
            <asp:Literal ID="labTitle" runat="server" Visible="false"></asp:Literal>
        </h2>
        <asp:PlaceHolder ID="plhNewTopic" runat="server" Visible="false">
            <div class="discussion--form">

                    <div>
                        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ShowSummary="true" CssClass="validation-summary" />
                    </div>
                    <div>
                        <asp:Label ID="lblTopicTitle" runat="server" AssociatedControlID="txtTopicTitle" CssClass="label"></asp:Label>
                        <asp:TextBox ID="txtTopicTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vldRequiredTopicTitle" runat="server" ControlToValidate="txtTopicTitle" Text="!" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                    </div>
                    <div class="message-padding-override">
                        <MonoX:DiscussionMessages ID="discussionMessages" runat="server" ShowHeader="false">
                        </MonoX:DiscussionMessages>
                    </div>
                    <div>
                        <mono:TagTextBox id="tags" runat="server"></mono:TagTextBox>
                    </div>
                    <div>
                        <MonoX:StyledButton ID="btnSaveNewTopic" runat="server" CommandName="Save" CssClass="btn--small" />
                        <MonoX:StyledButton ID="btnCancelNewTopic" runat="server" CausesValidation="false" CssClass="btn--small" />
                    </div>

            </div>
        </asp:PlaceHolder>
        <asp:ListView ID="lvDT" runat="server">
            <LayoutTemplate>
                <div class="discussion--topics">
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
            </ItemTemplate>           
            <EmptyDataTemplate>
                <div class="empty-discussion"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Topic_Empty %></div>
            </EmptyDataTemplate>
        </asp:ListView>
        <div style="clear: both">
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
        AutoPaging="false">
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>

