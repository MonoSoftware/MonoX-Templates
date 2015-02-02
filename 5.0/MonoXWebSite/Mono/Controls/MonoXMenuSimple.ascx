<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.ModuleGallery.MonoXMenuSimple" Codebehind="MonoXMenuSimple.ascx.cs" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Controls.HierarchicalRepeater" TagPrefix="Mono" %>

    <a href="javascript:void(0)" class="js-toggle-menu toggle-menu icon-menu"></a>
    <nav role="navigation" aria-label="Primary" class="header--navigation">
        <div class="nav--primary">
            <Mono:HierarchicalRepeater runat="server" ID="repeater" Width="100%" CssClass="MonoXSimpleMenu">
                <TemplateCollection>
                    <Mono:ItemTemplate ListItemType="HeaderTemplate">            
                        <Template>
                        </Template>
                    </Mono:ItemTemplate>
        
        
                    <Mono:ItemTemplate Depth="-1" ListItemType="DepthHeaderTemplate">
                        <Template>
                        </Template>
                    </Mono:ItemTemplate>
                    <Mono:ItemTemplate Depth="0" ListItemType="ItemHeaderTemplate">
                        <Template>
                            <ul class="<%# GetItemCssClass((HierarchyData<NavigationMenuItem>)Container.DataItem) %>">
                        </Template>
                    </Mono:ItemTemplate>
                    <Mono:ItemTemplate Depth="-1" ListItemType="ItemTemplate">
                        <Template>
	                        <li class='<%# (Convert.ToBoolean(Eval("Item.Url").ToString().Length > 0) ? "hand" : "no-hand") + " " + SetItemClass(Eval("Item.Url").ToString()) %>' title='<%#Eval("Item.ToolTip") %>'><%# Convert.ToBoolean(Eval("Item.Url").ToString().Length > 0) ? "<a href=\"" + Eval("Item.Url") + "\">" : "<a href=\"#\">"%><%#Eval("Item.Title") %></a><strong></strong><%# Convert.ToBoolean(Eval("HasChildren")) ? "<ul class='level" + Convert.ToInt32(Eval("Item.Depth")).ToString() + "'>" : Convert.ToInt32(Eval("Item.Depth")) > 0 ? "</li>" : "" %>
                        </Template>
                    </Mono:ItemTemplate>
                    <Mono:ItemTemplate Depth="0" ListItemType="ItemFooterTemplate">
                        <Template>
                            <%# Convert.ToBoolean(Eval("HasChildren")) ? "</ul></li>" : "</li>"%>
                            </ul>
                        </Template>
                    </Mono:ItemTemplate>
                    <Mono:ItemTemplate Depth="-1" ListItemType="ItemFooterTemplate">
                        <Template>
                            <%# Convert.ToBoolean(Eval("HasChildren")) ? "</ul></li>" : "" %>
                        </Template>
                    </Mono:ItemTemplate>
                    <Mono:ItemTemplate Depth="-1" ListItemType="DepthFooterTemplate">
                        <Template>
                        </Template>
                    </Mono:ItemTemplate>
        
        
                    <Mono:ItemTemplate ListItemType="FooterTemplate">            
                        <Template>
                        </Template>
                    </Mono:ItemTemplate>
                </TemplateCollection>
            </Mono:HierarchicalRepeater>
        </div>
    </nav>
