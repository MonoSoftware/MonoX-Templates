<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogManageCategories.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogManageCategories" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
    <ContentTemplate>                
        <div class="blog-categories-holder" style="margin-top: 0px">  
            <asp:Label CssClass="label" ID="labCategory" runat="server"></asp:Label>
            <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
            <div class="button-holder">
                <MonoX:StyledButton ID="btnAdd" runat="server" CausesValidation="false" />
            </div>
        </div>
        <div class="blog-categories-holder">           
            <MonoX:StyledButton ID="btnUpdate" runat="server" CausesValidation="false" />
            <MonoX:StyledButton ID="btnCancel" runat="server" CausesValidation="false" />
            <telerik:RadListBox ID="lstCategories" runat="server" SelectionMode="Single" AllowDelete="true" CausesValidation="false"
                Width="98%" Height="200px" Skin="MetroTouch" AutoPostBackOnDelete="true" AutoPostBack="true">
            </telerik:RadListBox>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
