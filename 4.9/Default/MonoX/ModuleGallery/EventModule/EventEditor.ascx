<%@ Control Language="C#" 
    AutoEventWireup="True" 
    CodeBehind="EventEditor.ascx.cs" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.EventEditor" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources"%>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>
    
    
<asp:UpdatePanel ID="upCaptcha" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
    <ContentTemplate>
        <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
            <div class="event-module-form">
                <h2><%= EventModuleResources.EventEditorTitle %></h2>
                <dl>
                    <dd class="validation-wrapper">
                        <asp:ValidationSummary ID="validationSummary" CssClass="validation-summary" runat="server" />
                    </dd>
                    <dd id="Div1" runat="server" class="jq_FieldValidatorWrapper">
                        <label for="<%= txtTitle.ClientID %>" class="short-label"><%= EventModuleResources.Title %></label>
                        <asp:Label ID="lblTitle" runat="server"></asp:Label>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        <asp:Label ID="prevTitle" runat="server" Visible="false"></asp:Label>
                        <asp:RequiredFieldValidator ID="vldRequiredSubject" runat="server" ControlToValidate="txtTitle"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
                    </dd>
                    <dd class="date-holder">
                        <div class="jq_FieldValidatorWrapper">
                            <label for="<%= dateFrom.ClientID %>"><%= EventModuleResources.StartTime %>:</label>
                            <telerik:RadDateTimePicker ID="dateFrom" runat="server"></telerik:RadDateTimePicker>
                            <asp:RequiredFieldValidator ID="vldRequiredDateFrom" runat="server" ControlToValidate="dateFrom"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
                            <asp:CompareValidator ID="vldCompareRange" runat="server" ControlToValidate="dateFrom" ControlToCompare="dateTo" Operator="LessThanEqual"  SetFocusOnError="true" CssClass="validator" Display="Dynamic"></asp:CompareValidator>
                        </div>
                        <div ID="pnlDateTo" runat="server" class="jq_FieldValidatorWrapper">
                            <label for="<%= dateTo.ClientID %>"><%= EventModuleResources.EndTime %>:</label>
                            <telerik:RadDateTimePicker ID="dateTo" runat="server"></telerik:RadDateTimePicker>
                            <asp:RequiredFieldValidator ID="vldRequiredDateTo" runat="server" ControlToValidate="dateTo"  SetFocusOnError="true" CssClass="validator" Display="Dynamic" />
                        </div>
                        <div class="chk-holder" style="clear: both">  
                            <asp:CheckBox ID="chkAllDay" runat="server" />
                            <label for="<%= chkAllDay.ClientID %>"><%= EventModuleResources.AllDay %></label>
                        </div>  
                    </dd>
                    <dd>
                        <label for="<%= txtDescription.ClientID %>"><%= EventModuleResources.Description %></label>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        <asp:Label ID="prevDescription" runat="server" Visible="false"></asp:Label>
                    </dd>
                    <dd>
                        <label for="<%= txtPlace.ClientID %>" class="short-label"><%= EventModuleResources.Place %></label>
                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                        <asp:Label ID="prevPlace" runat="server" Visible="false"></asp:Label>
                    </dd>

                        <dd class="button-holder">
                            <MonoX:StyledButton ID="btnSave" runat="server" CssClass="CssFormButton"></MonoX:StyledButton>
                            <MonoX:StyledButton ID="btnCancel" runat="server" CausesValidation="false" CssClass="CssFormButton"></MonoX:StyledButton>
                        </dd>

                </dl>
            </div>
    </ContentTemplate>
</asp:UpdatePanel>
