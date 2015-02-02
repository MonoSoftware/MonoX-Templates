<%@ Control
    Language="C#"
    AutoEventWireup="True" 
    CodeBehind="MessageCenter.ascx.cs" 
    Inherits="Mono.Web.Parts.MessageCenter" %>

<%@ Register TagPrefix="MonoX" TagName="MessageList" Src="~/MonoX/ModuleGallery/SocialNetworking/InMailMessaging/MessageList.ascx" %>
<%@ Register TagPrefix="ctl" TagName="MessageList" Src="~/Mono/WebParts/Messages/MessageList.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="MessageCreate" Src="~/Mono/WebParts/Messages/MessageCreate.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="MessageDetails" Src="~/Mono/WebParts/Messages/MessageDetails.ascx" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.Utilities"  %>

<script type="text/javascript">
    function previewRow(messageId) {
        var btnPreview = $('#<%= btnPreviewRow.ClientID %>');
        if (btnPreview.length > 0) {
            $('#<%= hfSelectedRow.ClientID %>').val(messageId);
            window.location.href = btnPreview[0].href;
            btnPreview[0].click();
            return true;
        }
    }

    function selectRow(seledtedRow) {
        $('.message-list').removeClass('current');
        seledtedRow.setAttribute("class", "message-list current");
    }
</script>

<asp:UpdatePanel ID="ajaxPanelMain" runat="server" UpdateMode="Always">
    <ContentTemplate>
        <div class="message-center">
            <div class="tabs">
                <span class="tabs--table">
                    <asp:LinkButton ID="btnRecivedMessages" runat="server" CausesValidation="false" CommandArgument="MessageList" OnClick="btnTab_Click" CssClass="tabs--item active"></asp:LinkButton>
                    <asp:LinkButton ID="btnSentMessages" runat="server" CausesValidation="false" CommandArgument="MessageListSent" OnClick="btnTab_Click" CssClass="tabs--item"></asp:LinkButton>
                    <asp:LinkButton ID="btnNewMessage" runat="server" CausesValidation="false" CommandArgument="MessageCreate" OnClick="btnTab_Click" CssClass="tabs--item"></asp:LinkButton>
                    <asp:HiddenField ID="hfSelectedTabs" runat="server" Value="MessageList" />
                </span>
            </div>
            <ctl:MessageList ID="messageList" runat="server" MessageStatusFilter="Received" Title="Received messages" />
            <ctl:MessageList ID="messageListSent" runat="server" MessageStatusFilter="Sent" Title="Sent messages" />
            <MonoX:MessageDetails runat="server" ID="messageDetails" MessageStatusFilter="Sent" Title="Display messages" />
            <MonoX:MessageCreate runat="server" ID="messageCreate" Title="New message" AllowFileUpload="true" />
        </div>
        <div style="display: none;">
            <asp:LinkButton ID="btnPreviewRow" runat="server" CausesValidation="false" OnClick="btnPreviewRow_Click" CssClass="preview-row">
            </asp:LinkButton>
            <asp:HiddenField ID="hfSelectedRow" runat="server" />
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
