<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Comments.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.Comments" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<asp:Panel ID="pnlContainer" runat="server"> 

    <asp:ListView ID="lvItems" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate></ItemTemplate>
    </asp:ListView>    
    <asp:Panel runat="server" ID="pnlCommentBox" CssClass="jq_wallCommentBox">
        <div class="comment-composer">
            <div class="comment-textarea-holder jq_FieldValidatorWrapper">
                <asp:TextBox runat="server" ID="txtInput" CssClass="jq_expandingTextBoxSmall" TextMode="MultiLine" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqInput" runat="server" ControlToValidate="txtInput" SetFocusOnError="true" CssClass="validator" Display="Dynamic"  Text="*"></asp:RequiredFieldValidator>
            </div>
            <MonoX:StyledButton ID="btnSave" runat="server" CssClass="styled-button-blue" OnClick="btnSave_Click" CausesValidation="true" />
        </div>
    </asp:Panel>
    <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true" AutoPaging="false">
        <PagerTemplate></PagerTemplate>
    </mono:Pager>
</asp:Panel>