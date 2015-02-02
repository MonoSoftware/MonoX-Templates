<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="MessageCreate.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.InMail.MessageCreate" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<%@ Register TagPrefix="MonoX" TagName="AddressEntry" Src="~/MonoX/controls/UserPicker.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="CustomRadEditor" Src="~/MonoX/Controls/CustomRadEditor.ascx" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<MonoXControls:MonoXWindowManager ID="windowDialog" runat="server" Width="800" Height="600" VisibleStatusbar="false" ReloadOnShow="true" Behaviors="Close,Move" KeepInScreenBounds="true" Modal="true"></MonoXControls:MonoXWindowManager>
<asp:Panel runat="server" ID="pnlContainer">
    <div class="form" >
        <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ValidationGroup="MessageCreateValidation" CssClass="validation-summary" ShowSummary="true" />
        <div class="comment--field">
            <asp:PlaceHolder ID="plhRecipients" runat="server">
                <asp:Label ID="lblRecipients" runat="server" AssociatedControlID="ddlRecipients" CssClass="form--label"></asp:Label>
                <MonoX:AddressEntry runat="server" Height="200" ID="ddlRecipients" UserFilterMode="ShowAllUsers"/>
                <asp:ImageButton runat="server" ID="btnGroup" CssClass="group-icon" ImageUrl='<%$ Code: MonoSoftware.MonoX.Utilities.UrlUtility.ResolveThemeUrl("img/Sn/group.png") %>' />
            </asp:PlaceHolder>
        </div>        
        <div class="comment--field">
            <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" CssClass="form--label"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredSubject" runat="server" CssClass="validator ValidatorAdapter"  ValidationGroup="MessageCreateValidation" ControlToValidate="txtSubject" SetFocusOnError="true" Display="Static"></asp:RequiredFieldValidator>
        </div>        
        <div class="comment--field">
            <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" CssClass="form--label"></asp:Label>
            <asp:TextBox ID="txtMessage" Rows="8" TextMode="MultiLine" runat="server"></asp:TextBox>
            <MonoX:CustomRadEditor ID="txtHTMLMessage" ContentAreaMode="Div" runat="server" ToolBarMode="ShowOnFocus" IsRequired="true"></MonoX:CustomRadEditor>
        </div>
        <asp:Panel runat="server" ID="pnlUpload">
            <div class="comment--field">
                <asp:Label ID="lblUpload" AssociatedControlID="ctlUpload" runat="server" CssClass="form--label spacer--secondary"></asp:Label>
                <MonoX:HTML5Upload runat="server" ID="ctlUpload" Width="100%" EnableFileGallery="false" CssClass="blog-file-upload"  />
            </div>
            <div class="comment--field">
                <label class="form--label spacer--secondary"> &nbsp;</label>
                <MonoX:FileGallery ID="ctlFileGallery" runat="server" ParentEntityType="<%$ Code: Convert.ToInt32(MonoSoftware.MonoX.Utilities.SnEntityType.Message) %>" />
            </div>
        </asp:Panel>        

        <div class="buttons">
            <MonoX:StyledButton id="btnSend" runat="server" CausesValidation="true" ValidationGroup="MessageCreateValidation" OnClick="btnSend_Click"  />
            <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click"  />    
            <asp:PlaceHolder ID="plhSendMail" runat="server">
                <div class="checkbox-messaging">
                    <asp:CheckBox CssClass="innerCheckboxContent" BorderStyle="None" BorderWidth="0px" ID="chkSendMail" runat="server" TextAlign="Right" Checked="true"></asp:CheckBox>
                    <%= SocialNetworkingResources.Messaging_CreateMessage_SendMailCopy %>
                </div>
            </asp:PlaceHolder>
        </div>
    </div>
<asp:Label runat="server" ForeColor="Red" ID="lblWarning"></asp:Label>
</asp:Panel>
