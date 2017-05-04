<?
session_start();
require_once ("/home/a/arisushi/public_html/app/classes/User.php");
require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");
require_once ("/home/a/arisushi/public_html/app/core/dbo.php");

if($_POST){ ?>

    <?
    if($_POST['elementId'] != "vasabi" && $_POST['elementId'] != "sous" && $_POST['elementId'] != "imbir"){

        if($_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']] && $_POST['action'] == "add"){
            $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] += 1;
            $_SESSION['user']['summ'] += $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['price'];
        } else if($_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']] && $_POST['action'] == "delete"){
            if($_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] > 0) {
                $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] -= 1;
                $_SESSION['user']['summ'] -= $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['price'];
            }
        }
    } else {
        if($_POST['elementId'] == "vasabi"){
            $_SESSION['user']['busket']["adds"][$_POST['elementId']]['name'] = "Васаби";
        } else if($_POST['elementId'] == "sous"){
            $_SESSION['user']['busket']["adds"][$_POST['elementId']]['name'] = "Соевый соус";
        } else if($_POST['elementId'] == "imbir"){
            $_SESSION['user']['busket']["adds"][$_POST['elementId']]['name'] = "Имбирь";
        }
        if(!$_SESSION['user']['busket']["adds"][$_POST['elementId']]){
            $_SESSION['user']['busket']["adds"][$_POST['elementId']] = $_POST;
            $_SESSION['user']['busket']["adds"][$_POST['elementId']]['count'] = 1;
            $_SESSION['user']['summ'] += "15";
        } else if($_SESSION['user']['busket']["adds"][$_POST['elementId']] && $_POST['action'] == "add"){
            $_SESSION['user']['busket']["adds"][$_POST['elementId']]['count'] += 1;
            $_SESSION['user']['summ'] += "15";
        } else if($_SESSION['user']['busket']["adds"][$_POST['elementId']] && $_POST['action'] == "delete"){
            if($_SESSION['user']['busket']["adds"][$_POST['elementId']]['count'] > 0) {
                $_SESSION['user']['busket']["adds"][$_POST['elementId']]['count'] -= 1;
                $_SESSION['user']['summ'] -= "15";
            }
        }
    }
    ?>


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
        <input type="hidden" id="session_summ" value="<?=$_SESSION['user']['summ']?>"/>


<? } ?>
