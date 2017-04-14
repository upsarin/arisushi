

    <?
    $routes = explode('/', $_SERVER['REQUEST_URI']);
    if($routes[1] == "administrator"){


    } else {
        if($routes[2] == "detail"){
            $bread[0]['page_alias'] = $routes[1];
            $bread[0]['page_type'] = "list";

            $bread[1]['page_alias'] = $routes[3];
            $bread[1]['page_type'] = "detail";
        } else {
            $bread[0]['page_alias'] = $routes[1];
            $bread[0]['page_type'] = "list";
        }
        foreach($bread as $key => $val){
            if($val['page_type'] == "list"){
                $page = Element::GetOne($alias = $val['page_alias'], $filter = NULL, $fields = NULL, $table = "pages");
                $really_bread[0]['alias'] = "/". $page[0]['alias'] ."/?filter=N";
                $really_bread[0]['title'] = $page[0]['title'];
            } else {
                $content = Element::GetOne($alias = $val['page_alias'], $filter = NULL, $fields = NULL, $table = "content");
                $really_bread[2]['alias'] = "/". $content[0]['alias'] ."/";
                $really_bread[2]['title'] = $content[0]['title'];
            }
            if($content[0]['cat']){
                $cat = Element::GetByID($content[0]['cat'], $return=null, $table="cats");
                $really_bread[1]['alias'] = "/". $page[0]['alias'] ."/?c=". $cat['id'] ."&filter=N";
                $really_bread[1]['title'] = $cat['name'];
            }
        }

    }
    ?>
<div class="footer-breadcrumb clearfix">
    <ul class="clearfix">
        <li><a href="/"><span class="icon-dj"></span><span class="sr-only">DJ</span></a></li>
        <?if($really_bread[0]){ ?>
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">

                <a href="<?=$really_bread[0]['alias']?>" itemprop="url">
                    <?=$really_bread[0]['title']?>
                    <i class="ico"></i>

                </a>


            </li>
        <? } ?>
        <?if(false/*$really_bread[1]*/){ ?>
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="<?=$really_bread[1]['alias']?>" itemprop="url">
                    <span itemprop="title"><?=$really_bread[1]['title']?></span>
                    <i class="ico"></i>
                </a>
            </li>
        <? } ?>
        <?if($really_bread[2]){ ?>
            <li class="current" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="/" itemprop="url">
                    <span itemprop="title"><?=$really_bread[2]['title']?></span>
                    <i class="ico"></i>
                </a>
            </li>
        <? } ?>
    </ul>
</div>