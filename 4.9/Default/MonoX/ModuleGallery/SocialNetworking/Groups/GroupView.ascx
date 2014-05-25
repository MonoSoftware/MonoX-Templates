<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="GroupView.ascx.cs"Inherits="MonoSoftware.MonoX.ModuleGallery.SocialNetworking.GroupView" %>

<%@ Register TagPrefix="MonoX" TagName="Wall" Src="~/MonoX/ModuleGallery/SocialNetworking/WallNotes.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Photos" Src="~/MonoX/ModuleGallery/SocialNetworking/PhotoGallery/PhotoGalleryContainer.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Discussion" Src="~/MonoX/ModuleGallery/SocialNetworking/Discussion/DiscussionContainer.ascx" %>
<%@ Import Namespace="MonoSoftware.MonoX.Utilities" %>

<asp:UpdatePanel ID="up" runat="server" UpdateMode="Always">
    <ContentTemplate>
        <h2><asp:Label ID="lblTitle" runat="server"></asp:Label></h2>
        <div class="tabs-wrapper">
            <div class="tabs">
                <ul id="rowSwitch" runat="server">
                    <li class="<%= InternalWorkingMode.Equals(SnGroupWorkingMode.Wall) ? "current" : String.Empty %>">
                        <asp:HyperLink ID="lnkWall" runat="server" CausesValidation="false">
                            <span id="labWall" runat="server"></span>
                        </asp:HyperLink>
                    </li>
                    <li class="<%= InternalWorkingMode.Equals(SnGroupWorkingMode.Photos) ? "current" : String.Empty %>">
                        <asp:HyperLink ID="lnkPhotos" runat="server" CausesValidation="false">
                            <span id="labPhotos" runat="server"></span>
                        </asp:HyperLink>
                    </li>
                    <li class="<%= InternalWorkingMode.Equals(SnGroupWorkingMode.DiscussionBoard) ? "current" : String.Empty %>">
                        <asp:HyperLink ID="lnkDiscussion" runat="server" CausesValidation="false">
                            <span id="labDiscussion" runat="server"></span>
                        </asp:HyperLink>
                    </li>
                </ul>
                <div class="tab-line"></div>
            </div>
        </div>
        <asp:Panel runat="server" ID="pnlWarning" style="font-size: 14px;">
            <br />
            <asp:Literal runat="server" ID="ltlWarning"></asp:Literal>
            <br />
            <asp:LinkButton runat="server" ID="lnkJoin" OnCommand="lnkJoin_Command"></asp:LinkButton>
        </asp:Panel>
        <MonoX:Wall runat="server" ID="snWallNotes" Title="Wall notes" ShowPrivacyEditor="false" />
        <div class="group-photo-holder">
            <MonoX:Photos runat="server" ID="snPhotos" UsePrettyPhoto="true" />
        </div>
        <div class="discussion">
            <MonoX:Discussion runat="server" ID="snDiscussion" RelatedContentVisible="false"  />
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
