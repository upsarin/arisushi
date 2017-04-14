<div class="bg-experience">

    <div class="bg-news-detail">
        <div class="bg-adapt" style="background-image: url(&quot;https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/news/2017/djsounds-show/kink-at-ade/djss-kink-at-ade-2016-head.jpg?mw=1024&amp;hash=F89CD8FC5D83BC16BBDA8C391BDC26674FEB287A&quot;);">




        </div>
    </div>


    <div class="section news-detail">

        <div class="container">

            <?
            $element = $array['content'][0];
            $filter = array("id" => $element['id']-1, "active" => "Y", "page_id" => $array['id']);
            $prev = Element::SelectAll('content', $filter, null, null);

            $filter = array("id" => $element['id']+1, "active" => "Y", "page_id" => $array['id']);
            $next = Element::SelectAll('content', $filter, null, null);

            $filter = array("content_id" => $element['id'], "type" => "detail_image");
            $images = Element::SelectAll('files', $filter, null, null);
            ?>

            <header class="row news-detail-header">
                <div class="col-sm-11 col-sm-offset-1">
                    <h1 class="h2 light">
                        <a href="/news/">Новости</a>
                    </h1>

                    <div>
                        <a href="/news/" class="ghostbtn ghostbtn-back ghostbtn-light">
                            <span class="text">Обратно к списку</span>
                        </a>
                    </div>

                    <ul class="direction-nav">
                        <? if(count($prev) > 0){?>
                            <li>
                                <a href="/news/detail/<?=$prev[0]['alias']?>" class="prev">
                                    <i class="ico">
                                        <span class="sr-only">Предыдущая новость</span>
                                    </i>
                                </a>
                            </li>
                        <? } ?>
                        <? if(count($next) > 0) { ?>
                            <li>
                                <a href="/news/detail/<?=$next[0]['alias']?>" class="next">
                                    <i class="ico">
                                        <span class="sr-only">Следующая новость</span>
                                    </i>
                                </a>
                            </li>
                        <? } ?>
                    </ul>
                </div>
            </header>


            <div class="row section news-detail-main-wrap">
                <div class="col-sm-12 col-md-9 news-detail-main">
                    <div class="timeline">
                        <div class="timeline-era">
                            <div class="image">
                                <? if(!count($images)) {
                                    $images[0]['path'] = "/css/images/notfound.png";
                                } ?>
                                <img src="/<?=$images[0]['path']?>?mw=1024&amp;hash=F89CD8FC5D83BC16BBDA8C391BDC26674FEB287A" class="img-block" alt="">
                            </div>
                            <div class="content bg-light">
                                <p class="date">
                                    <!--03 February, 2017-->
                                </p>

                                <h1 class="title h3"><?=$element['title']?></h1>



                                <div class="editorial">
                                    <p><?=$element['desc']?></p>
                                </div>
                            </div>

                        </div>
                        <i class="indicator"></i>
                    </div>
                    <p class="tags">
                        <!--cat name -->
                    </p>
                </div>
                <div class="col-sm-11 col-sm-offset-1 col-md-3 col-md-offset-0">

                    <ul class="news-list equalizer">
                        <? if(count($prev) > 0) { ?>
                            <li class="news-list-item" style="">
                                <a href="/news/detail/<?=$prev[0]['alias']?>">
                                    <span class="date"></span>
                                    <span class="title"><?=$prev[0]['title']?></span>
                                    <span class="desc"><?=strip_tags($prev[0]['preview_desc'])?></span>
                                </a>
                            </li>
                        <?}?>
                        <? if(count($next) > 0) { ?>
                            <li class="news-list-item" style="">
                                <a href="/news/detail/<?=$next[0]['alias']?>">
                                    <span class="date"></span>
                                    <span class="title"><?=$next[0]['title']?></span>
                                    <span class="desc"><?=strip_tags($next[0]['preview_desc'])?></span>
                                </a>
                            </li>
                        <?}?>
                    </ul>

                </div>

            </div>



        </div>

    </div>

</div>