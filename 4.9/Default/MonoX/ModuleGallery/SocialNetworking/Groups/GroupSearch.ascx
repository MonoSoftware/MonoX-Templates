<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="GroupSearch.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupSearch" %>
    <%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>

<div class="people-search input-form">
    <asp:ScriptManagerProxy ID="scriptManagerProxy" runat="server"></asp:ScriptManagerProxy>
    <asp:Panel runat="server" ID="pnlContainer">
        <div class="search-textbox-group jq_FieldValidatorWrapper"> 
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="vldRequiredSearch" runat="server" ControlToValidate="txtSearch"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />      
        </div>
        <i>
            <asp:Label ID="labGroupTip" runat="server" ></asp:Label>
        </i>
        <div>
            <MonoX:StyledButton runat="server" ID="btnSearch" OnClick="btnSearch_Click"/>
        </div>
    </asp:Panel>
</div>