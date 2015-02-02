<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="BlogSettings.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogSettings" %>

<%@ Register TagPrefix="MonoX" TagName="UserEntry" Src="~/MonoX/controls/UserPicker.ascx" %>
<%@ Register Src="~/Mono/WebParts/Blog/BlogManageCategories.ascx" TagPrefix="MonoX" TagName="BlogManageCategories" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/Controls/StyledButton.ascx" %>


    <asp:Panel runat="server" ID="pnlContainer">
        <div class="form">
            <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" ShowSummary="true" CssClass="validation-summary" />
            <div>
                <asp:Label ID="lblTitle" runat="server" AssociatedControlID="txtTitle" CssClass="form--label"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="ValidatorAdapter" ValidationGroup="Modification" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Static"></asp:RequiredFieldValidator>
            </div>        
            <div>
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription" CssClass="form--label"></asp:Label>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>    
            </div>
            <div class="spacer--secondary">
                <asp:Label ID="lblEditors" runat="server" AssociatedControlID="ddlEditors" CssClass="form--label"></asp:Label>
                <MonoX:UserEntry runat="server" Height="200" Width="100%" ID="ddlEditors" UserFilterMode="ShowAllUsers" />
            </div>
            <div class="spacer--primary">
                <MonoX:BlogManageCategories id="blogManageCategories"  runat="server"></MonoX:BlogManageCategories>
            </div>
        </div>
    </asp:Panel>
    <asp:PlaceHolder id="plhActions" Runat="server">            
        <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" ValidationGroup="Modification" OnClick="btnSave_Click"  />
        <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" ValidationGroup="Modification" OnClick="btnCancel_Click" />
    </asp:PlaceHolder>
    <div class="warning"><asp:Literal ID="labMessage" runat="server"></asp:Literal></div>
