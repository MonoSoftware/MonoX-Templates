<%@ Page
    Language="C#"
    AutoEventWireup="true"
    MasterPageFile="~/Mono/MasterPages/Default.Master"
    Theme="Mono"
    Title="Showcase"
    CodeBehind="Showcase.aspx.cs"
    Inherits="Mono.Web.Pages.Showcase" %>

<%@ Register TagPrefix="MonoX" TagName="StyledButton" Src="~/MonoX/controls/StyledButton.ascx" %>
<%@ Register TagPrefix="MonoX" TagName="Editor" Src="~/MonoX/ModuleGallery/MonoXHtmlEditor.ascx" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX" TagPrefix="portal" %>
<%@ Register Assembly="MonoX" Namespace="MonoSoftware.MonoX.Repositories" TagPrefix="MonoRepositories" %>




<asp:Content ID="cp1" ContentPlaceHolderID="cp1" runat="server">


    <div class="l--cover">
        <div class="l--row">
	        <h1 class="title--primary">Showcase</h1>
            <p>A sampling of some of the exceptional sites built with MonoX.</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="cp2" ContentPlaceHolderID="cp2" runat="server">
    <div class="l--row spacer--box">
        <portal:PortalWebPartZoneTableless HeaderText="Left zone" ID="leftPartZone" runat="server" Width="100%" ChromeTemplateFile="LeftColumn.htm">
            <ZoneTemplate>
                <MonoX:Editor runat="server" ID="editor2" Title="Features" ShowRating="false">
                    <DefaultContent>
                        <div id="portfolio" class="group portfolio" data-columns="">
                            <div class="portfolio--box item big">
                                <img alt="Theorio" runat="server" src="~/App_Themes/Mono/img/screens/theorio-big.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Theor.io</h3>
                                    <a href="http://www.theor.io/" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item">
                                <img alt="JobsBoard" runat="server" src="~/App_Themes/Mono/img/screens/jobsboard.jpg"/>
                                <div class="portfolio--data">
                                    <h3>JobsBoard</h3>
                                    <a href="http://www.jobsboard.ie/" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item">
                                <img alt="Eden Careers" runat="server" src="~/App_Themes/Mono/img/screens/eden.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Eden Careers</h3>
                                    <a href="http://www.edencareers.com/" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item">
                                <img alt="HomeClick Community" runat="server" src="~/App_Themes/Mono/img/screens/homeclick.jpg"/>
                                <div class="portfolio--data">
                                    <h3>HomeClick Community</h3>
                                    <a href="http://community.homeclick.com/" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item">
                                <img alt="ClipFlair Social" runat="server" src="~/App_Themes/Mono/img/screens/clipflair.jpg"/>
                                <div class="portfolio--data">
                                    <h3>ClipFlair Social</h3>
                                    <a href="http://social.clipflair.net/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="CPL" runat="server" src="~/App_Themes/Mono/img/screens/cpl.jpg"/>
                                <div class="portfolio--data">
                                    <h3>CPL</h3>
                                    <a href="http://cplhealthcare.ie/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="MessageMeUp" runat="server" src="~/App_Themes/Mono/img/screens/messageme.jpg"/>
                                <div class="portfolio--data">
                                    <h3>MessageMeUp</h3>
                                    <a href="http://www.messagemeup.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            

                            <div class="portfolio--box item">
                                <img alt="Tomislav Torjanac" runat="server" src="~/App_Themes/Mono/img/screens/torjanac.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Tomislav Torjanac</h3>
                                    <a href="http://www.torjanac.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="eCTD Office" runat="server" src="~/App_Themes/Mono/img/screens/ectd.jpg"/>
                                <div class="portfolio--data">
                                    <h3>eCTD Office</h3>
                                    <a href="http://www.ectdoffice.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item big">
                                <img alt="Jungle Juniors" runat="server" src="~/App_Themes/Mono/img/screens/jj-big.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Jungle Juniors</h3>
                                    <a href="https://junglejuniors.com.au/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="HireSafe" runat="server" src="~/App_Themes/Mono/img/screens/hiretrack.jpg"/>
                                <div class="portfolio--data">
                                    <h3>HireSafe</h3>
                                    <a href="https://hiretrak.hiresafe.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="AdMovie.me" runat="server" src="~/App_Themes/Mono/img/screens/admovie.jpg"/>
                                <div class="portfolio--data">
                                    <h3>AdMovie.me</h3>
                                    <a href="https://teachers.admovi.me/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="TrackPro Advisors" runat="server" src="~/App_Themes/Mono/img/screens/trackpro.jpg"/>
                                <div class="portfolio--data">
                                    <h3>TrackPro Advisors</h3>
                                    <a href="https://www.trackproadvisors.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                             

                            <div class="portfolio--box item">
                                <img alt="Pitcheo" runat="server" src="~/App_Themes/Mono/img/screens/pitcheo.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Pitcheo</h3>
                                    <a href="http://www.pitcheo.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            

                            

                            <div class="portfolio--box item">
                                <img alt="International Exchange Center" runat="server" src="~/App_Themes/Mono/img/screens/iec.jpg"/>
                                <div class="portfolio--data">
                                    <h3>International Exchange Center</h3>
                                    <a href="http://iec.ru/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="DT Advisory" runat="server" src="~/App_Themes/Mono/img/screens/advisory.jpg"/>
                                <div class="portfolio--data">
                                    <h3>DT Advisory</h3>
                                    <a href="http://dtadvisory.sk/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="SMS Box" runat="server" src="~/App_Themes/Mono/img/screens/smsbox.jpg"/>
                                <div class="portfolio--data">
                                    <h3>SMS Box</h3>
                                    <a href="https://www.smsbox.sk/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="Economic portal" runat="server" src="~/App_Themes/Mono/img/screens/bgsacom.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Economic portal</h3>
                                    <a href="http://www.bg-sa.com/BgWeb" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item big">
                                <img alt="sbaOpen" runat="server" src="~/App_Themes/Mono/img/screens/sba-big.jpg"/>
                                <div class="portfolio--data">
                                    <h3>sbaOpen</h3>
                                    <a href="http://sbaopen.com/" class="btn--small">Visit</a>
                                </div>
                            </div>
                            <div class="portfolio--box item">
                                <img alt="Players2Fans" runat="server" src="~/App_Themes/Mono/img/screens/playertofans.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Players2Fans</h3>
                                    <a href="http://players2fans.us/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="GGnet" runat="server" src="~/App_Themes/Mono/img/screens/ggnet.jpg"/>
                                <div class="portfolio--data">
                                    <h3>GGnet</h3>
                                    <a href="http://ggnetscuola.it/MonoX/Pages/chi-siamo.aspx" class="btn--small">Visit</a>
                                </div>
                            </div>

                            

                            <div class="portfolio--box item">
                                <img alt="Terfex" runat="server" src="~/App_Themes/Mono/img/screens/terfex.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Terfex</h3>
                                    <a href="http://terfex.net/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="Striving Programmers" runat="server" src="~/App_Themes/Mono/img/screens/striving.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Striving Programmers</h3>
                                    <a href="http://www.strivingprogrammers.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            

                             <div class="portfolio--box item big">
                                <img alt="+POW Health" runat="server" src="~/App_Themes/Mono/img/screens/powhealth-big.jpg"/>
                                <div class="portfolio--data">
                                    <h3>+POW Health</h3>
                                    <a href="http://www.powhealth.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="TSE" runat="server" src="~/App_Themes/Mono/img/screens/tse.jpg"/>
                                <div class="portfolio--data">
                                    <h3>TSE</h3>
                                    <a href="http://kalite.tse.org.tr/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="beqom" runat="server" src="~/App_Themes/Mono/img/screens/beqom.jpg"/>
                                <div class="portfolio--data">
                                    <h3>beqom</h3>
                                    <a href="http://go.beqom.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="Chinese Culture University" runat="server" src="~/App_Themes/Mono/img/screens/pccu.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Chinese Culture University</h3>
                                    <a href="http://tportfolio.pccu.edu.tw/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="PMEC Egypt" runat="server" src="~/App_Themes/Mono/img/screens/pmec.jpg"/>
                                <div class="portfolio--data">
                                    <h3>PMEC Egypt</h3>
                                    <a href="http://profile.pmecegypt.com/login.aspx" class="btn--small">Visit</a>
                                </div>
                            </div>

                           

                            <div class="portfolio--box item">
                                <img alt="Anesthesia Scheduler" runat="server" src="~/App_Themes/Mono/img/screens/anest.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Anesthesia Scheduler</h3>
                                    <a href="http://v2.anesthesiascheduler.com/" class="btn--small">Visit</a>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="HOPS Intranet" runat="server" src="~/App_Themes/Mono/img/screens/monops.jpg"/>
                                <div class="portfolio--data">
                                    <h3>HOPS Intranet</h3>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="OET" runat="server" src="~/App_Themes/Mono/img/screens/oet.jpg"/>
                                <div class="portfolio--data">
                                    <h3>OET</h3>
                                </div>
                            </div>

                            <div class="portfolio--box item">
                                <img alt="Social Networking White Label" runat="server" src="~/App_Themes/Mono/img/screens/snwl.jpg"/>
                                <div class="portfolio--data">
                                    <h3>Social Networking White Label</h3>
                                </div>
                            </div>
                        </div>

                    </DefaultContent>
                </MonoX:Editor>
            </ZoneTemplate>
        </portal:PortalWebPartZoneTableless>
    </div>
    <asp:Literal id="ltlScript" runat="server"></asp:Literal>

</asp:Content>

