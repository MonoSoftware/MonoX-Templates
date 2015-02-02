<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="SlideShow.ascx.cs"
    Inherits="MonoSoftware.MonoX.ModuleGallery.SlideShow" %>

<div id="<%= this.ClientID %>_container" class="slides">    

    <a href="#" class='slidesjs-previous slidesjs-navigation <%= this.EnableTextualNavigation  ? "prev-text" : string.Empty %>'><%= !this.EnableTextualNavigation  ? "<i class='icon-left'></i>" : string.Empty %><asp:Literal runat="server" ID="ltlPrev"></asp:Literal></a>
    <a href="#" class='slidesjs-next slidesjs-navigation <%= this.EnableTextualNavigation  ? "next-text" : string.Empty %>'><%= !this.EnableTextualNavigation  ? "<i class='icon-right'></i>" : string.Empty %><asp:Literal runat="server" ID="ltlNext"></asp:Literal></a>

    <asp:Repeater runat="server" ID="rptItems">
        <ItemTemplate>
            <div class="jq-slide">        
                <a href='<%# Eval("Url") %>' target="<%# Eval("Target") %>" title='<%# Eval("Title") %>'><%# FormatUrl(Eval("ImageUrl").ToString(), Eval("Title").ToString(), "class=\"\"") %></a>
            </div>
        </ItemTemplate>
    </asp:Repeater>  
    
    <asp:PlaceHolder runat="server" ID="plhTitle">
        <div class="title"><%= this.SliderTitle %></div>
    </asp:PlaceHolder>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        initSlideShow();
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        if (prm != null) {
            prm.add_endRequest(function (s, e) {
                initSlideShow();
            });
        }
    });
   
    function initSlideShow() {
        var container = $('#<%= this.ClientID %>_container');
        var slides = container.find('.jq-slide').slice(1);
        if (slides.length == 0) {
            container.find('.slidesjs-navigation').remove();
        } else {
            // hide all but first image untill fully loaded
            slides.addClass('hidden');
            container.imagesLoaded(function () {
                slides.removeClass('hidden');
                container.slidesjs({
                    height: 800,
                    start: 1,
                    navigation: {
                        active: false,
                        effect: "fade"
                    },
                    pagination: {
                        active: <%= this.EnablePagination.ToString().ToLower() %>,
                        effect: "fade"
                    },
                    play: {
                        active: false,
                        effect: "fade",
                        interval: <%= this.SliderPlayInterval %>,
                        auto: <%= this.SliderAutoStart.ToString().ToLower() %>,
                        swap: true,
                        pauseOnHover: true,
                        restartDelay: <%= this.SliderPauseInterval %>
                    },
                    effect: {
                        slide: {
                            speed: 500
                        },
                        fade: {
                            speed: 300,
                            crossfade: true
                        }
                    },
                    callback: {
                        loaded: function() {},
                        start: function() {},
                        complete: function() {}
                    }
                });
            });
        }
    }
</script>