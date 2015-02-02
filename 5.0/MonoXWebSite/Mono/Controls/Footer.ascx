<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Footer.ascx.cs"
    Inherits="Mono.Web.Controls.Footer" %>

<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.ModuleGallery" TagPrefix="ModuleGallery" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="MonoSoftware.Web" Namespace="MonoSoftware.Web.Controls" TagPrefix="MonoXControls" %>

<footer class="footer" role="contentinfo">


        <div class="l--row">
            <ul class="footer--box">
                <li><h4 class="title--footer spacer--underline-secondary">General</h4></li>
                <li class="footer--box__item"><asp:LoginName ID="loginName" runat="server" /></li>
                <li class="footer--box__item"><asp:LoginStatus ID="loginStatus" runat="server" /></li>
                <asp:LoginView runat="server" ID="loginView">
                    <AnonymousTemplate>
                        <li class="footer--box__item"><asp:HyperLink runat="server" ID="lnkRegister" Text="No account? Register here!" NavigateUrl='<% $Code: MonoSoftware.MonoX.Utilities.LocalizationUtility.RewriteLink("~/Membership/Register.aspx") %>'></asp:HyperLink></li>
                    </AnonymousTemplate>
                </asp:LoginView>
                <li class="footer--box__item"><a id="A1" href="~/ContentPage/PrivacyPolicy/" runat="server">Privacy policy</a></li>
                <li class="footer--box__item"><a id="A2" href="~/ContentPage/TermsOfUse/" runat="server">Terms of use</a></li>
                <li class="footer--box__item"><a id="A10" href="~/purchase/MonoX/" runat="server">Purchase MonoX</a></li>
            </ul>
            <ul class="footer--box">
                <li><h4 class="title--footer spacer--underline-secondary">Community</h4></li>
                <li class="footer--box__item"><a id="A7" href="~/blog/posts/Mono/" runat="server">Blog</a></li>
                <li class="footer--box__item"><a id="A8" href="~/support/mono/" runat="server">Support forum</a></li>
                <li class="footer--box__item"><a id="A9" href="~/contact/" runat="server">Contact us</a></li>
                <li class="footer--box__item">
                    <a class="icon-facebook" href="http://www.facebook.com/pages/Mono-Software-Ltd/192570507442137"></a>
                    <a class="icon-twitter" href="https://twitter.com/monosoftware"></a>
                    <a class="icon-linkedin" href="https://www.linkedin.com/company/mono-software-ltd.?trk=top_nav_home"></a>
                </li>
            </ul>

            <asp:UpdatePanel ID="updatePanel" class="footer--box__last" ChildrenAsTriggers="true" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <asp:Panel runat="server" ID="pnlForm">
                        <ul class="group">
                            <li>
                                <h4 class="title--footer spacer--underline-secondary">Send us an e-mail</h4>
                            </li>
                        </ul>
                        <ul class="group">
                            <li class="validator--holder footer--field__half">
                                <asp:TextBox runat="server" ID="txtEMail" CssClass="footer--field" ValidationGroup="footerContact"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEmail" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtEMail" SetFocusOnError="true" Text="*" ValidationGroup="footerContact"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="tbweEmail" runat="server" TargetControlID="txtEMail" WatermarkText="Your E-Mail address" />
                            </li>
                            <li class="validator--holder footer--field__half">
                                <asp:TextBox runat="server" ID="txtSubject" CssClass="footer--field" ValidationGroup="footerContact"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqSubject" runat="server" CssClass="ValidatorAdapter" ControlToValidate="txtSubject" SetFocusOnError="true" Text="*" ValidationGroup="footerContact"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="tbweSubject" runat="server" TargetControlID="txtSubject" WatermarkText="Subject" />
                            </li>
                        </ul>
                        <ul class="group">
                            <li class="validator--holder">
                                <asp:TextBox runat="server" ID="txtMessage" CssClass="footer--field" TextMode="MultiLine"></asp:TextBox>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="tbweMessage" runat="server" TargetControlID="txtMessage" WatermarkText="Message" />
                            </li>
                            <li>
                                <asp:LinkButton ID="btnSend" runat="server" CausesValidation="true" OnClick="btnSend_Click" CssClass="btn--inverse" Text="Send now" ValidationGroup="footerContact" />
                            </li>
                        </ul>
                    </asp:Panel>
                    <asp:Panel runat="server"  cssclass="right-section clearfix" ID="pnlNotification">
                        <ul class="group">
                            <li>
                                <h4 class="title--footer spacer--underline-secondary">Send us an e-mail</h4>
                            </li>
                            <li  class="footer--box__item">
                                <asp:Label CssClass="notification" ID="ltlNotification" runat="server"></asp:Label>
                            </li>
                        </ul>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>    
    <div class="l--row">
        <div class="footer--copyright">

                <span class="float-left copy">MonoX is a <a href="http://mono.software">Mono</a> product.</span>
                <a href="http://mono.software" class="float-right branding"><img id="Img1" src="~/App_Themes/Mono/img/mono-color.svg" alt="mono" runat="server" /></a>

        </div>
	</div>

    <script type="text/javascript">
        $(document).ready(function () {
            registerMain();
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            if (prm != null) {
                prm.add_endRequest(function (s, e) {
                    registerMain();
                });
            }
        });

        function registerMain() {

            $(document).click(function () {
                var hNav = $(".top-navigation");
                hNav.removeClass("nav-show");
            });
            $(".js-toggle-membership").click(function (e) {
                e.stopPropagation();
                var hNav = $(".top-navigation");
                if (hNav.hasClass("nav-show")) {
                    hNav.removeClass("nav-show");
                    hNav.addClass("nav-hide");
                }
                else if (hNav.hasClass("nav-hide")) {
                    hNav.removeClass("nav-hide");
                    hNav.addClass("nav-show");
                } else {
                    hNav.addClass("nav-show");
                }
            });

            $(document).click(function () {
                var hNav = $(".header--navigation");
                hNav.removeClass("nav-show");
            });
            $(".js-toggle-menu").click(function (e) {
                e.stopPropagation();
                var hNav = $(".header--navigation");
                if (hNav.hasClass("nav-show")) {
                    hNav.removeClass("nav-show");
                    hNav.addClass("nav-hide");
                }
                else if (hNav.hasClass("nav-hide")) {
                    hNav.removeClass("nav-hide");
                    hNav.addClass("nav-show");
                } else {
                    hNav.addClass("nav-show");
                }
            });

            bindMenuDropdown();
        }

        function bindMenuDropdown() {
            var userMenu = $(".js-search-toggle");
            var userMenuDropdown = $(".search--filter");
            var openClass = "nav-show";
            userMenu.unbind('click');

            userMenu.click(function (e) {
                userMenuDropdown.toggleClass(openClass);
                e.stopPropagation();
            });

            userMenu.keypress(function (e) {
                if (e.which == 13) {
                    userMenuDropdown.toggleClass(openClass);
                }
            });

            $(document).click(function (e) {
                userMenuDropdown.removeClass(openClass);
            });

            userMenuDropdown.click(function (e) {
                e.stopPropagation();
            });
        }

        $(function () {
            FastClick.attach(document.body);
        });


        // BUG orientation portrait/lanscape IOS //
        if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
            var viewportmeta = document.querySelector('meta[name="viewport"]');
            if (viewportmeta) {
                viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0';
                document.addEventListener('orientationchange', function () {
                    viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1';
                }, false);
            }
        }

    </script>
</footer>