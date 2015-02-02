<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="ValidationHandler.ascx.cs"
    Inherits="MonoSoftware.MonoX.Controls.ValidationHandler" %>

<script type="text/javascript">   

    $(document).ready(function () {
        MonoSoftware.MonoX.ValidationHandler.StartListening();
    });
    
</script>

<asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
    <ContentTemplate>
    </ContentTemplate>
</asp:UpdatePanel>