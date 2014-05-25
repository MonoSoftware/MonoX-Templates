<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.PortalSettings"
    CodeBehind="PortalSettings.ascx.cs" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Import Namespace="MonoSoftware.MonoX.Admin" %>
<%@ Register Src="~/MonoX/controls/LightBox.ascx" TagPrefix="MonoX" TagName="LightBox" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="Modification1"></monox:ValidationHandler>

<div class="portal-settings">
    <div class="validation-wrapper">
        <asp:ValidationSummary ID="valSum" runat="server" DisplayMode="BulletList" ValidationGroup="Modification1" CssClass="validation-summary" ShowSummary="true"
        HeaderText="<%$Code: AdminResources.PortalSettings_valSum %>" />
    </div>
    <asp:Repeater ID="rpt" runat="server" >
        <ItemTemplate>
            <div class="portal-settings-holder">
                <div class="title-holder">
                    <h4>
                        <%# ((PortalSettingGroup)Container.DataItem).Name %>
                    </h4>
                </div>

                <MonoX:LightBox ID="lightBox" runat="server">
                    <ContentTemplate>
                        <dl>
                            <asp:Repeater ID="rptInner" runat="server">
                                <ItemTemplate>
                                    <dd class="jq_FieldValidatorWrapper">
                                        <asp:CheckBox ID="chkValue" runat="server"></asp:CheckBox>
                                        <asp:Label ID="labName" runat="server" AssociatedControlID="txtValue"></asp:Label>
                                        <asp:TextBox ID="txtValue" runat="server" ValidationGroup="Modification1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqValue" ValidationGroup="Modification1" runat="server" CssClass="validator" SetFocusOnError="true" ControlToValidate="txtValue" Display="Dynamic"
                                            Text="*"></asp:RequiredFieldValidator>
                                    </dd>
                                </ItemTemplate>
                            </asp:Repeater>
                        </dl>
                    </ContentTemplate>
                </MonoX:LightBox>
            </div>
        </ItemTemplate>
    </asp:Repeater>    
    <div class="portal-button-holder">
        <span style="color: Green;">
            <asp:Literal ID="labSuccess" runat="server"></asp:Literal></span>        
        <span style="color: Red; display: block; margin: 10px 0;">
            <asp:Literal ID="labMessage" runat="server"></asp:Literal></span>
        <asp:PlaceHolder ID="plhActions" runat="server">
            <asp:Button ID="btnSave" runat="server" CausesValidation="true" ValidationGroup="Modification1" CssClass="CssFormButton" />
            <asp:Button ID="btnSkip" runat="server" CausesValidation="false" ValidationGroup="Modification1" CssClass="CssFormButton" Visible="false" />
        </asp:PlaceHolder>
    </div>
</div>
