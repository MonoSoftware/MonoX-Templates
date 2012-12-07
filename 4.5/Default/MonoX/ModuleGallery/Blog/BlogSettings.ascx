<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogSettings.ascx.cs" Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogSettings" %>
<%@ Register TagPrefix="MonoX" TagName="UserEntry" Src="~/MonoX/controls/UserPicker.ascx" %>
<%@ Register Src="~/MonoX/ModuleGallery/Blog/BlogManageCategories.ascx" TagPrefix="MonoX" TagName="BlogManageCategories" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<asp:Panel runat="server" ID="pnlContainer">
    <div class="input-form">
        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="Modification" ShowSummary="true" />
        <dl>
            <dd>
                <asp:Label ID="lblTitle" runat="server" AssociatedControlID="txtTitle"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredTitle" runat="server" CssClass="ValidatorAdapter" ValidationGroup="Modification" ControlToValidate="txtTitle" SetFocusOnError="true" Display="Static"></asp:RequiredFieldValidator>
            </dd>        
            <dd>
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription"></asp:Label>
                <asp:TextBox Rows="5" TextMode="MultiLine" runat="server" ID="txtDescription"></asp:TextBox>    
            </dd>
            <dd>
                <asp:Label ID="lblEditors" runat="server" AssociatedControlID="ddlEditors"></asp:Label>
                <div><MonoX:UserEntry runat="server" Height="200" Width="99%" ID="ddlEditors" UserFilterMode="ShowAllUsers" /></div>
            </dd>
            <dd>
                <MonoX:BlogManageCategories id="blogManageCategories" width="98px" runat="server"></MonoX:BlogManageCategories>
            </dd>
        </dl>
    </div>
</asp:Panel>
<div class="input-form">
    <div class="button-holder">
        <asp:PlaceHolder id="plhActions" Runat="server">            
            <MonoX:StyledButton id="btnSave" runat="server" CausesValidation="true" ValidationGroup="Modification" OnClick="btnSave_Click"  />
            <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" ValidationGroup="Modification" OnClick="btnCancel_Click" />
        </asp:PlaceHolder>
        <b style="color:Red;"><asp:Literal ID="labMessage" runat="server"></asp:Literal></b>
    </div>
</div>
