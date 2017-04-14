<div id="content">
    <div id="mainpage-action" style="z-index:0;">
        <a href="#" class="slider-pic" style="background-image:url( )/*tpa=http://www.arisushi.ru/upload/iblock/fc9/banner-14-fevralya.jpg*/;background-position: center center;">
            <form  action="javascript:void(null);" onsubmit="action_form(this)" class="slider_form" method="POST">
                <input type="text" name="name" class="slider_text_name" placeholder="Введите имя"/>
                <input type="text" name="telefon" class="slider_text_tel" placeholder="Введите телефон"/>
                <input type="hidden" name="tovar" value="10458"/>
                <input type="hidden" name="action" value="14 фев / 8 мар"/>
                <input type="hidden" name="go" value="Y"/>
                <input type="hidden" value="" name="ordercity" id="order-city" />
                <input type="submit" class="slider_submit" value="ПОЛУЧИТЬ ПОДАРОК"/>
            </form>
        </a>
        <a href="menu/birthday/index.htm" tppabs="http://www.arisushi.ru/menu/birthday/" class="slider-pic" style="backgroundimage:url(upload/iblock/494/action1.jpg)/*tpa=http://www.arisushi.ru/upload/iblock/494/action1.jpg*/;background-position: center center;">
        </a>
    </div>
    <script>
        $(function(){
            $("#mainpage-action").slidesjs({
                width: 1440,
                height:350,
                pagination: {
                    active: true,
                    effect: "slide"
                },

                navigation: {
                    active:false
                },

                play: {
                    active: false,
                    // [boolean] Generate the play and stop buttons.
                    // You cannot use your own buttons. Sorry.
                    effect: "slide",
                    // [string] Can be either "slide" or "fade".
                    interval: 3000,
                    // [number] Time spent on each slide in milliseconds.
                    auto: false,
                    // [boolean] Start playing the slideshow on load.
                    swap: false,
                    // [boolean] show/hide stop and play buttons
                    pauseOnHover: false,
                    // [boolean] pause a playing slideshow on hover
                    restartDelay: 3500
                    // [number] restart delay on inactive slideshow
                },

                play: {
                    active: true,
                    // [boolean] Generate the play and stop buttons.
                    // You cannot use your own buttons. Sorry.
                    effect: "slide",
                    // [string] Can be either "slide" or "fade".
                    interval: 3500,
                    // [number] Time spent on each slide in milliseconds.
                    auto: true,
                    // [boolean] Start playing the slideshow on load.
                    swap: false,
                    // [boolean] show/hide stop and play buttons
                    pauseOnHover: false,
                    // [boolean] pause a playing slideshow on hover
                    restartDelay: 3500
                    // [number] restart delay on inactive slideshow
                },

                callback: {
                    loaded: function(number) {
                        // Do something awesome!
                        // Passes start slide number
                    },
                    start: function(number) {

                    },
                    complete: function(number) {
                        // Do something awesome!
                        // Passes slide number at end of animation
                    }
                }


            });
            sjs = $('#mainpage-action').data('plugin_slidesjs');
            $('.slider_text_name').click( function(clickevent){ sjs.stop(); } );
            $('.slider_text_tel').click( function(clickevent){ sjs.stop(); } );
        });
    </script>
    <div id="mainpage-menu">
        <div style="margin-bottom: 20px;text-align: center;font-size: 15pt;">
            МЕНЮ ДОСТАВКИ
        </div>
        <div class='jcarousel'>
            <ul>
                <li>
                    <a class="menu-item-mainpage" href="menu/lean/index.htm" tppabs="http://www.arisushi.ru/menu/lean/">
                        <img alt="Постное меню" title="Постное меню" width="220" height="140" src="upload/iblock/258/grin_roll_1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/258/grin_roll_1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Постное меню
                        </div>
                        <div class="shadow-1">
                        </div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/lean/index.htm" tppabs="http://www.arisushi.ru/menu/lean/">
                        <img alt="Постное меню" title="Постное меню" width="220" height="140" src="upload/iblock/f19/grin_roll_1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/f19/grin_roll_1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Постное меню
                        </div>
                        <div class="shadow-1">
                        </div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Постное меню" title="Постное меню" width="220" height="140" src="upload/iblock/a1e/grin_roll_1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/a1e/grin_roll_1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Постное меню
                        </div>
                        <div class="shadow-1">
                        </div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/lean/index.htm" tppabs="http://www.arisushi.ru/menu/lean/">
                        <img alt="Постное меню" title="Постное меню" width="220" height="140" src="upload/iblock/e4b/grin_roll_1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/e4b/grin_roll_1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Постное меню
                        </div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Постное меню" title="Постное меню" width="220" height="140" src="upload/iblock/817/grin_roll_1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/817/grin_roll_1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Постное меню
                        </div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/chinese-boxes/index.htm" tppabs="http://www.arisushi.ru/menu/chinese-boxes/">
                        <img alt="Китайские коробочки" title="Китайские коробочки" width="220" height="140" src="upload/iblock/a06/korobochki.png" tppabs="http://www.arisushi.ru/upload/iblock/a06/korobochki.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Китайские коробочки
                        </div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/chinese-boxes/index.htm" tppabs="http://www.arisushi.ru/menu/chinese-boxes/">
                        <img alt="Китайские коробочки" title="Китайские коробочки" width="220" height="140" src="upload/iblock/ef1/korobochki.png" tppabs="http://www.arisushi.ru/upload/iblock/ef1/korobochki.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Китайские коробочки</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/chinese-boxes/index.htm" tppabs="http://www.arisushi.ru/menu/chinese-boxes/">
                        <img alt="Китайские коробочки" title="Китайские коробочки" width="220" height="140" src="upload/iblock/22c/korobochki.png" tppabs="http://www.arisushi.ru/upload/iblock/22c/korobochki.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Китайские коробочки</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы" title="Роллы" width="220" height="140" src="upload/iblock/66e/Arigato_2896.jpg" tppabs="http://www.arisushi.ru/upload/iblock/66e/Arigato_2896.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Роллы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/rolls/index.htm" tppabs="http://www.arisushi.ru/menu/rolls/">
                        <img alt="Роллы" title="Роллы" width="220" height="140" src="upload/iblock/89c/Arigato_2896.jpg" tppabs="http://www.arisushi.ru/upload/iblock/89c/Arigato_2896.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Роллы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы" title="Роллы" width="220" height="140" src="upload/iblock/891/Arigato_2896.jpg" tppabs="http://www.arisushi.ru/upload/iblock/891/Arigato_2896.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Роллы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/rolls/index.htm" tppabs="http://www.arisushi.ru/menu/rolls/">
                        <img alt="Суши и Роллы" title="Суши и Роллы" width="220" height="140" src="upload/iblock/ca3/sushi_rolly.png" tppabs="http://www.arisushi.ru/upload/iblock/ca3/sushi_rolly.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Суши и Роллы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/rolls/index.htm" tppabs="http://www.arisushi.ru/menu/rolls/">
                        <img alt="Роллы" title="Роллы" width="220" height="140" src="upload/iblock/7bd/Arigato_2896.jpg" tppabs="http://www.arisushi.ru/upload/iblock/7bd/Arigato_2896.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Роллы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты" title="Сеты" width="220" height="140" src="upload/iblock/48f/sety.png" tppabs="http://www.arisushi.ru/upload/iblock/48f/sety.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Сеты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets/index.htm" tppabs="http://www.arisushi.ru/menu/sets/">
                        <img alt="Сеты" title="Сеты" width="220" height="140" src="upload/iblock/7ef/sety.png" tppabs="http://www.arisushi.ru/upload/iblock/7ef/sety.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сеты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты" title="Сеты" width="220" height="140" src="upload/iblock/464/sety.png" tppabs="http://www.arisushi.ru/upload/iblock/464/sety.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Сеты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets/index.htm" tppabs="http://www.arisushi.ru/menu/sets/">
                        <img alt="Сеты" title="Сеты" width="220" height="140" src="upload/iblock/b9d/sety.png" tppabs="http://www.arisushi.ru/upload/iblock/b9d/sety.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Сеты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets/index.htm" tppabs="http://www.arisushi.ru/menu/sets/">
                        <img alt="Сеты" title="Сеты" width="220" height="140" src="upload/iblock/509/sety.png" tppabs="http://www.arisushi.ru/upload/iblock/509/sety.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Сеты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/birthday/index.htm" tppabs="http://www.arisushi.ru/menu/birthday/">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/446/skidka.png" tppabs="http://www.arisushi.ru/upload/iblock/446/skidka.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/35a/skidka.png" tppabs="http://www.arisushi.ru/upload/iblock/35a/skidka.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/birthday/index.htm" tppabs="http://www.arisushi.ru/menu/birthday/">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/2a5/skidka.png" tppabs="http://www.arisushi.ru/upload/iblock/2a5/skidka.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/45e/Сеты2.jpg" tppabs="http://www.arisushi.ru/upload/iblock/45e/Сеты2.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/47f/skidka.png" tppabs="http://www.arisushi.ru/upload/iblock/47f/skidka.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/birthday/index.htm" tppabs="http://www.arisushi.ru/menu/birthday/">
                        <img alt="Сеты Именинникам" title="Сеты Именинникам" width="220" height="140" src="upload/iblock/159/skidka.png" tppabs="http://www.arisushi.ru/upload/iblock/159/skidka.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Сеты Именинникам</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/deserts/index.htm" tppabs="http://www.arisushi.ru/menu/deserts/">
                        <img alt="Десерты и Напитки" title="Десерты и Напитки" width="220" height="140" src="upload/iblock/7eb/deserty_napitki.png" tppabs="http://www.arisushi.ru/upload/iblock/7eb/deserty_napitki.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Десерты и Напитки</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets-discont/index.htm" tppabs="http://www.arisushi.ru/menu/sets-discont/">
                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="upload/iblock/853/sety_aktsiya.png" tppabs="http://www.arisushi.ru/upload/iblock/853/sety_aktsiya.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Сеты Акция*</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets-discont/index.htm" tppabs="http://www.arisushi.ru/menu/sets-discont/">
                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="upload/iblock/ebf/sety_aktsiya.png" tppabs="http://www.arisushi.ru/upload/iblock/ebf/sety_aktsiya.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сеты Акция*</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="upload/iblock/c11/sety_aktsiya.png" tppabs="http://www.arisushi.ru/upload/iblock/c11/sety_aktsiya.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Сеты Акция*</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sets-discont/index.htm" tppabs="http://www.arisushi.ru/menu/sets-discont/">
                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="upload/iblock/9a2/sety_aktsiya.png" tppabs="http://www.arisushi.ru/upload/iblock/9a2/sety_aktsiya.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Сеты Акция*</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты Акция*" title="Сеты Акция*" width="220" height="140" src="upload/iblock/df1/sety_aktsiya.png" tppabs="http://www.arisushi.ru/upload/iblock/df1/sety_aktsiya.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Сеты Акция*</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/salad/index.htm" tppabs="http://www.arisushi.ru/menu/salad/">
                        <img alt="Салаты" title="Салаты" width="220" height="140" src="upload/iblock/279/salaty.png" tppabs="http://www.arisushi.ru/upload/iblock/279/salaty.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Салаты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Салаты" title="Салаты" width="220" height="140" src="upload/iblock/42b/salaty.png" tppabs="http://www.arisushi.ru/upload/iblock/42b/salaty.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Салаты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/salad/index.htm" tppabs="http://www.arisushi.ru/menu/salad/">
                        <img alt="Салаты" title="Салаты" width="220" height="140" src="upload/iblock/2af/salaty.png" tppabs="http://www.arisushi.ru/upload/iblock/2af/salaty.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Салаты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Салаты" title="Салаты" width="220" height="140" src="upload/iblock/0d0/salaty.png" tppabs="http://www.arisushi.ru/upload/iblock/0d0/salaty.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Салаты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/salad/index.htm" tppabs="http://www.arisushi.ru/menu/salad/">
                        <img alt="Салаты" title="Салаты" width="220" height="140" src="upload/iblock/48b/salaty.png" tppabs="http://www.arisushi.ru/upload/iblock/48b/salaty.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Салаты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/pizza/index.htm" tppabs="http://www.arisushi.ru/menu/pizza/">
                        <img alt="Пицца" title="Пицца" width="220" height="140" src="upload/iblock/3c5/pitstsa-v-razdel-menyu.jpg" tppabs="http://www.arisushi.ru/upload/iblock/3c5/pitstsa-v-razdel-menyu.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Пицца</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Пицца по-японски" title="Пицца по-японски" width="220" height="140" src="upload/iblock/b02/ 1.jpg" tppabs="http://www.arisushi.ru/upload/iblock/b02/ 1.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Пицца по-японски</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/sous/index.htm" tppabs="http://www.arisushi.ru/menu/sous/">
                        <img alt="Соусы" title="Соусы" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Соусы</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Завтраки" title="Завтраки" width="220" height="140" src="upload/iblock/c2b/.png" tppabs="http://www.arisushi.ru/upload/iblock/c2b/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Завтраки</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/garnir/index.htm" tppabs="http://www.arisushi.ru/menu/garnir/">
                        <img alt="Гарниры" title="Гарниры" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Гарниры</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Шашлычки по-японски" title="Шашлычки по-японски" width="220" height="140" src="upload/iblock/3b4/.png" tppabs="http://www.arisushi.ru/upload/iblock/3b4/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Шашлычки по-японски</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Пицца на слоеном тесте" title="Пицца на слоеном тесте" width="220" height="140" src="upload/iblock/6b2/.png" tppabs="http://www.arisushi.ru/upload/iblock/6b2/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Пицца на слоеном тесте</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/nsk/index.htm" tppabs="http://www.arisushi.ru/menu/nsk/">
                        <img alt="Новосибирск" title="Новосибирск" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Новосибирск</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты на жасминовом рисе" title="Сеты на жасминовом рисе" width="220" height="140" src="upload/iblock/c9b/9.png" tppabs="http://www.arisushi.ru/upload/iblock/c9b/9.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Сеты на жасминовом рисе</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/nvk/index.htm" tppabs="http://www.arisushi.ru/menu/nvk/">
                        <img alt="Новокузнецк" title="Новокузнецк" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Новокузнецк</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/krsk/index.htm" tppabs="http://www.arisushi.ru/menu/krsk/">
                        <img alt="Красноярск" title="Красноярск" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Красноярск</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сладкая пицца" title="Сладкая пицца" width="220" height="140" src="upload/iblock/b02/74.png" tppabs="http://www.arisushi.ru/upload/iblock/b02/74.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сладкая пицца</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/brnl/index.htm" tppabs="http://www.arisushi.ru/menu/brnl/">
                        <img alt="Барнаул" title="Барнаул" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Барнаул</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы на жасминовом рисе" title="Роллы на жасминовом рисе" width="220" height="140" src="upload/iblock/1c6/10.png" tppabs="http://www.arisushi.ru/upload/iblock/1c6/10.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Роллы на жасминовом рисе</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/kem/index.htm" tppabs="http://www.arisushi.ru/menu/kem/">
                        <img alt="Кемерово" title="Кемерово" width="220" height="140" src=""/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Кемерово</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы теплые" title="Роллы теплые" width="220" height="140" src="upload/iblock/201/DSC_0328.jpg" tppabs="http://www.arisushi.ru/upload/iblock/201/DSC_0328.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Роллы теплые</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Надежда на чудо! Поможем вместе!" title="Надежда на чудо! Поможем вместе!" width="220" height="140" src="upload/iblock/bb1/CABH4N8Y.jpg" tppabs="http://www.arisushi.ru/upload/iblock/bb1/CABH4N8Y.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Надежда на чудо! Поможем вместе!</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы на жасминовом рисе" title="Роллы на жасминовом рисе" width="220" height="140" src="upload/iblock/914/10.png" tppabs="http://www.arisushi.ru/upload/iblock/914/10.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Роллы на жасминовом рисе</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Пицца по-японски" title="Пицца по-японски" width="220" height="140" src="upload/iblock/5ea/.jpg" tppabs="http://www.arisushi.ru/upload/iblock/5ea/.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Пицца по-японски</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сеты на жасминовом рисе" title="Сеты на жасминовом рисе" width="220" height="140" src="upload/iblock/7e5/9.png" tppabs="http://www.arisushi.ru/upload/iblock/7e5/9.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сеты на жасминовом рисе</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы теплые" title="Роллы теплые" width="220" height="140" src="upload/iblock/6cd/DSC_0328.jpg" tppabs="http://www.arisushi.ru/upload/iblock/6cd/DSC_0328.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Роллы теплые</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Пицца на слоеном тесте" title="Пицца на слоеном тесте" width="220" height="140" src="upload/iblock/2f6/.png" tppabs="http://www.arisushi.ru/upload/iblock/2f6/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Пицца на слоеном тесте</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы запеченные" title="Роллы запеченные" width="220" height="140" src="upload/iblock/ae0/4.jpg" tppabs="http://www.arisushi.ru/upload/iblock/ae0/4.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Роллы запеченные</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Сладкая пицца" title="Сладкая пицца" width="220" height="140" src="upload/iblock/4c0/74.png" tppabs="http://www.arisushi.ru/upload/iblock/4c0/74.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Сладкая пицца</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Завтраки" title="Завтраки" width="220" height="140" src="upload/iblock/e0a/.png" tppabs="http://www.arisushi.ru/upload/iblock/e0a/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Завтраки</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Паста" title="Паста" width="220" height="140" src="upload/iblock/b88/15.png" tppabs="http://www.arisushi.ru/upload/iblock/b88/15.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Паста</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Шашлычки по-японски" title="Шашлычки по-японски" width="220" height="140" src="upload/iblock/c61/.png" tppabs="http://www.arisushi.ru/upload/iblock/c61/.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Шашлычки по-японски</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Паста" title="Паста" width="220" height="140" src="upload/iblock/041/15.png" tppabs="http://www.arisushi.ru/upload/iblock/041/15.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Паста</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Роллы запеченные" title="Роллы запеченные" width="220" height="140" src="upload/iblock/dee/4.jpg" tppabs="http://www.arisushi.ru/upload/iblock/dee/4.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Роллы запеченные</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Горячее" title="Горячее" width="220" height="140" src="upload/iblock/ee1/Горячее.jpg" tppabs="http://www.arisushi.ru/upload/iblock/ee1/Горячее.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Горячее</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/hots/index.htm" tppabs="http://www.arisushi.ru/menu/hots/">
                        <img alt="Горячее" title="Горячее" width="220" height="140" src="upload/iblock/5d6/Горячее.jpg" tppabs="http://www.arisushi.ru/upload/iblock/5d6/Горячее.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Горячее</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Горячее" title="Горячее" width="220" height="140" src="upload/iblock/b1f/Горячее.jpg" tppabs="http://www.arisushi.ru/upload/iblock/b1f/Горячее.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Горячее</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/hots/index.htm" tppabs="http://www.arisushi.ru/menu/hots/">
                        <img alt="Супы и Горячее" title="Супы и Горячее" width="220" height="140" src="upload/iblock/37c/goryachee_supy.png" tppabs="http://www.arisushi.ru/upload/iblock/37c/goryachee_supy.png"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Супы и Горячее</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/hots/index.htm" tppabs="http://www.arisushi.ru/menu/hots/">
                        <img alt="Горячее" title="Горячее" width="220" height="140" src="upload/iblock/3df/Горячее.jpg" tppabs="http://www.arisushi.ru/upload/iblock/3df/Горячее.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Горячее</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/deserts/index.htm" tppabs="http://www.arisushi.ru/menu/deserts/">
                        <img alt="Десерты" title="Десерты" width="220" height="140" src="upload/iblock/521/Десерт.jpg" tppabs="http://www.arisushi.ru/upload/iblock/521/Десерт.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#dc3209;background: linear-gradient(to right, #dc3209, #e8b631);">
                            Десерты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Десерты" title="Десерты" width="220" height="140" src="upload/iblock/866/Десерт.jpg" tppabs="http://www.arisushi.ru/upload/iblock/866/Десерт.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#7fb84a;background: linear-gradient(to right, #7fb84a, #d2f242);">
                            Десерты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/deserts/index.htm" tppabs="http://www.arisushi.ru/menu/deserts/">
                        <img alt="Десерты" title="Десерты" width="220" height="140" src="upload/iblock/d02/Десерт.jpg" tppabs="http://www.arisushi.ru/upload/iblock/d02/Десерт.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#6023df;background: linear-gradient(to right, #6023df, #af30dc);">
                            Десерты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
                <li>
                    <a class="menu-item-mainpage" href="menu/index.htm" tppabs="http://www.arisushi.ru/menu//">
                        <img alt="Десерты" title="Десерты" width="220" height="140" src="upload/iblock/798/Десерт.jpg" tppabs="http://www.arisushi.ru/upload/iblock/798/Десерт.jpg"/>
                        <div class="menu-item-mainpage-name" style="background-color:#4463dd;background: linear-gradient(to right, #4463dd, #6bb9e0);">
                            Десерты</div>
                        <div class="shadow-1"></div>
                    </a>
                </li>
            </ul>
            <div style="clear: both;">
            </div>
            <a href="#" id="jcarousel-control-prev" style="display: none;"></a>
            <a href="#" id="jcarousel-control-next" style="display: none;"></a>
        </div>
    </div>
    <script>
        (function($) {
            $(function() {
                var jcarousel = $('.jcarousel');
                jcarousel
                    .on('jcarousel:reload jcarousel:create',
                        function () {
                            var width = jcarousel.innerWidth();
                            if (width >= 600) {
                                width = width / 3;
                            } else if (width >= 350) {
                                width = width / 2;}
                        }
                    )
                    .jcarousel({
                        wrap: 'circular'
                    });

                $('#jcarousel-control-prev')
                    .jcarouselControl({
                        target: '-=1'
                    });

                $('#jcarousel-control-next')
                    .jcarouselControl({
                        target: '+=1'
                    });

                $('.jcarousel-pagination')
                    .on('jcarouselpagination:active', 'a', function() {
                        $(this).addClass('active');
                    })
                    .on('jcarouselpagination:inactive', 'a', function() {
                        $(this).removeClass('active');
                    })
                    .on('click', function(e) {
                        e.preventDefault();
                    })
                    .jcarouselPagination({
                        perPage: 1,
                        item: function(page) {
                            return '<a href="#' + page + '">' + page + '</a>';
                        }
                    });
            });
        })(jQuery);
        $("#mainpage-menu").hover(
            function()
            {
                $('#jcarousel-control-next').fadeIn();
                $('#jcarousel-control-prev').fadeIn();
            }
        )
        $("#mainpage-menu").mouseleave
        (
            function() {
                $('#jcarousel-control-next').fadeOut();
                $('#jcarousel-control-prev').fadeOut();
            }
        )
    </script>
    <div class="mainpage-select-topline">
    </div>
    <div id="mainpage-select">
        <div class="mainpage-select-title">
            ПОЧЕМУ ВЫБИРАЮТ АРИГАТО?
        </div>
        <div class="mainpage-select-items">
            <div class="mainpage-select-item">
                <img src="img/select/pic1.png" tppabs="http://www.arisushi.ru/img/select/pic1.png"/>
                <div class="mainpage-select-item-title">
                    Соус, васаби, имбирь - БЕСПЛАТНО, ВСЕГДА!
                </div>
                <div class="mainpage-select-item-desc">
                    Мы всегда собираем для Вас бесплатный комплект васаби, имбиря и соевого соуса.
                </div>
            </div>
            <div class="mainpage-select-item">
                <img src="img/select/pic2.png" tppabs="http://www.arisushi.ru/img/select/pic2.png"/>
                <div class="mainpage-select-item-title" style="top: 102px;right: 15px;">
                    БОЛЬШЕ НАЧИНКИ!
                </div>
                <div class="mainpage-select-item-desc" style="right: 6px;">
                    Вопреки всем импортным запретам мы увеличили количество сыра и рыбы в роллах в два раза!
                </div>
            </div>
            <div class="mainpage-select-item">
                <img src="img/select/pic3.png" tppabs="http://www.arisushi.ru/img/select/pic3.png"/>
                <div class="mainpage-select-item-title" style="top: 107px;right: 7px;">
                    НАКОПИТЕЛЬНЫЙ СЧЕТ
                </div>
                <div class="mainpage-select-item-desc" style="right: 5px;">
                    С каждым заказом Вы накапливаете 10% от суммы заказа на Ваш счет, в дальнейшем Вы сможете рассчитаться накопленными баллами за заказ.
                </div>
            </div>
            <div class="mainpage-select-item">
                <img src="img/select/pic4.png" tppabs="http://www.arisushi.ru/img/select/pic4.png"/>
                <div class="mainpage-select-item-title" style="top: 105px;right: 17px;">
                    БЕЗНАЛИЧНЫЙ РАСЧЕТ
                </div>
                <div class="mainpage-select-item-desc" style="right: 13px;">
                    Достаточно сообщить оператору о желании рассчитаться банковской картой и наш курьер приедет к Вам с переносным терминалом.
                </div>
            </div>
            <div class="mainpage-select-item">
                <img src="img/select/pic5.png" tppabs="http://www.arisushi.ru/img/select/pic5.png"/>
                <div class="mainpage-select-item-title" style="top: 97px;right: 13px;">
                    ПОДАРКИ С КАЖДЫМ ЗАКАЗОМ
                </div>
                <div class="mainpage-select-item-desc" style="right: 5px;">
                    С каждым заказом мы будем удивлять Вас приятными подарками.
                </div>
            </div>
            <div class="mainpage-select-item">
                <img src="img/select/pic6.png" tppabs="http://www.arisushi.ru/img/select/pic6.png"/>
                <div class="mainpage-select-item-title" style="top: 107px;right: 7px;">
                    САМЫЕ ВКУСНЫЕ СУШИ!
                </div>
                <div class="mainpage-select-item-desc" style="right: 5px;">
                    Мы уже более 10 лет радуем Вас вкусными блюдами Японской кухни, благодаря огромному опыту и слаженной команде ежегодно получаем сертификат "Самые вкусные суши в Сибири!"
                </div>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>
    <div class="mainpage-select-bottomline">
    </div>
    <div id="ovziv-news">
        <div id="ovziv-news-select">
            <input checked name="otziv-news" type="radio" value="otziv" id="otziv-radio1"/>
            <label for="otziv-radio1">
                Отзывы
            </label>
            <input name="otziv-news" type="radio" value="news" id="otziv-radio2"/>
            <label for="otziv-radio2"  style="margin-left: 78px;">
                Новости
            </label>
        </div>
        <div id="otziv-mainpage">
            <div id="ovziv-items">
                <div class="ovziv-item">
                    <div class="ovziv-item-text">
                        Попробовали заказать китайские коробочки с фунчозой и говядиной. Прикольные, мне понравились, буду пробовать и другие вкусы
                    </div>
                    <div class="ovziv-item-name">
                        Дмитрий
                    </div>
                </div>
                <div class="ovziv-item">
                    <div class="ovziv-item-text">
                        Живем в центре Барнаула на Красноармейском. На выходных&nbsp;&nbsp;заказывали роллы, т.к. не хотелось готовить, доставка прибыла буквально через 20 минут, очень удобно, еще и спросили с какой купюры сдачу приготовить. Отличный сервис!
                    </div>
                    <div class="ovziv-item-name">
                        Алексей
                    </div>
                </div>
                <div class="ovziv-item">
                    <div class="ovziv-item-text">Живем в Бердске, всегда заказываем суши в аригато. Быстро привозят и всегда вкусные роллы. Заказали сет именинник недавно – все наелись, очень вкусно и относительно недорого.</div>
                    <div class="ovziv-item-name">Ирина</div>
                </div>
                <div class="ovziv-item-add"  onclick="newreview()">Оставить отзыв</div>
                <div style="clear: both;"></div>
            </div>
            <div class="ovziv-more">
                <a href="company/reviews/index.htm" tppabs="http://www.arisushi.ru/company/reviews/">
                    ВСЕ ОТЗЫВЫ
                </a>
            </div>
        </div>
        <div id="news-mainpage" style="display: none;">
            <div id="news-items">
                <a href="company/news/9193/index.htm" tppabs="http://www.arisushi.ru/company/news/9193/" class="ovziv-item" >
                    <div class="ovziv-item-text">Новогодний сет от службы доставки Аригато за 999 рублей!<br />
                        Акция на новогодний сет от службы доставки Аригато.<br />
                        8 видов роллов: филадельфия с луком, футо маки, грин ролл и другие. <br />
                        Подробности уточняйте у операторов по телефону<br />
                        &#40;3852&#41; 223–222 или по адресу г.Барнаул,<br />
                        пр.Красноармейский, 72<br />
                        <br />
                        *предложение действительно на момент публикации 29.12.15</div>
                </a>
                <a href="company/news/9192/index.htm" tppabs="http://www.arisushi.ru/company/news/9192/" class="ovziv-item" >
                    <div class="ovziv-item-text">Не знаете что подарить на Новый Год?<br />
                        Подарочный сертификат службы доставки суши и роллов Аригато на 250, 500 и 1000 рублей. <br />
                        Проведите вечер в кругу друзей и близких!<br />
                        Аригато - для вечеринки - самое то!<br />
                        г. Барнаул, пр.Красноармейский 72,<br />
                        телефон доставки &#40;3852&#41; 223–222<br />
                        <br />
                        *предложение действительно на момент публикации 29.12.15</div>
                </a>
                <a href="company/news/9191/index.htm" tppabs="http://www.arisushi.ru/company/news/9191/" class="ovziv-item" >
                    <div class="ovziv-item-text">Порция роллов всего за 100 РУБЛЕЙ!<br />
                        Ролл дня - Шоколадный ролл - это сладкий ролл, обернутый яичным блинчиком.<br />
                        Внутри яркое сочетание фруктов &#40;банан, груша, киви&#41; и сливочного сыра.<br />
                        Подается с шоколадным сиропом.<br />
                        Сладкая вкуснятина...<br />
                        Заказывайте в службе доставки суши и роллов Аригато в Новосибирске по адресу<br />
                        ул. Вокзальная магистраль д.15 <br />
                        или по телефону &#40;383&#41; 299-28-82, <br />
                        а также в Бердске ул. Попова д. 9а,<br />
                        телефон 8-913-703-40-50<br />
                        <br />
                        *предложение действительно на момент публикации 29.12.15</div>

                </a>


                <a href="company/news/9190/index.htm" tppabs="http://www.arisushi.ru/company/news/9190/" class="ovziv-item" style="margin-right: 0px;">


                    <div class="ovziv-item-text">Ролл дня сегодня - Ацуй маки.<br />
                        Ролл с креветкой, огурцом, имбирем, кунжутом и ореховым соусом, обжаренный в кляре темпура 195 г. &#40;8 штук&#41; / 470 ккал всего за 100 рублей.<br />
                        Спешите заказать суши и роллы в службе доставки Аригато в Красноярске по адресу ул.Кирова 22 или ул.Металлургов 53 или по телефону &#40;391&#41; 205-00-60<br />
                        <br />
                        *предложение действительно на момент публикации 29.12.15</div>

                </a>





                <div style="clear: both;"></div>
            </div>

            <div class="ovziv-more"><a href="company/news/index.htm" tppabs="http://www.arisushi.ru/company/news/">ВСЕ НОВОСТИ</a></div>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $("input[name=otziv-news]:radio").change(function(){
                if ($("#otziv-radio1").is(':checked')){
                    document.getElementById("otziv-mainpage").style.display="block";
                    document.getElementById("news-mainpage").style.display="none";
                }else {
                    document.getElementById("news-mainpage").style.display="block";
                    document.getElementById("otziv-mainpage").style.display="none";
                }
            });
        });
    </script>
    <div style="position: relative; margin: 0 auto;width: 940px;margin-bottom: 35px;text-align: center;">
        <iframe width="750" height="400" src="https://www.youtube.com/embed/yoR0g7zP3b0" tppabs="https://www.youtube.com/embed/yoR0g7zP3b0" frameborder="0" allowfullscreen></iframe>
    </div>
</div>