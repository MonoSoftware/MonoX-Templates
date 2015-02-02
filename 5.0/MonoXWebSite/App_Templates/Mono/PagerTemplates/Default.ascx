<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Controls.MonoXPagerTemplate" %>

<div class="pager">
	<asp:HyperLink id="Linkbutton1" runat="server" Visible="<%# !(Pager.IsFirstNumericGroup) %>" Text="<<" NavigateUrl='<%# ConstructPagerUrl(0) %>'>
	</asp:HyperLink>
	<asp:HyperLink id="Linkbutton2" runat="server" Visible="<%# !(Pager.IsFirstNumericGroup) %>" Text="..." NavigateUrl='<%# ConstructPagerUrl(Convert.ToInt32(Pager.CurrentPageIndex / Pager.NumericButtonCount) * Pager.NumericButtonCount - Pager.NumericButtonCount) %>'>
	</asp:HyperLink>
	<asp:Repeater id="Repeater1" runat="server" DataSource="<%# Pager.NumericButtonDataSource %>">
		<ItemTemplate>			
			<asp:hyperlink ID="Hyperlink1" runat="server" Text='<%# Convert.ToInt32(Container.DataItem) + 1 %>' NavigateURL='<%# ConstructPagerUrl(Container.DataItem) %>' Visible='<%# Convert.ToInt32(Container.DataItem) != Pager.CurrentPageIndex %>'></asp:hyperlink>
			<span id="Span1" class="selected" runat="server" Visible='<%# (Convert.ToInt32(Container.DataItem) == Pager.CurrentPageIndex) && (Pager.PageCount > 1) %>'><%# Convert.ToInt32(Container.DataItem) + 1 %></span>
		</ItemTemplate>
	</asp:Repeater>
	<asp:HyperLink id="Linkbutton4" runat="server" Visible="<%# !(Pager.IsLastNumericGroup) %>" Text="..." NavigateUrl='<%# ConstructPagerUrl(Convert.ToInt32(Pager.CurrentPageIndex / Pager.NumericButtonCount) * Pager.NumericButtonCount + Pager.NumericButtonCount) %>'>
	</asp:HyperLink>
	<asp:HyperLink id="Linkbutton5" runat="server" Visible="<%# !(Pager.IsLastNumericGroup) %>" Text=">>" NavigateUrl='<%# ConstructPagerUrl(Pager.PageCount - 1) %>'>
	</asp:HyperLink>
</div>