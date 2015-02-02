<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="DiscussionBoard.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.DiscussionBoard" %>

<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager" TagPrefix="mono" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register TagPrefix="MonoX" TagName="UserEntry" Src="~/MonoX/controls/UserPicker.ascx" %>
<%@ Register Src="~/MonoX/Controls/MonoX.Controls.ValidationHandler/ValidationHandler.ascx" TagPrefix="monox" TagName="ValidationHandler" %>

<asp:UpdatePanel ID="upNewBoard" runat="server" UpdateMode="Always">
    <ContentTemplate>
    <monox:ValidationHandler id="validationHandler" runat="server" ValidationGroup="<% $Code: this.ValidationGroup %>"></monox:ValidationHandler>
    <div class="discussion">
        <div class="discussion-top-section clearfix">
            <h2><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_DiscussionBoardList %></h2>
            <div class="main-options">
                <div class="button-wrapper">
                    <asp:HyperLink ID="lnkLastActiveTopics" CssClass="blog-button" runat="server" ></asp:HyperLink>
                </div>
                <div class="button-wrapper">
                    <asp:HyperLink ID="lnkMyTopics" CssClass="blog-button" runat="server" ></asp:HyperLink>    
                </div>                   
                <div class="button-wrapper">
                    <MonoX:StyledButton ID="btnNewBoard" runat="server" CssClass="add-new-post" />
                </div>
                <div>
                    <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                        <ProgressTemplate>
                        <div class="progress-holder">
                            <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..." width="20" class="progress" />
                        </div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
            </div>
        </div>
        <div class="board-container blog-edit-settings">
            <asp:PlaceHolder ID="plhNewBoard" runat="server" Visible="false">

                    <dl>
                        <dd class="validation-wrapper">
                            <asp:ValidationSummary CssClass="validation-summary" ID="summary" runat="server" DisplayMode="List" ShowSummary="true" />
                        </dd>
                        <dd class="discussion-form jq_FieldValidatorWrapper">
                            <asp:Label ID="lblBoardName" runat="server" AssociatedControlID="txtBoardName"></asp:Label>
                            <asp:TextBox ID="txtBoardName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vldRequiredBoardName" runat="server" ControlToValidate="txtBoardName" CssClass="validator" Display="Dynamic" />
                        </dd>
                        <dd class="editor-height discussion-form">
                            <asp:Label ID="lblBoardDescription" runat="server" AssociatedControlID="txtBoardDescription"></asp:Label>
                            <asp:TextBox ID="txtBoardDescription" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                            <mono:CustomRadEditor Width="100%" Height="100%" ID="radBoardDescription" EditModes="Design" 
                                runat="server" ToolBarMode="ShowOnFocus" StripFormattingOptions="AllExceptNewLines" ContentAreaMode="Div" ></mono:CustomRadEditor>
                        </dd>
                        <dd class="discussion-form">
                            <asp:Label ID="lblEditors" runat="server" AssociatedControlID="ddlEditors"></asp:Label>
                            <MonoX:UserEntry runat="server" Height="200" ID="ddlEditors" IsRequired="false" UserFilterMode="ShowAllUsers" ExcludeMySelf="false" Skin="MetroTouch" />
                        </dd>
                        <dd id="rowAutoSubscribe" runat="server" class="discussion-form">                        
                            <asp:CheckBox ID="chkSubscribe" runat="server" Checked="true" />
                            <asp:Label ID="labSubscribe" CssClass="common-label" runat="server" AssociatedControlID="chkSubscribe"></asp:Label>
                        </dd>
                        <dd id="rowRoles" runat="server" class="discussion-form">
                            <asp:Label ID="labRoles" runat="server" AssociatedControlID="chkRoles"></asp:Label>
                            <asp:CheckBoxList ID="chkRoles" runat="server" CellSpacing="10" CssClass="check-box-list" Width="100%"
                                TextAlign="Right" RepeatLayout="UnorderedList">
                            </asp:CheckBoxList>
                        </dd>
                        <dd class="discussion-form">
                            <MonoX:StyledButton ID="btnSaveNewBoard" runat="server" CommandName="Save" CssClass="discussion-styled-button" />
                            <MonoX:StyledButton ID="btnCancelNewBoard" runat="server" CausesValidation="false" CssClass="discussion-styled-button" />
                        </dd>
                    </dl>

            </asp:PlaceHolder>
            <asp:ListView ID="lvDB" runat="server">
                <LayoutTemplate>
                    <div>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>                        
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="empty-message"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Board_Empty %></div>
                </EmptyDataTemplate>
            </asp:ListView>            
        </div>
        <div style="clear: both">
            <mono:Pager runat="server" ID="pager" PageSize="10" NumericButtonCount="5" AllowCustomPaging="true"
                AutoPaging="false">
                <PagerTemplate>
                </PagerTemplate>
            </mono:Pager>
        </div>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
