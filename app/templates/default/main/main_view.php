<div id="content">    <?    $array['id'] = "1";    $array['content']['content'] = Element::GetList($array, $array['filter'], $limit="1");    ?>    <?    $filter = array("content_id" => "1");    $images = Element::SelectAll('files', $filter, null, null);    ?>    <div id="mainpage-action" style="z-index: 0; overflow: hidden;">                <?foreach($images as $k_image => $image){?>                    <img src="/<?=$image['path']?>" />                <? } ?>    </div>    <script>        $(function(){            $("#mainpage-action").slidesjs({                width: 1440,                height:350,                pagination: {                    active: true,                    // [boolean] Create pagination items.                    // You cannot use your own pagination. Sorry.                    effect: "slide"                    // [string] Can be either "slide" or "fade".                },                navigation: {                    active:false                },                play: {                    active: false,                    // [boolean] Generate the play and stop buttons.                    // You cannot use your own buttons. Sorry.                    effect: "slide",                    // [string] Can be either "slide" or "fade".                    interval: 3000,                    // [number] Time spent on each slide in milliseconds.                    auto: false,                    // [boolean] Start playing the slideshow on load.                    swap: false,                    // [boolean] show/hide stop and play buttons                    pauseOnHover: false,                    // [boolean] pause a playing slideshow on hover                    restartDelay: 3500                    // [number] restart delay on inactive slideshow                },                play: {                    active: true,                    // [boolean] Generate the play and stop buttons.                    // You cannot use your own buttons. Sorry.                    effect: "slide",                    // [string] Can be either "slide" or "fade".                    interval: 3500,                    // [number] Time spent on each slide in milliseconds.                    auto: true,                    // [boolean] Start playing the slideshow on load.                    swap: false,                    // [boolean] show/hide stop and play buttons                    pauseOnHover: false,                    // [boolean] pause a playing slideshow on hover                    restartDelay: 3500                    // [number] restart delay on inactive slideshow                },                callback: {                    loaded: function(number) {                        // Do something awesome!                        // Passes start slide number                    },                    start: function(number) {                    },                    complete: function(number) {                        // Do something awesome!                        // Passes slide number at end of animation                    }                }            });            sjs = $('#mainpage-action').data('plugin_slidesjs');            $('.slider_text_name').click( function(clickevent){ sjs.stop(); } );            $('.slider_text_tel').click( function(clickevent){ sjs.stop(); } );        });    </script>    <div id="mainpage-menu">        <div style="margin-bottom: 20px;text-align: center;font-size: 15pt;">МЕНЮ ДОСТАВКИ</div>        <div class="jcarousel" data-jcarousel="true">            <ul style="left: 0px; top: 0px;">                <li>                    <a class="menu-item-mainpage" href="/menu/lean/">                        <img alt="Осетинские пироги" title="Осетинские пироги" width="220" height="140" src="/upload/iblock/258/grin_roll_1.jpg">                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">                            Осетинские пироги</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/chinese-boxes/">                        <img alt="КОРОБОЧКИ WOK" title="КОРОБОЧКИ WOK" width="220" height="140" src="/upload/iblock/a06/korobochki.png">                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">                            КОРОБОЧКИ WOK</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/rolls/">                        <img alt="Суши и Роллы" title="Суши и Роллы" width="220" height="140" src="/upload/iblock/ca3/sushi_rolly.png">                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">                            Суши и Роллы</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/sets/">                        <img alt="Сеты" title="Сеты" width="220" height="140" src="/upload/iblock/509/sety.png">                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">                            Сеты</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/birthday/">                        <img alt="Именинникам" title="Именинникам" width="220" height="140" src="/upload/iblock/159/skidka.png">                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">                            Именинникам</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/deserts/">                        <img alt="Десерты и Напитки" title="Десерты и Напитки" width="220" height="140" src="/upload/iblock/7eb/deserty_napitki.png">                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">                            Десерты и Напитки</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/sets-discont/">                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="/upload/iblock/853/sety_aktsiya.png">                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">                            Сеты Акция*</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/salad/">                        <img alt="Салаты" title="Салаты" width="220" height="140" src="/upload/iblock/279/salaty.png">                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">                            Салаты</div>                        <div class="shadow-1"></div>                    </a>                </li>                <li>                    <a class="menu-item-mainpage" href="/menu/hots/">                        <img alt="Супы и Горячее" title="Супы и Горячее" width="220" height="140" src="/upload/iblock/37c/goryachee_supy.png">                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">                            Супы и Горячее</div>                        <div class="shadow-1"></div>                    </a>                </li>            </ul>            <div style="clear: both;"></div>            <a href="#" id="jcarousel-control-prev" style="display: none;" data-jcarouselcontrol="true"></a>            <a href="#" id="jcarousel-control-next" style="display: none;" data-jcarouselcontrol="true"></a>        </div>    </div>    <script>        (function($) {            $(function() {                var jcarousel = $('.jcarousel');                jcarousel                    .on('jcarousel:reload jcarousel:create',                        function () {                            var width = jcarousel.innerWidth();                            if (width >= 600) {                                width = width / 3;                            } else if (width >= 350) {                                width = width / 2;}                        }                    )                    .jcarousel({                        wrap: 'circular'                    });                $('#jcarousel-control-prev')                    .jcarouselControl({                        target: '-=1'                    });                $('#jcarousel-control-next')                    .jcarouselControl({                        target: '+=1'                    });                $('.jcarousel-pagination')                    .on('jcarouselpagination:active', 'a', function() {                        $(this).addClass('active');                    })                    .on('jcarouselpagination:inactive', 'a', function() {                        $(this).removeClass('active');                    })                    .on('click', function(e) {                        e.preventDefault();                    })                    .jcarouselPagination({                        perPage: 1,                        item: function(page) {                            return '<a href="#' + page + '">' + page + '</a>';                        }                    });            });        })(jQuery);        $("#mainpage-menu").hover(            function()            {                $('#jcarousel-control-next').fadeIn();                $('#jcarousel-control-prev').fadeIn();            }        )        $("#mainpage-menu").mouseleave        (            function() {                $('#jcarousel-control-next').fadeOut();                $('#jcarousel-control-prev').fadeOut();            }        )    </script>    <div class="mainpage-select-topline">    </div>    <div id="mainpage-select">        <?=$array['content']['content'][0]['preview_desc'];?>    </div>    <div class="mainpage-select-bottomline">    </div>    <div id="ovziv-news">        <div id="ovziv-news-select">            <input checked name="otziv-news" type="radio" value="otziv" id="otziv-radio1"/>            <label for="otziv-radio1">                Отзывы            </label>            <input name="otziv-news" type="radio" value="news" id="otziv-radio2"/>            <label for="otziv-radio2"  style="margin-left: 78px;">                Новости            </label>        </div>        <div id="otziv-mainpage">            <div id="ovziv-items">                <?                $array['id'] = "103";                $array['content']['content'] = Element::GetList($array, $array['filter'], $limit="3");                ?>                <?if(count($array['content']['content']) > 0){?>                    <?foreach($array['content']['content'] as $element => $val){?>                        <div class="ovziv-item">                            <div class="ovziv-item-text">                                <?=$val['desc']?>                            </div>                            <div class="ovziv-item-name">                                <?=$val['name']?>                            </div>                        </div>                    <? } ?>                <? } ?>                <div class="ovziv-item-add"  onclick="newreview()">Оставить отзыв</div>                <div style="clear: both;"></div>            </div>            <div class="ovziv-more">                <a href="/comments/">                    ВСЕ ОТЗЫВЫ                </a>            </div>        </div>        <div id="news-mainpage" style="display: none;">            <div id="news-items">                <?                $array['id'] = "5";                $array['content']['content'] = Element::GetList($array, $array['filter'], $limit="3");                ?>                <?if(count($array['content']['content']) > 0){?>                    <?foreach($array['content']['content'] as $element => $val){?>                        <a href="/news/" class="ovziv-item">                            <div class="ovziv-item-text"><?=$val['preview_desc']?></div>                        </a>                    <? } ?>                <? } ?>                <div style="clear: both;"></div>            </div>            <div class="ovziv-more"><a href="/news/">ВСЕ НОВОСТИ</a></div>        </div>    </div>    <script>        $(document).ready(function(){            $("input[name=otziv-news]:radio").change(function(){                if ($("#otziv-radio1").is(':checked')){                    document.getElementById("otziv-mainpage").style.display="block";                    document.getElementById("news-mainpage").style.display="none";                }else {                    document.getElementById("news-mainpage").style.display="block";                    document.getElementById("otziv-mainpage").style.display="none";                }            });        });    </script></div>