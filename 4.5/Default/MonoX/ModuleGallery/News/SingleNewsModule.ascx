<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.SingleNewsModule" Codebehind="SingleNewsModule.ascx.cs" %>
<%@ Register Src="~/MonoX/ModuleGallery/SocialNetworking/Comments.ascx" TagPrefix="MonoX" TagName="Comments" %>
<%@ Register Src="~/MonoX/ModuleGallery/RelatedContent.ascx" TagPrefix="MonoX" TagName="RelatedContent" %>

<table width="100%" class="<%= CssClass %>">
    <tr>
        <td class="NewsData">
            <asp:Repeater ID="singleNewsHolder" runat="server">
                <ItemTemplate>
                </ItemTemplate>
            </asp:Repeater>
        </td>
    </tr>
    <tr>
        <td id="pagerHolder" runat="server">
        
        </td>
    </tr>
    <tr>
        <td>
            <MonoX:RelatedContent id="relatedContent" runat="server"></MonoX:RelatedContent>
        </td>
    </tr>
    <tr>
        <td>
            <MonoX:Comments ID="comments" runat="server" PagingEnabled="true" CommentTextBoxVisibleOnInit="true"></MonoX:Comments>            
        </td>
    </tr>    
</table>


