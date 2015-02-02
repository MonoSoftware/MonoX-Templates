<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="MessageCreate.ascx.cs" Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.InMail.MessageCreate" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="rad" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<%@ Register TagPrefix="MonoX" TagName="AddressEntry" Src="~/MonoX/Controls/UserPicker.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="HTML5Upload" Src="~/MonoX/ModuleGallery/HTML5Upload.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="FileGallery" Src="~/MonoX/ModuleGallery/SocialNetworking/FileGallery.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="CustomRadEditor" Src="~/MonoX/Controls/CustomRadEditor.ascx" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server"></monox:ValidationHandler>

<MonoXControls:MonoXWindowManager ID="windowDialog" runat="server" Width="500" Height="400" Skin="MetroTouch" VisibleStatusbar="false" IconUrl='<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.img.popup_icon_png %>' ReloadOnShow="true" Behaviors="Close,Move" KeepInScreenBounds="true" Modal="true"></MonoXControls:MonoXWindowManager>

<div class="message-center">
    <asp:Panel runat="server" ID="pnlContainer">
        <div id="step1form" class="message-form dirtyFormMarker">
            <dl>
                <dd class="validation-wrapper">
                    <asp:ValidationSummary ID="summary" runat="server" CssClass="validation-summary" DisplayMode="List" ShowSummary="true" />
                </dd>
                <dd class="recipient-holder">
                    <asp:PlaceHolder ID="plhRecipients" runat="server">
                        <asp:Label ID="lblRecipients" runat="server" AssociatedControlID="ddlRecipients" CssClass="label-width message-label"></asp:Label>
                        <div class="message-address-entry">
                            <MonoX:AddressEntry runat="server" Height="200" Width="100%" IsRequired="true" ID="ddlRecipients" UserFilterMode="ShowFriendsListsGroups" UserAddressFormat="Fullname" />
                        </div>
                        <asp:ImageButton runat="server" ID="btnGroup" CausesValidation="false" ImageUrl='<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.img.Sn.group_png %>' CssClass="recipients" />
                    </asp:PlaceHolder>
                </dd>
                <dd class="jq_FieldValidatorWrapper"> 
                    <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" CssClass="message-label"></asp:Label>
                    <asp:TextBox ID="txtSubject" runat="server" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="requiredSubject" runat="server" CssClass="validator" ControlToValidate="txtSubject" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </dd>        
                <dd class="editor-height jq_FieldValidatorWrapper">
                    <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" CssClass="message-label"></asp:Label>
                    <asp:TextBox ID="txtMessage" Rows="8" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <MonoX:CustomRadEditor ID="txtHTMLMessage" ContentAreaMode="Div" runat="server" ToolBarMode="ShowOnFocus" IsRequired="true"></MonoX:CustomRadEditor>
                </dd>
                <asp:Panel runat="server" ID="pnlUpload">
                <dd class="file-holder">
                    <asp:Label ID="lblUpload" AssociatedControlID="ctlUpload" runat="server" CssClass="message-label"></asp:Label>
                    <MonoX:HTML5Upload runat="server" ID="ctlUpload" Width="100%" EnableFileGallery="false"  />
                    <MonoX:FileGallery ID="ctlFileGallery" runat="server" CssClass="rightLabel file-gallery"  />
                </dd>
                </asp:Panel>        
                <asp:PlaceHolder ID="plhSendMail" runat="server">
                <dd class="checkbox-messaging">
                    <asp:CheckBox CssClass="innerCheckboxContent" BorderStyle="None" BorderWidth="0px" ID="chkSendMail" runat="server" TextAlign="Right" Checked="true" style="float: left;"></asp:CheckBox>
                    <span><%= SocialNetworkingResources.Messaging_CreateMessage_SendMailCopy %></span>
                </dd>
                </asp:PlaceHolder>
                <dd >
                    <div class="button-holder">
                        <MonoX:StyledButton id="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" />
                        <MonoX:StyledButton id="btnCancel" runat="server" CausesValidation="false" OnClick="btnCancel_Click" />
                    </div>
                    
                </dd>
                
            </dl>
            <div>
                <asp:Label runat="server" ForeColor="Red" ID="lblWarning" CssClass="result-message"></asp:Label> 
            </div>
        </div>
    </asp:Panel>
</div>