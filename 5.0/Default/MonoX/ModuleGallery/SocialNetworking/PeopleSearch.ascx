<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="PeopleSearch.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.PeopleSearch" %>

<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoX" TagName="InvitationList" Src="~/MonoX/ModuleGallery/SocialNetworking/InvitationList.ascx" %>
<%@ Register Src="~/MonoX/controls/UserPicker.ascx" TagPrefix="MonoX" TagName="UserSearch" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server">
</asp:ScriptManagerProxy>

<div class="people-search">
    <span><asp:Literal ID="ltlInfoText" runat="server" ></asp:Literal></span> 
    <asp:Panel ID="pnlSearch" runat="server" CssClass="PeopleSearch">
        <div class="search-textbox">
            <MonoX:UserSearch ID="userSearch" runat="server" UserFilterMode="ShowAllUsers"  AutoCompleteSeparator="">
            </MonoX:UserSearch>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlActionPanel" runat="server" CssClass="jq_monoxPeopleSearchCommand"> 
    <div class="options">
        <div class="button-wrapper">
            <MonoX:StyledButton runat="server" ID="btnAdd" OnClick="btnAdd_Click" CssClass="jq_monoXAddFriendAction" />
        </div>
        <div class="button-wrapper">
            <MonoX:StyledButton runat="server" ID="btnBlock" OnClick="btnBlock_Click" CssClass="SNbutton" />
        </div>
        <div class="button-wrapper">
            <MonoX:StyledButton runat="server" ID="btnViewProfile" OnClick="btnViewProfile_Click" />
        </div>
    </div>
    <asp:Label runat="server" ID="lblMessage" CssClass="empty-message error-empty-message"></asp:Label>
    <asp:Panel runat="server" ID="pnlInviteFriend" CssClass="jq_monoxInviteFriendPanel">
        <dl class="people-search-message">
            <dd>
                <div class="empty-message"><asp:Literal runat="server" ID="lblPersonalMessage"></asp:Literal></div>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtRequestMessage" Rows="4" Width="100%"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regexRequestMessage" CssClass="validator" ControlToValidate="txtRequestMessage"
                    Display="Dynamic" ValidationExpression="[\s\S]{0,10}" ErrorMessage="Message too long!" Text="*"
                    runat="server"></asp:RegularExpressionValidator>
            </dd>
            <dd>
                <MonoX:StyledButton runat="server" ID="btnSendRequest" CssClass="SNbutton" OnClick="btnSendRequest_Click" />
            </dd>
        </dl>
    </asp:Panel>
    </asp:Panel>
</div>