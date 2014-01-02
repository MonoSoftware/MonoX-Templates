<%@ Control 
    Language="C#" 
    AutoEventWireup="true" 
    Inherits="MonoSoftware.MonoX.ModuleGallery.LanguageChanger" Codebehind="LanguageChanger.ascx.cs" %>
    
<div class="language-changer">
    <asp:DataList ID="languageChooser" runat="server" 
        RepeatColumns="10" RepeatDirection="Horizontal" RepeatLayout="Flow"    
        CellSpacing="1" CellPadding="1" ItemStyle-HorizontalAlign="center" ItemStyle-VerticalAlign="middle"
        OnItemDataBound="languageChooser_ItemDataBound" >
        <AlternatingItemStyle VerticalAlign="Top" />
        <ItemStyle VerticalAlign="Top" />
        <ItemTemplate>
        </ItemTemplate>
    </asp:DataList>    
</div>    