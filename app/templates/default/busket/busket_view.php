<style>
    .header-menu-line {
        display: none;
    }
</style>
<? if($_SESSION['user']['summ'] > 0) {?>
    <div id="order-page" style="min-height: 22%;">
        <div class="order-zagol">ОФОРМЛЕНИЕ ЗАКАЗА</div>
        <div id="order-right">
            <div class="order-youorder">Ваш заказ:</div>
            <?
                $free = 0;
            ?>
            <?foreach($_SESSION['user']['busket']['full'] as $element => $val){
                if($val['count'] > 0){
                    $filter = array("content_id" => $val['elementId']);
                    $images = Element::SelectAll('files', $filter, null, null);
                    if($val['free'] > 0){
                        $free = $free + ($val['free']*$val['count']);
                    }
                    ?>
                    <div class="basket-popup-item" id="<?=$val['elementId']?>">
                        <div class="basket-popup-item-img-price">
                            <div class="basket-popup-item-img"><img src="/<?=$images[0]['path']?>" style="width: 60px"></div>
                            <div class="basket-popup-item-price"><?=$val['price']?> руб.</div>
                        </div>
                        <div class="basket-popup-item-name">
                            <div class="basket-popup-item-name-text"><?=$val['name']?>
                                <? if($val['cat'] == "8" && ($val['garnir'] != "" && $val['sous'] != "")){ ?>
                                    (<?=$val['garnir']?> | <?=$val['sous']?>)
                                <? } ?>
                            </div>
                            <div class="basket-popup-item-name-porc"><?=($val['cat'] == "16") ? $val['weight'] : "полная порция"?></div>
                            <div class="pb-pop-controls-one" style="position: relative;top:8px;">
                                <div class="pb-pop-controls pb-pop-controls-order">
                                    <span class="pb-pop-c-dec pb-pop-c-dec-specii minus-one" id="<?=$val['elementId']?>"></span>
                                    <div class="plus-minus-count plus-minus-count-order">
                                        <b id="popup-<?$val['elementId']?>"><?=$val['count']?></b>
                                    </div>
                                    <span class="pb-pop-c-inc pb-pop-c-inc-specii plus-one" id="<?=$val['elementId']?>"></span>
                                    <div style="clear: both;"></div>
                                </div>
                                <div class="sum-of-items-container">
                                    <div style="float:left">=</div>
                                    <div class="sum-of-items" id="popup-sum1011055" style="padding-left: 10px;float:left;font-size: 10pt;font-weight: bold;padding-top: 3px;"><?=($val['price'] * $val['count'])?></div>
                                    <div class="ruble">РУБ</div>
                                    <div style="clear: both;"></div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                <? } ?>
            <? } ?>
            <?foreach($_SESSION['user']['busket']['half'] as $element => $val){
                if($val['count'] > 0){
                    $filter = array("content_id" => $val['elementId']);
                    $images = Element::SelectAll('files', $filter, null, null);
                    if($val['free'] > 0){
                        $free = $free + $val['free'];
                    }
                    ?>
                    <div class="basket-popup-item" id="<?=$val['elementId']?>">
                        <div class="basket-popup-item-img-price">
                            <div class="basket-popup-item-img"><img src="/<?=$images[0]['path']?>" style="width: 60px"></div>
                            <div class="basket-popup-item-price"><?=$val['price']?> руб.</div>
                        </div>
                        <div class="basket-popup-item-name">
                            <div class="basket-popup-item-name-text"><?=$val['name']?>
                                <? if($val['cat'] == "8" && ($val['garnir'] != "" && $val['sous'] != "")){ ?>
                                    (<?=$val['garnir']?> | <?=$val['sous']?>)
                                <? } ?>
                            </div>
                            <div class="basket-popup-item-name-porc"><?=($val['cat'] == "16") ? $val['weight'] : "1/2 порция"?></div>
                            <div class="pb-pop-controls-one" style="position: relative;top:8px;">
                                <div class="pb-pop-controls pb-pop-controls-order">
                                    <span class="pb-pop-c-dec pb-pop-c-dec-specii minus-half" id="<?=$val['elementId']?>"></span>
                                    <div class="plus-minus-count plus-minus-count-order">
                                        <b id="popup-<?$val['elementId']?>"><?=$val['count']?></b>
                                    </div>
                                    <span class="pb-pop-c-inc pb-pop-c-inc-specii plus-half" id="<?=$val['elementId']?>"></span>
                                    <div style="clear: both;"></div>
                                </div>
                                <div class="sum-of-items-container">
                                    <div style="float:left">=</div>
                                    <div class="sum-of-items" id="popup-sum1011055" style="padding-left: 10px;float:left;font-size: 10pt;font-weight: bold;padding-top: 3px;"><?=($val['price'] * $val['count'])?></div>
                                    <div class="ruble">РУБ</div>
                                    <div style="clear: both;"></div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                <? } ?>
            <? } ?>
            <input type="hidden" value="<?=$free?>" id="free" />
            <div style="margin-top:20px;" class="order-youorder">К заказу бесплатно прилагается:</div>
            <div class="basket-popup-item item171">
                <div class="basket-popup-item-img-price">
                    <div class="basket-popup-item-img"><img src="/images/vasabi.png" 349="" width="60" height="40"></div>
                    <div class="basket-popup-item-price">15 руб.</div>
                </div>

                <div class="basket-popup-item-name">
                    <div class="basket-popup-item-name-text">Васаби</div>
                    <div class="basket-popup-item-name-porc">бесплатные порции</div>

                    <div class="pb-pop-controls-one" style="position: relative;top:8px;">
                        <div class="pb-pop-controls pb-pop-controls-order">

                            <span class="pb-pop-c-dec pb-pop-c-dec-specii minus-one" id="vasabi"></span>
                            <div class="plus-minus-count plus-minus-count-order">
                                <b id="popup-vasabi" class="specii">
                                    <?if($_SESSION['user']['busket']['adds']['vasabi']){?>
                                        <?=$free + $_SESSION['user']['busket']['adds']['vasabi']['count'];?>
                                    <?} else {?>
                                        <?=$free?>
                                    <? } ?>
                                </b>
                            </div>
                            <span class="pb-pop-c-inc pb-pop-c-inc-specii plus-one" id="vasabi"></span>


                            <div style="clear: both;"></div>
                        </div>

                        <div class="sum-of-items-container">
                            <div style="float:left">=</div>
                            <div class="sum-of-items" id="popup-sum171" style="padding-left: 10px;float:left;font-size: 10pt;font-weight: bold;padding-top: 3px;"><?=($_SESSION['user']['busket']['adds']['vasabi']['count']>0) ? $_SESSION['user']['busket']['adds']['vasabi']['count']*15 : "0"?></div>
                            <div class="ruble">РУБ</div>
                            <div style="clear: both;"></div>
                        </div>

                    </div>

                </div>



                <div style="clear: both;"></div>
            </div>
            <div class="basket-popup-item item172">
                <div class="basket-popup-item-img-price">
                    <div class="basket-popup-item-img"><img src="/images/sause.png" 351="" width="60" height="40"></div>
                    <div class="basket-popup-item-price">15 руб.</div>

                </div>

                <div class="basket-popup-item-name">
                    <div class="basket-popup-item-name-text">Соевый соус</div>
                    <div class="basket-popup-item-name-porc">бесплатные порции</div>

                    <div class="pb-pop-controls-one" style="position: relative;top:8px;">
                        <div class="pb-pop-controls pb-pop-controls-order">

                            <span class="pb-pop-c-dec pb-pop-c-dec-specii minus-one" id="sous"></span>
                            <div class="plus-minus-count plus-minus-count-order">
                                <b id="popup-sous" class="specii">
                                    <?if($_SESSION['user']['busket']['adds']['sous']){?>
                                        <?=$free + $_SESSION['user']['busket']['adds']['sous']['count'];?>
                                    <?} else {?>
                                        <?=$free?>
                                    <? } ?>
                                </b>
                            </div>
                            <span class="pb-pop-c-inc pb-pop-c-inc-specii plus-one" id="sous"></span>


                            <div style="clear: both;"></div>
                        </div>

                        <div class="sum-of-items-container">
                            <div style="float:left">=</div>
                            <div class="sum-of-items" id="popup-sum172" style="padding-left: 10px;float:left;font-size: 10pt;font-weight: bold;padding-top: 3px;"><?=($_SESSION['user']['busket']['adds']['sous']['count']>0) ? $_SESSION['user']['busket']['adds']['sous']['count']*15 : "0"?></div>
                            <div class="ruble">РУБ</div>
                            <div style="clear: both;"></div>
                        </div>

                    </div>

                </div>



                <div style="clear: both;"></div>
            </div>
            <div class="basket-popup-item item173">
                <div class="basket-popup-item-img-price">
                    <div class="basket-popup-item-img"><img src="/images/ginger.png" 350="" width="60" height="40"></div>
                    <div class="basket-popup-item-price">15 руб.</div>

                </div>

                <div class="basket-popup-item-name">
                    <div class="basket-popup-item-name-text">Имбирь</div>
                    <div class="basket-popup-item-name-porc">бесплатные порции</div>

                    <div class="pb-pop-controls-one" style="position: relative;top:8px;">
                        <div class="pb-pop-controls pb-pop-controls-order">

                            <span class="pb-pop-c-dec pb-pop-c-dec-specii minus-one" id="imbir"></span>
                            <div class="plus-minus-count plus-minus-count-order">
                                <b id="popup-imbir" class="specii">
                                    <?if($_SESSION['user']['busket']['adds']['imbir']){?>
                                        <?=$free + $_SESSION['user']['busket']['adds']['imbir']['count'];?>
                                    <?} else {?>
                                        <?=$free?>
                                    <? } ?>
                                </b></div>
                            <span class="pb-pop-c-inc pb-pop-c-inc-specii plus-one" id="imbir"></span>


                            <div style="clear: both;"></div>
                        </div>

                        <div class="sum-of-items-container">
                            <div style="float:left">=</div>
                            <div class="sum-of-items" id="popup-sum173" style="padding-left: 10px;float:left;font-size: 10pt;font-weight: bold;padding-top: 3px;"><?=($_SESSION['user']['busket']['adds']['imbir']['count']>0) ? $_SESSION['user']['busket']['adds']['imbir']['count']*15 : "0"?></div>
                            <div class="ruble">РУБ</div>
                            <div style="clear: both;"></div>
                        </div>

                    </div>

                </div>



                <div style="clear: both;"></div>
            </div>
        </div>
        <div id="order-left">
            <form class="order" action="" method="POST" name="iblock_add" id="order-form">
                <div>
                    <div style="float: left;margin-right:20px;">
                        <label for="order-name">Имя</label>
                        <input type="text" name="name" class="textInput idleField" id="order-name">
                    </div>
                    <div style="float: left;">
                        <label for="order-tel">Телефон</label>
                        <input type="text" name="tel" class="textInput idleField" id="order-tel">
                    </div>
                    <div style="clear: both;"></div>
                    <div style="float: left;margin-right:20px;">
                        <label for="order-nodelivery" name="nodelivery" class="lb">
                        <input type="checkbox" name="nodelivery" value="без" id="order-nodelivery"> Без доставки, скидка 10%</label>
                    </div>
                    <div style="clear: both;"></div>
                    <div id="order-delivery-block" style="display: none;">
                        <label for="delivery-select" name="nodelivery-adress" class="lb">Адрес самовывоза:</label>
                        <div id="order-delivery-adress">
                            <select name="delivery-select" class="menu-select-delivery">
                                <option value="г. Бердск, ул. Попова, д. 9а">г. Бердск, ул. Попова, д. 9а</option>
                            </select>
                        </div>
                        <div class="order-delivery-discont">* Скидка  10 % предоставляется на сумму, не включающую стоимость напитков</div>
                    </div>
                    <div style="float: left;margin-right:20px;" class="order-streetbox">
                        <label for="order-street">Улица</label>
                        <input type="text" name="street" class="textInput idleField" id="order-street">
                    </div>
                    <div style="float: left;" class="order-streetbox">
                        <div style="padding-top: 0px;">
                            <div style="float: left;margin-right: 20px;">
                                <label for="order-house">Дом</label>
                                <input type="text" name="house" class="textInput idleField" id="order-house">
                            </div>
                            <div style="float: left;">
                                <label for="order-office">Квартира/офис</label>
                                <input type="text" name="office" class="textInput idleField" id="order-office">
                            </div>
                            <div style="clear: both;"></div>
                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div style="float: left;margin-right:20px;">
                        <label for="order-date">Дата доставки</label>
                        <input type="text" name="date" class="textInput idleField" id="order-date">
                    </div>
                    <div style="float: left;">
                        <label for="order-time">Время доставки</label>
                        <input type="text" name="time" class="textInput idleField" id="order-time">
                    </div>
                    <div style="clear: both;"></div>
                    <label for="order-comment">Комментарий к заказу</label>
                    <textarea id="order-comment" class="textInput" name="comment" placeholder="Например: дата доставки, время доставки, № подъезда, сдача с крупной купюры"></textarea>
                </div>
                <div>
                    <div style="float: left;min-width: 280px;">
                        <div id="order-allsum"><?=$_SESSION['user']['summ']?></div>
                        <div style="font-size: 36pt;float:left;margin-left: 20px;">РУБ.</div>
                        <div style="clear: both;"></div>

                    </div>
                    <input type="hidden" name="go" value="Y">
                    <input type="hidden" name="ordercity" value="nsk">
                    <div id="order-botton"><input type="submit" value="ОФОРМИТЬ"></div>
                    <div style="clear: both;"></div>
                </div>

            </form>
        </div>
        <div style="clear: both;"></div>
    </div>
<? } else { ?>
    <div id="order-page" style="min-height: 22%;">
        Корзина пуста
    </div>
<? } ?>
<script>
    $(document).ready(function(){

        $("#order-form").submit(function(){
            data = $("#order-form").serialize();
            $.ajax({
                url: "/ajax/busket_submit.php",
                type: "POST",
                data: data,
                success: function (html) {
                    $("#order-page").html(html);
                }
            });
            console.log("submit");
            return false;
        });
        function sendProductToBusket(elementId,sizeName){
            data = "elementId="+elementId+"&sizeName="+sizeName+"&action=add";
            $.ajax({
                url: "/ajax/busket_view.php",
                type: "POST",
                data: data,
                success: function(html){
                    $("#order-right").html(html);
                    $(".pb-pop-c-inc-specii.plus-one").click(function(){
                        var elementId = this.id;
                        var sizeName = "full";
                        sendProductToBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-dec-specii.minus-one").click(function(){
                        var elementId = this.id;
                        var sizeName = "full";
                        var freeEl = $("#free").val();
                        deleteProductFromBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-inc-specii.plus-half").click(function(){
                        var elementId = this.id;
                        var sizeName = "half";
                        sendProductToBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-dec-specii.minus-half").click(function(){
                        var elementId = this.id;
                        var sizeName = "half";
                        deleteProductFromBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $("#order-allsum").html($("#session_summ").val());
                }
            });
        }
        function deleteProductFromBusket(elementId,sizeName){
            data = "elementId="+elementId+"&sizeName="+sizeName+"&action=delete";
            $.ajax({
                url: "/ajax/busket_view.php",
                type: "POST",
                data: data,
                success: function(html){
                    $("#order-right").html(html);
                    $(".pb-pop-c-inc-specii.plus-one").click(function(){
                        var elementId = this.id;
                        var sizeName = "full";
                        sendProductToBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-dec-specii.minus-one").click(function(){
                        var elementId = this.id;
                        var sizeName = "full";

                        var freeEl = $("#free").val();
                        deleteProductFromBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-inc-specii.plus-half").click(function(){
                        var elementId = this.id;
                        var sizeName = "half";
                        sendProductToBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $(".pb-pop-c-dec-specii.minus-half").click(function(){
                        var elementId = this.id;
                        var sizeName = "half";
                        deleteProductFromBusket(elementId,sizeName);
                        console.log(elementId,sizeName);
                    });
                    $("#order-allsum").html($("#session_summ").val());
                }
            });
        };
        $(".pb-pop-c-inc-specii.plus-one").click(function(){
            var elementId = this.id;
            var sizeName = "full";
            sendProductToBusket(elementId,sizeName);
            console.log(elementId,sizeName);
        });
        $(".pb-pop-c-dec-specii.minus-one").click(function(){
            var elementId = this.id;
            var sizeName = "full";

            var freeEl = $("#free").val();
            deleteProductFromBusket(elementId,sizeName);
            console.log(elementId,sizeName);
        });
        $(".pb-pop-c-inc-specii.plus-half").click(function(){
            var elementId = this.id;
            var sizeName = "half";
            sendProductToBusket(elementId,sizeName);
            console.log(elementId,sizeName);
        });
        $(".pb-pop-c-dec-specii.minus-half").click(function(){
            var elementId = this.id;
            var sizeName = "half";

            deleteProductFromBusket(elementId,sizeName);
            console.log(elementId,sizeName);
        });
    })
</script>