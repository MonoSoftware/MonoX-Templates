<%@ Control
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="DiscussionContainer.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionContainer" %>

<%@ Register TagPrefix="MonoX" TagName="DiscussionBoard" Src="~/Mono/WebParts/Discussion/DiscussionBoard.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="DiscussionTopic" Src="~/Mono/WebParts/Discussion/DiscussionTopics.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="DiscussionMessages" Src="~/Mono/WebParts/Discussion/DiscussionMessages.ascx" %>

<asp:PlaceHolder ID="panNotification" runat="server">
    <div class="message-sep-line">
        <asp:HyperLink ID="lnkBack" runat="server"></asp:HyperLink>
    </div>
    <div class="discussion-permission"><asp:Label ID="labNotificationMessage" runat="server"></asp:Label></div>
</asp:PlaceHolder>

<div class="discussion">
    <MonoX:DiscussionBoard runat="server" ID="dBoard" Title="Discussion board" />
    <MonoX:DiscussionTopic runat="server" ID="dTopic" />
    <MonoX:DiscussionTopic runat="server" ID="dFilterTopic" />
    <MonoX:DiscussionMessages runat="server" ID="dMessages" />
</div>

<div class="additional-resources">
    <div class="content">
        <a id="lnkNB" runat="server" class="btn--small" href="~/nightly-build/" target="_blank">MonoX Nightly Builds</a>
        <a id="lnkMXG" runat="server" class="btn--small" href="~/monox-gallery/" target="_blank">MonoX Gallery</a>
        <a id="lnkRM" runat="server" class="btn--small" href="~/monox-roadmap/" target="_blank">MonoX Roadmap</a>
        <a class="btn--small" href="https://github.com/MonoSoftware" target="_blank">Mono Software at GitHub</a>
    </div>    
    <a href="javascript:void(0)" class="pull-button">Additional Resources</a>
</div>

<script type="text/javascript">

    function initTab() {
        jQuery(".pull-button").click(function () {
            jQuery(".additional-resources").toggleClass("show-content");            
        });
    }

    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_endRequest(initTab);
    $(document).ready(initTab);

</script>