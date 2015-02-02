<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Confirmation.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.Confirmation" %>

<div class="content-wrapper" id="login-page">
    <div class="login-title">
        <a href='<%= MonoSoftware.Web.UrlFormatter.ResolveServerUrl(MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink("~/")) %>' class="logo">
            <img id="Img1" runat="server" src="<%$ Code: MonoSoftware.MonoX.Paths.App_Themes.img.logo_png %>" alt="MonoX" />
        </a>
    </div>
    <div class="page-login">
        <h2><asp:Label runat="server" ID="lblTitle"></asp:Label></h2>
        <p>
            <asp:Label runat="server" ID="lblMessage"></asp:Label>
            <asp:PlaceHolder runat="server" ID="plhControls"></asp:PlaceHolder>
        </p>
    </div>
</div>
<footer id="sticky-footer">
    <div class="copyright">
        Copyright &#169;<%= DateTime.UtcNow.Year.ToString()%>
        <a href="http://mono.software">Mono Ltd.</a>
        <a id="A1" runat="server" href="http://monox.mono-software.com" title="Powered by MonoX">Powered by MonoX</a>
    </div>
</footer>