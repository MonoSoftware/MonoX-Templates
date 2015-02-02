<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="Mono Software Support"
    CodeBehind="Discussion.aspx.cs"
    Inherits="Mono.Web.Pages.Discussion" %>
<%@ Register TagPrefix="MonoX" TagName="Discussion" Src="~/Mono/WebParts/Discussion/DiscussionContainer.ascx" %>

<asp:Content ID="Cp1" ContentPlaceHolderID="Cp1" runat="server">
    <div class="l--cover">
        <div class="l--row">
            <h1 class="title--primary">MonoX support board</h1>
            <p>Start the conversation, ask questions and share tips and solutions with fellow developers.</p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Cp2" ContentPlaceHolderID="Cp2" runat="server">
    <div class="l--row spacer--box">
        <asp:Panel runat="server" ID="pnlAlert" CssClass="discussion--message">
            <asp:Literal runat="server" ID="ltlRegister">Non-registered users can only browse through our support boards. Please <a href="/Membership/Register.aspx">register now</a> if you want to post your questions. It takes a second and it is completely free. 
            Alternatively, you can <a href="/Login.aspx">log in</a> without registration using your credentials at major sites such as Google, Microsoft Live, OpenId, Facebook, LinkedIn or Yahoo.</asp:Literal>
        </asp:Panel>
        <MonoX:Discussion ID="ctlDiscussion" runat="server" EnablePrettyPhoto="true" IsPublic="true" EnableHtmlEditor="true" ApprovalMode="None"
        EnableContentSharing="true" EnableAnswering="true" EnableRating="true" ShowRatingHistory="false" EnableTags="true" EnablePinItems="true" 
        EnableSyntaxHighlighter="true" MaximumTags="0" EnableSubscription="true" EnableAutoSubscription="true" EnableBoardMembership="true"
        EnableNotificationsOnEdit="false" />
    </div>
</asp:Content>