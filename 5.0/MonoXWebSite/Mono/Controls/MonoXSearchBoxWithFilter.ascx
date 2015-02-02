<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="MonoXSearchBoxWithFilter.ascx.cs"
    Inherits="Mono.Web.Controls.MonoXSearchBoxWithFilter" %>

<%@ Import Namespace="MonoSoftware.MonoX.Resources" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>

                            
<asp:panel ID="pnlContainer" runat="server" DefaultButton="btnSearch" CssClass="search-filter-container">
    <div class="search">
        <a href="javascript:void(0)" class="icon-search js-search-toggle search--toggle"></a>
        <div class="search--filter">
            <div class="search-wrapper">
                <div class="holder">
                    <asp:TextBox AutoCompleteType="Disabled" runat="server" ID="txtSearch"></asp:TextBox>
                </div>
                <div class="go-holder">
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" />
                    <MonoX:StyledButton runat="server" ID="lnkSearch" OnClick="btnSearch_Click" CssClass=""></MonoX:StyledButton>
                </div>
            </div>
        
            <div class="search--item search-filter-list-title"><h3><%= MonoSoftware.MonoX.Resources.Search.SearchFilterCaption %></h3></div>
            <asp:Repeater ID="rptFilters" runat="server">
                <ItemTemplate>
                    <div class="search--item">
                        <input id="chkProvider" class="invert" type="checkbox" runat="server" value='<%# Eval("ProviderName") %>' checked='<%# Eval("CheckedValue") %>' />
                        <label for='<%# Container.FindControl("chkProvider").ClientID %>'><%# Eval("ProviderLocalization") %></label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:panel>