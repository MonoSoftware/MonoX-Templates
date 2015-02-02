<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="DiscussionBoard.ascx.cs"
    Inherits="Mono.Web.Parts.Discussion.DiscussionBoard" %>
<%@ Register Namespace="MonoSoftware.Web.Pager" Assembly="MonoSoftware.Web.Pager"
    TagPrefix="mono" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<%@ Register Src="~/MonoX/controls/CustomRadEditor.ascx" TagPrefix="mono" TagName="CustomRadEditor" %>
<%@ Register TagPrefix="MonoX" TagName="UserEntry" Src="~/MonoX/controls/UserPicker.ascx" %>

<asp:UpdatePanel ID="upNewBoard" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
        <div>
            <asp:HyperLink ID="lnkLastActiveTopics" runat="server" CssClass="btn--small"></asp:HyperLink>
            <asp:HyperLink ID="lnkMyTopics" runat="server" CssClass="btn--small"></asp:HyperLink>

            <asp:UpdateProgress ID="upTop" runat="server" DisplayAfter="0" DynamicLayout="true">
                <ProgressTemplate>
                    <img src='<%= BaseSiteFullUrl %>/App_Themes/<%= Page.Theme %>/img/loading.gif' alt="Progress ..." class="progress" />
                </ProgressTemplate>
            </asp:UpdateProgress>

            <MonoX:StyledButton ID="btnNewBoard" runat="server" />
        </div>

        <div class="board-container">
            <asp:PlaceHolder ID="plhNewBoard" runat="server" Visible="false">
                <div class="input-form discussion-form">
                    <div class="form">
                        <div>
                             <asp:ValidationSummary ID="summary" runat="server" DisplayMode="List" ShowSummary="true" CssClass="validation-summary" />
                        </div>
                        <div>
                            <asp:Label ID="lblBoardName" runat="server" AssociatedControlID="txtBoardName" CssClass="form--label"></asp:Label>
                            <asp:TextBox ID="txtBoardName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vldRequiredBoardName" runat="server" ControlToValidate="txtBoardName" Text="!" CssClass="validator ValidatorAdapter" Display="Dynamic" />
                        </div>
                        <div class="spacer--secondary">
                            <asp:Label ID="lblBoardDescription" runat="server" AssociatedControlID="txtBoardDescription" CssClass="form--label"></asp:Label>
                            <asp:TextBox ID="txtBoardDescription" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox>
                            <mono:CustomRadEditor Width="100%" ID="radBoardDescription"  EditModes="Design"
                                runat="server" ToolBarMode="ShowOnFocus" StripFormattingOptions="AllExceptNewLines" ContentAreaMode="Iframe" ></mono:CustomRadEditor>
                        </div>
                        <div class="spacer--secondary">
                            <asp:Label ID="lblEditors" runat="server" AssociatedControlID="ddlEditors" CssClass="form--label"></asp:Label>
                            <MonoX:UserEntry runat="server" Height="200" ID="ddlEditors" UserFilterMode="ShowAllUsers" ExcludeMySelf="false" />
                        </div>
                        <div id="rowAutoSubscribe" runat="server" class="spacer--secondary">                        
                            <asp:CheckBox ID="chkSubscribe" runat="server" Checked="true" />
                            <asp:Label ID="labSubscribe" runat="server" AssociatedControlID="chkSubscribe"></asp:Label>
                        </div>
                        <div id="rowRoles" runat="server" class="spacer--secondary">
                            <asp:Label ID="labRoles" runat="server" AssociatedControlID="chkRoles" CssClass="form--label"></asp:Label>
                            <asp:CheckBoxList ID="chkRoles" runat="server" CssClass="chk--list" RepeatLayout="UnorderedList">
                            </asp:CheckBoxList>
                        </div>
                        <div>
                            <MonoX:StyledButton ID="btnSaveNewBoard" runat="server" CommandName="Save" />
                            <MonoX:StyledButton ID="btnCancelNewBoard" runat="server" CausesValidation="false" />
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
            <asp:ListView ID="lvDB" runat="server">
                <LayoutTemplate>                    
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>                        
                </LayoutTemplate>
                <ItemTemplate>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="empty-discussion"><%= MonoSoftware.MonoX.Resources.SocialNetworkingResources.Discussion_Board_Empty %></div>
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
    </ContentTemplate>
</asp:UpdatePanel>
