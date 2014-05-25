<%@ Control Language="C#" AutoEventWireup="true" Inherits="MonoSoftware.MonoX.Admin.AdminFooter" Codebehind="AdminFooter.ascx.cs" %>

<footer>
    <div class="footer-holder">
        <span><asp:Literal runat="server" ID="ltlInfo"></asp:Literal></span>, <span>Copyright &copy; <%= DateTime.UtcNow.Year.ToString() %> <a href="http://www.mono-software.com">Mono Software Ltd.</a></span>
        
    </div>
</footer>