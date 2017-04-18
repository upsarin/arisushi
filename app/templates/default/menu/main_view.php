<div id="content">




    <div id="menu">
        <div id="menu-list">
            <a href="/menu/chinese-boxes/" class="menu-list-item  newtag <?=($_SESSION['user']['cat_alias'] == "chinese-boxes") ? "active" : ""?>"><div class="menu-uf_new"></div>Китайские коробочки<div style="clear: both;"></div></a>
            <a href="/menu/rolls/" class="menu-list-item <?=($_SESSION['user']['cat_alias'] == "rolls" || !$_SESSION['user']['cat_alias']) ? "active" : ""?>">Суши и Роллы</a>
            <a href="/menu/sets/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "sets") ? "active" : ""?>">Сеты</a>
            <a href="/menu/birthday/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "birthday") ? "active" : ""?>">Сеты Именинникам</a>
            <a href="/menu/deserts/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "deserts") ? "active" : ""?>">Десерты и Напитки</a>
            <a href="/menu/sets-discont/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "sets-discont") ? "active" : ""?>">Сеты Акция*</a>
            <a href="/menu/salad/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "salad") ? "active" : ""?>">Салаты</a>
            <a href="/menu/hots/" class="menu-list-item  <?=($_SESSION['user']['cat_alias'] == "hots") ? "active" : ""?>">Супы и Горячее</a>
            <div style="clear: both;"></div>
        </div>


        <div id="menu-items">
            <?foreach($array['content']['content'] as $element){ ?>
                <div class="menu-item  losos filarolls hit ">
                    <div class="menu-item-inside" onselectstart="return false">
                        <div class="menu-item-inside-url">
                            <div class="menu-item-img">
                                <img src="/upload/iblock/72e/filadelfiya_1.jpg" width="220" height="147" alt="Филадельфия" title="Филадельфия">
                                <div class="menu-tags">
                                    <!--<div class="menu-hit">ХИТ</div>-->
                                    <div style="clear: both;"></div>
                                </div>
                            </div>

                            <div class="menu-item-one">
                                <div class="menu-item-name"><?=$element['title']?></div>
                                <div class="menu-item-text"><?=$element['desc']?></div>
                                <?if($element['old_price'] != ""){ ?>
                                    <div class="menu-item-old-price"><?=$element['old_price']?> руб.</div>
                                <? } ?>
                                <div data-price="299" class="menu-item-price "><?=$element['price']?> руб.</div>
                            </div>
                            <?if($element['half'] == "y") { ?>
                                <div class="menu-item-one-half" style="display: none;">
                                    <div class="menu-item-name"><?=$element['title']?> 1/2</div>
                                    <div class="menu-item-text"><?=$element['desc']?></div>
                                    <div class="menu-item-price"><?=$element['half-price']?> руб.</div>
                                </div>
                            <? } ?>
                        </div>
                        <?if($element['half'] == "y") { ?>
                            <div class="menu-select">
                                <select name="select" class="menu-select-razmer">
                                    <option value="1">порция</option>
                                    <option value="1/2">половина порции</option>
                                </select>
                                <a class="menu-select-razmer-bot"></a>
                            </div>
                        <? } ?>
                        <div class="pb-pop-controls-one">
                            <div class="pb-pop-controls">

                                <span class="pb-pop-c-dec pb-pop-c-inactive" onclick="dec_tovar(this,'');"></span>
                                <div class="plus-minus-count"><b id="d2830">

                                        0

                                    </b></div>
                                <span class="pb-pop-c-inc pb-pop-c-inc-catalog" onclick="add_tovar(this,'2830','');"></span>
                                <div style="clear: both;"></div>
                            </div>
                        </div>

                        <div class="pb-pop-controls-one-half" style="display: none;">
                            <div class="pb-pop-controls">

                                <span class="pb-pop-c-dec pb-pop-c-inactive" onclick="dec_tovar(this,'');"></span>
                                <div class="plus-minus-count"><b id="d6280">

                                        0

                                    </b></div>
                                <span class="pb-pop-c-inc pb-pop-c-inc-catalog" onclick="add_tovar(this,'6280');"></span>
                                <div style="clear: both;"></div>
                            </div>
                        </div>


                    </div>
            </div>
            <? } ?>



            <div style="clear: both;width: 20px;"></div>

        </div>










        <div style="text-align: center; font-size: 13px;line-height: 150%;margin-bottom: 20px;">
            Заказать суши и роллы Вы можете в службе доставки еды Кампай. Доставка еды на дом или в офис. Меню суши представлено службой доставки Кампай.</div> </div>
</div>