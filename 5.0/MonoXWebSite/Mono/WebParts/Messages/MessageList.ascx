<%@ Control
    Language="C#"
    AutoEventWireup="True"
    CodeBehind="MessageList.ascx.cs"
    Inherits="Mono.Web.Parts.MessageList" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Import Namespace="MonoSoftware.MonoX.DAL.EntityClasses" %>
<%@ Register TagPrefix="Mono" Assembly="MonoX" Namespace="MonoSoftware.MonoX.Blog" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<div class="sort-filter">
    <div class="sorting">
        <div style='<%= MessageStatusFilter == MonoSoftware.MonoX.Repositories.MessageStatus.Received ? String.Empty : "display: none;"%>'>
            <asp:LinkButton ID="btnSortByColumnFrom" runat="server" CausesValidation="false" CommandArgument="AspnetUser.UserName" OnClick="btnSortBy_Click">
                <%= SocialNetworkingResources.Messaging_MessageList_ColumnFrom %>
            </asp:LinkButton>
        </div>
        <div style='<%= MessageStatusFilter == MonoSoftware.MonoX.Repositories.MessageStatus.Sent ? String.Empty : "display: none;"%>'>
            <asp:LinkButton ID="btnSortByColumnTo" runat="server" CausesValidation="false" CommandArgument="ToListShort" OnClick="btnSortBy_Click">
                <%= SocialNetworkingResources.Messaging_MessageList_ColumnTo %>
            </asp:LinkButton>
        </div>
        <div>
            <asp:LinkButton ID="btnSortbyColumnSubject" runat="server" CausesValidation="false" CommandArgument="Subject" OnClick="btnSortBy_Click">
                <%= SocialNetworkingResources.Messaging_MessageList_ColumnSubject %>
            </asp:LinkButton>  
        </div>
        <div>
            <asp:LinkButton ID="btnSortbyColumnDate" runat="server" CausesValidation="false" CommandArgument="DateCreated" OnClick="btnSortBy_Click">
                <%= SocialNetworkingResources.Messaging_MessageList_ColumnDate %>
            </asp:LinkButton>
        </div>
    </div>
    <div class="filtering">
        <div class="search">
            <asp:TextBox ID="txtSearch" runat="server" style="vertical-align: middle" CssClass="simpleTextBox" ></asp:TextBox>
            <ajaxToolkit:TextBoxWatermarkExtender ID="tbweSearch" runat="server" TargetControlID="txtSearch"/>
        </div>
        
        <div class="search-button">
            <asp:ImageButton ID="btnSearch" CausesValidation="false" runat="server" ImageAlign="Middle" CssClass="icon-menu" OnClick="btnSearch_Click" />
        </div>
        <div class="search-button">
            <asp:ImageButton ID="btnShowAll" CausesValidation="false" runat="server" ImageAlign="Middle" OnClick="btnShowAll_Click" />
        </div>
    </div>
    
</div>
<asp:ListView ID="rptMail" runat="server">
    <LayoutTemplate>
        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="spacer--large message--list <%# (Container.DataItemIndex + 1) % 2 == 0 ? "even" : "odd" %> <%# (Container.DataItemIndex) == 0 ? "first" : "" %>">
            <div  onclick="previewRow('<%# ((SnMessageEntity)Container.DataItem).Id %>');">
                <div class="blog--avatar">
                     <div class="blog--avatar__item"><Mono:Gravatar ID="ctlGravatar" runat="server"  /></div>
                </div>
                <div class="blog--content">
                    <h3 class="title--secondary blog-title"><%# ((SnMessageEntity)Container.DataItem).Subject %></h3>
                    
                    <div class="blog--home-list">
                            <div class="blog--meta-info">
                                <div class="date"><%# ((SnMessageEntity)Container.DataItem).DateCreated %></div>
                                <div class="subject">
                                    By: 
                                    <span style="<%# MessageStatusFilter == MonoSoftware.MonoX.Repositories.MessageStatus.Received ? String.Empty : "display: none;"%>"><%# ((SnMessageEntity)Container.DataItem).AspnetUser.UserName %></span>
                                    <span style='<%# MessageStatusFilter == MonoSoftware.MonoX.Repositories.MessageStatus.Sent ? String.Empty : "display: none;"%>'><%# ((SnMessageEntity)Container.DataItem).ToListShort %></span>
                                </div>
                            </div>
                        </div>
                </div>
            </div> 
            <div class="message--options">
                <asp:ImageButton ID="btnDelete" runat="server" 
                    CausesValidation="false" 
                    ImageUrl='<%# MonoSoftware.MonoX.Utilities.UrlUtility.ResolveThemeUrl("img/delete.png") %>' 
                    AlternateText='<%# DefaultResources.Button_Delete %>'
                    ToolTip='<%# DefaultResources.Button_Delete %>'
                    BorderWidth="0"
                    OnClientClick="javascript:if(!confirm(ResourceManager.GetString('DeleteConfirmationMessage'))){return false;}"
                    CommandArgument="<%# ((SnMessageEntity)Container.DataItem).Id %>" 
                    OnClick="btnDelete_Click" />
            </div>
        </div>
    </ItemTemplate>
</asp:ListView>
<div style="overflow: hidden;">
    <mono:Pager ID="pager" runat="server" AutoPaging="false" AllowCustomPaging="true" EnableViewState="true" PageSize="10" NumericButtonCount="5" >
        <PagerTemplate>
        </PagerTemplate>
    </mono:Pager>
    <asp:Label runat="server" ID="labEmpty" CssClass="empty-text"></asp:Label>
</div>
            