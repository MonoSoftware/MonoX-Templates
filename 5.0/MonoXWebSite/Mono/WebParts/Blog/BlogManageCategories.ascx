<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogManageCategories.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogManageCategories" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/Mono/controls/StyledButton.ascx" %>
<asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
    <ContentTemplate>                
        <div class="blog-categories form">
            <div>
                <asp:Label ID="labCategory" runat="server" CssClass="form--label"></asp:Label>
                <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
            </div>
            <div>
                <MonoX:StyledButton ID="btnAdd" runat="server" CausesValidation="false" />
            </div>
            <div>            
                <MonoX:StyledButton ID="btnUpdate" runat="server" CausesValidation="false" />
                <MonoX:StyledButton ID="btnCancel" runat="server" CausesValidation="false" />
                <telerik:RadListBox ID="lstCategories" runat="server" SelectionMode="Single" AllowDelete="true" CausesValidation="false"
                    Width="100%" Height="200px" Skin="Default" AutoPostBackOnDelete="true" AutoPostBack="true">
                </telerik:RadListBox>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
