<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.PrivacyManager.PrivacyEditorEditTemplate, MonoX" %>
<div class="privacy-box">
    <div class="privacy-header">        
        <asp:Literal ID="labTitle" runat="server"></asp:Literal>
    </div>
    <div class="privacy-main">
        <asp:RadioButtonList ID="chkPrivacyLevels" runat="server">
        </asp:RadioButtonList>
    </div>
</div>
