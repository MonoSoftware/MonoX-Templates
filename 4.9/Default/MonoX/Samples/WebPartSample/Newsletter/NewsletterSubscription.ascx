<%@ Control Language="C#" AutoEventWireup="true" 
    CodeBehind="NewsletterSubscription.ascx.cs" 
    Inherits="MonoSoftware.MonoX.Samples.NewsletterSubscription" 
%>

<asp:PlaceHolder id="plhSubscription" runat="server">
<div class="newsletter-subscription">
    <h2> <%= NewsletterSubscriptionTitle %></h2>
    <asp:CheckBoxList id="cblNewsletterSubscriptionRoles" runat="server"></asp:CheckBoxList> 
    <p> <%= NewsletterSubscriptionDescription %></p>
    <MonoX:StyledButton ID="btnSubscribe" runat="server" />    
</div>    
</asp:PlaceHolder>    

<asp:PlaceHolder id="plhUnsubscription" runat="server">
<div class="newsletter-subscription">
    <h2> <%= NewsletterUnsubscriptionTitle %></h2>
    <asp:CheckBoxList id="cblNewsletterUnsubscriptionRoles" runat="server"></asp:CheckBoxList> 
    <p> <%= NewsletterUnsubscriptionDescription %></p>
    <MonoX:StyledButton ID="btnUnsubscribe" runat="server" />    
</div>    
</asp:PlaceHolder> 

<asp:PlaceHolder id="plhMessageUnsubscription" runat="server">
    <asp:Label CssClass="newsletter-subscription" ID="lblMessage" runat="server"></asp:Label>
</asp:PlaceHolder> 
 