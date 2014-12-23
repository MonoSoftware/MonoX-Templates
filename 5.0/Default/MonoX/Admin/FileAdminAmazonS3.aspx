<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FileAdminAmazonS3.aspx.cs" Inherits="MonoSoftware.MonoX.Admin.FileAdminAmazonS3" MasterPageFile="~/MonoX/MasterPages/AdminDefault.master" EnableTheming="true" Theme="DefaultAdmin" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="MonoXControls" Namespace="MonoSoftware.MonoX.Controls" Assembly="MonoX" %>
<%@ MasterType TypeName="MonoSoftware.MonoX.BaseMasterPage" %>    

<asp:Content ID="Content1" ContentPlaceHolderID="cp" Runat="Server">
     <telerik:RadCodeBlock ID="cb1" runat="server">
        <script type="text/javascript">
        function OnFileOpen(sender, args) {
            var manager = sender.get_windowManager();
            window.setTimeout(
            function() {
                var activeWindow = manager.getActiveWindow();
                if (!activeWindow)
                    return;
                activeWindow.set_behaviors(Telerik.Web.UI.WindowBehaviors.Close + Telerik.Web.UI.WindowBehaviors.Maximize);
                activeWindow.setSize(600, 550);
                activeWindow.center();
            }, 20);
        }
        $(window).resize(function () {
            var masterDiv = $('.masterDiv');
            var header = $('header').height();
            var viewport = $(window).height();
            var razlika = viewport - header;
            masterDiv.height(razlika);
        }
        ).resize();
        

        </script>
    </telerik:RadCodeBlock> 
    <MonoXControls:MonoXWindowManager ID="windowDialog" runat="server" Modal="true"></MonoXControls:MonoXWindowManager>
    <div class="fileExplorerContainer">
        <center>
            <telerik:RadFileExplorer OnClientFileOpen="OnFileOpen" runat="server" ID="ctlFileExplorer" Width="100%" Height="600px" CssClass="fileExplorer" Skin="MetroTouch">
                <Configuration ViewPaths="~/MonoX/AmazonS3" UploadPaths="~/MonoX/AmazonS3" DeletePaths="~/MonoX/AmazonS3" />    
            </telerik:RadFileExplorer>
            <asp:Label runat="server" ID="lblMessage"></asp:Label>
        </center>
    </div>
</asp:Content>