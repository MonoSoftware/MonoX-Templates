<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogComments" Codebehind="BlogComments.ascx.cs" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls" TagPrefix="MonoXControls" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>
<%@ Register TagPrefix="MonoX" TagName="BlogCommentsList" Src="~/Mono/WebParts/Blog/BlogCommentsList.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>

<asp:Panel ID="pnlContainer" runat="server">
<MonoX:BlogCommentsList ID="ctlCommentsList" runat="server"></MonoX:BlogCommentsList>
<asp:Panel runat="server" ID="pnlForm">
    <div class="input-form comment-form clearfix">
        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="BlogCommentEntry" CssClass="validation-summary" ShowSummary="true" />
        <div class="form">
            <div>
                <div class="g--half">
                <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" CssClass="form--label"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" class="short-textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="validator ValidatorAdapter" Text="!" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
            </div>        
            <div id="rowEmail" runat="server">
                <div class="g--half">
                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="form--label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" class="short-textbox"></asp:TextBox>
                    <MonoXControls:RegExValidator ID="regexEmail" CssClass="ValidatorAdapter" ControlToValidate="txtEmail" Display="Dynamic" Text="!" Font-Bold="true" ValidationType="EMail" runat="server"></MonoXControls:RegExValidator>
                    <asp:RequiredFieldValidator id="rfvEmail" Runat="server" CssClass="validator ValidatorAdapter" Display="Dynamic" Text="!" Font-Bold="true" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div>
                <div class="g--half">
                    <asp:Label ID="lblUrl" runat="server" AssociatedControlID="txtUrl" CssClass="form--label"></asp:Label>
                    <asp:TextBox ID="txtUrl" runat="server" class="short-textbox"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regexUrl" runat="server" CssClass="validator ValidatorAdapter" ControlToValidate="txtUrl" Display="Dynamic" Text="!" 
                        ValidationExpression="^(?:(?:https?|ftp):\/\/)(?:\S+(?::\S*)?@)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$" />
                </div>
            </div>        
            <div>
                <asp:Label ID="lblComment" runat="server" AssociatedControlID="txtComment" CssClass="form--label"></asp:Label>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtComment"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvComment" runat="server" CssClass="validator ValidatorAdapter" Text="!" ControlToValidate="txtComment" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>        
            <div class="spacer--secondary">
                
                <asp:CheckBox ID="chkNotify" runat="server" ></asp:CheckBox>
                <asp:Label ID="lblNotify" AssociatedControlID="chkNotify" runat="server"><%= BlogResources.Comments_Notify %></asp:Label>
  
            </div>
            <div class="spacer--secondary">
                <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" OnClick="btnSave_Click"  />
            </div>
        </div>
    </div>
</asp:Panel>
</asp:Panel>
