

    <?
    session_start();
    require_once ("/home/a/arisushi/public_html/app/classes/User.php");
    require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");
    require_once ("/home/a/arisushi/public_html/app/core/dbo.php");

    $element = Element::SelectAll('content', array("id" => $_POST['id']), null, null);
    $element = $element[0];
    $params = array('element_id' => $element['id']);
    $table = 'field_value';
    $fields = DBConnect::init()->getFeildsValues($params, null, $table);
    foreach($fields as $field => $value){
        $element[$value['code']] = $value['value'];
    }


    $images = Element::SelectAll('files', array("content_id" => $element['id']), null, null);
    $image = $images[0];
    ?>

    <div class="element-window-img">
        <img title="<?=$element['name']?>" alt="<?=$element['name']?>" src="/<?=$image['path']?>">
    </div>
    <div class="element-window-text">
        <div class="menu-item-one">
            <div class="element-window-text-name"><?=$element['name']?></div>
            <div class="element-window-text-text"><?=$element['desc']?></div>
            <div style="background-color: #c6c6c6;height: 1px;width: 100%;margin-top: 21px;"></div>
            <div class="element-window-text-tovar-one">
                <div class="element-window-text-price"><?=$element['price']?><span style="font-size: 11pt;"> руб.</span></div>
                <div style="clear: both;"></div>
            </div>
        </div>
        <?if($element['half'] == "y"){ ?>
            <div class="menu-item-one-half" style="display: none;">
                <div class="element-window-text-name"><?=$element['name']?> <?=($element['cat'] == 16) ? $element['half-weight'] : "1/2"?></div>
                <div class="element-window-text-text"><?=$element['desc']?></div>
                <div style="background-color: #c6c6c6;height: 1px;width: 100%;margin-top: 21px;"></div>
                <div class="element-window-text-tovar-one">
                    <div class="element-window-text-price"><?=$element['half-price']?><span style="font-size: 11pt;"> руб.</span></div>
                    <div style="clear: both;"></div>
                </div>
            </div>
        <? } ?>
        <div style="background-color: #c6c6c6;height: 1px;width: 100%;margin-top: 15px;margin-bottom: 15px;"></div>
        <?if($element['half'] == "y"){ ?>
            <div class="menu-select-window">
                <select name="select" class="menu-select-razmer">
                    <?if($element['cat'] == 16) { ?>
                        <option value="1"><?=$element['weight']?></option>
                        <option value="1/2"><?=$element['half-weight']?></option>
                    <? } else { ?>
                        <option value="1">порция</option>
                        <option value="1/2">половина порции</option>
                    <? } ?>
                </select>
                <a class="menu-select-razmer-bot"></a>
            </div>
        <? } ?>

        <div class="menu-mass-window-one">
            <?=$element['weight'];?>
        </div>

        <div class="menu-mass-window-half" style="display: none;">
            <?=$element['half-weight'];?>
        </div>
    </div>
    <div id="close-window" onclick="closemodal();"></div>
