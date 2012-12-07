<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogManageCategories.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Blog.BlogManageCategories" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<asp:UpdatePanel ID="up" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
    <ContentTemplate>                
        <dl>
            <dd>
                <asp:Label ID="labCategory" runat="server"></asp:Label>
                <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                <div class="button-holder">
                    <MonoX:StyledButton ID="btnAdd" runat="server" CausesValidation="false" />
                </div>
            </dd>
            <dd>            
                <MonoX:StyledButton ID="btnUpdate" runat="server" CausesValidation="false" />
                <MonoX:StyledButton ID="btnCancel" runat="server" CausesValidation="false" />
                <telerik:RadListBox ID="lstCategories" runat="server" SelectionMode="Single" AllowDelete="true" CausesValidation="false"
                    Width="98%" Height="200px" Skin="Web20" AutoPostBackOnDelete="true" AutoPostBack="true">
                </telerik:RadListBox>
            </dd>
        </dl>
    </ContentTemplate>
</asp:UpdatePanel>
