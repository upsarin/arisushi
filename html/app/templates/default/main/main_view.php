
<style>
    @media (max-width: 767px) {
        .krossbanner .head .bg-adapt {
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            height: 100%;
            background-size: cover;
            background-position: 560px 70%;
            z-index: 1;
            /* width: 100%; */
        }
    }
</style>
<div class="experience-wrap">
    <section class="experience">
        <div class="image image-fx image-fx-1">
            <div class="bg-adapt">
                <img style="display: block;" src=''  alt='' />
                <span data-mq="xs" data-srcset="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/experience/homepage-ddj-sz2-3.jpg?h=480&amp;w=640&amp;hash=5120A22A02F36A477B749735668E78C5E0D518DF"></span>
                <span data-mq="sm" data-srcset="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/experience/homepage-ddj-sz2-3.jpg?h=600&amp;w=800&amp;hash=BE53CFA41B4F33BDC9C45A2BB59B298C410004EF"></span>
                <span data-mq="md" data-srcset="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/experience/homepage-ddj-sz2-3.jpg?h=768&amp;w=1024&amp;hash=C202A166F1870C382356B0DAAA164CEA603D8C44"></span>
                <span data-mq="lg" data-srcset="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/experience/homepage-ddj-sz2-3.jpg"></span>
            </div>
            <div class="image-fx-overlay"></div>
        </div>
        <div class="wheel"></div>
        <a href="/apply/" class="body" style="padding: 44px;">
                    <div class="in">
                <h1 class="quote"><span class="ellipsis">Хочешь быть настоящим Dj? Мы поможем!<br>Просто запишись на пробное бесплатное занятие</span></h1>
                <span class="ghostbtn ghostbtn-large ghostbtn-forw ghostbtn-light"><span class="text">Подать заявку</span></span>
            </div>
        </a>
    </section>
    <nav class="productcat-nav">
        <ul>
            <li>
                <a href='/contacts/' >                                <span class="text">Контакты</span>
                    <span class="image"><img src='https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/navigation/players.png?h=256&amp;w=400&amp;la=en&amp;hash=8C5DF8DD2CF7C891FD0C34363773C3399B009082' alt='players' /></span>
                </a>                        </li>
            <li>
                <a href='/courses/' >                                <span class="text">Курсы</span>
                    <span class="image"><img src='https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/navigation/mixers.png?h=256&amp;w=400&amp;la=en&amp;hash=E6F24736A4281A2CD6E5D0FED807D313983F0794' alt='mixers' /></span>
                </a>                        </li>
            <li>
                <a href='/services/' >                                <span class="text">Услуги</span>
                    <span class="image"><img src='https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/navigation/controllers.png?h=256&amp;w=400&amp;la=en&amp;hash=7C6EA5011D7DC5CCB8F3F5B1C2D646901F99F754' alt='controllers' /></span>
                </a>                        </li>
            <li>
                <a href='/apply/' >                                <span class="text">Заявка</span>
                    <span class="image"><img src='https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/navigation/other.png?h=256&amp;w=400&amp;la=en&amp;hash=3FB8B51FFD93CA67A2DA9190D4455A83CF3365A4' alt='other' /></span>
                </a>                        </li>
        </ul>
    </nav>
</div>
<div class="bg-experience">

    <section class="section news-featured padding-top-0 bg-dark">
        <div class="container">
            <h2 class="h2 light">
                НОВОСТИ
            </h2>
            <div class="row equalizer" data-equalizer-watch=".box">
                <div class="slider">
                    <?
                     $array['id'] = "100";
                     $array['content']['content'] = Element::GetList($array, $array['filter'], $limit="6");
                    ?>
                    <?if(count($array['content']['content']) > 0){?>
                    <?foreach($array['content']['content'] as $element){?>

                        <?
                         $filter = array("content_id" => $element['id']);
                         $images = Element::SelectAll('files', $filter, null, null);
                        ?>
                        <section class="news-feature medium">
                            <a class="box" href="/news/detail/<?=$element['alias']?>/">
                                        <span class="date">

                                        </span>
                                <? if(count($images)) { ?>
                                    <picture class="image" style="background-image: url('/<?=$images[0]['path']?>?mh=343&amp;c=1&amp;cw=413&amp;hash=C72DA59FA9FD9AEBBA7F39D247171FA4ED6D4A8B');">
                                <? } else { ?>
                                    <picture class="image" style="background-image: url('/css/images/logo.png?mh=343&amp;c=1&amp;cw=413&amp;hash=C72DA59FA9FD9AEBBA7F39D247171FA4ED6D4A8B');">
                                <? } ?>
                                        <div class="img-adapt">
                                        </div>
                                    </picture>
                                <span class="body">
                                        <h2 class="title"><?=$element['title']?></h2>
                                        <span class="desc">

                                        </span>
                                    </span>
                                <span class="tilebtn"><i class="ico"></i></span>
                            </a>
                        </section>
                    <? } ?>
                    <? } ?>

                </div>
            </div>
            <a href="/news/" class="ghostbtn ghostbtn-forw ghostbtn-light"><span class="text">Узнать больше...</span></a>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <h2 class="h2 light">АКЦИИ И УСЛУГИ</h2>
            <div class="row row-full">
                <div class="col">
                    <div class="krossbanner">
                        <div class="head image-fx ">
                            <div class="bg-adapt">
                                <a data-mq="xs" href="/css/images/content/index/services/rent.jpg?mh=210&amp;w=640&amp;hash=F5038710554AB40206AE0F4299D20F46D22B8551"></a>
                                <a data-mq="sm" href="/css/images/content/index/services/rent.jpg?mh=210&amp;w=640&amp;hash=F5038710554AB40206AE0F4299D20F46D22B8551"></a>
                                <a data-mq="md" href="/css/images/content/index/services/rent.jpg?mh=210&amp;w=900&amp;hash=0EEE356F98537E5EF56737277ECE65B9289C414C"></a>
                                <a data-mq="lg" href="/css/images/content/index/services/rent.jpg?h=267&amp;w=1266&amp;hash=69919DFDF212F6142C471ECBACAEF7470FA21336"></a>
                            </div>
                            <div class="image-fx-overlay"></div>
                        </div>
                        <a href='/services/detail/rent/' title='Аренда оборудования' >
                            <div class="body">
                                <p class="ellipsis"><p><strong>Мы предоставляем в аренду самое актуальное DJ оборудование по демократичным ценам.</strong></p>
                                <p>Теперь Ваша вечеринка будет не только весёлой но и выгодной!</p></p>
                            </div>
                            <span class="tilebtn"><span class="ico icon-tilebtn-more"><span class="sr-only">More</span></span></span>
                        </a>                        </div>
                </div>
                <div class="col">
                    <div class="krossbanner">
                        <div class="head image-fx image-fx-6">
                            <div class="bg-adapt">
                                <a data-mq="xs" href="/css/images/content/index/services/partnership.jpg?mh=210&amp;w=640&amp;hash=A42EAC839CEDCDB34B7839CF640252854C6B48FD"></a>
                                <a data-mq="sm" href="/css/images/content/index/services/partnership.jpg?mh=210&amp;w=640&amp;hash=A42EAC839CEDCDB34B7839CF640252854C6B48FD"></a>
                                <a data-mq="md" href="/css/images/content/index/services/partnership.jpg?mh=210&amp;w=900&amp;hash=305270D5B347622B6659A5E4FACF11011F2F9786"></a>
                                <a data-mq="lg" href="/css/images/content/index/services/partnership.jpg?h=267&amp;w=1266&amp;hash=AB847624C88BBFDFF310C150B40D314CCBAAC868"></a>
                            </div>
                            <div class="image-fx-overlay"></div>
                        </div>
                        <a href='/services/detail/partnership' title='Партнерская программа' >
                            <div class="body">
                                <p class="ellipsis"><p><strong>Приглашайте друзей и получайте 1000 рублей за каждого студента, оплатившего обучение по вашей рекомендации. </strong></p>
                                <p>Приглашенный вами студент так же получит скидку 1000 руб.</p></p>
                            </div>
                            <span class="tilebtn"><span class="ico icon-tilebtn-more"><span class="sr-only">More</span></span></span>
                        </a>                        </div>
                </div>
                <div class="col">
                    <div class="krossbanner">
                        <div class="head image-fx image-fx-1">

                            <div class="bg-adapt">
                                <a data-mq="xs" href="/css/images/content/index/services/action.jpg?mh=210&amp;w=640&amp;hash=80F9C000DA8668327835556E64B6690F06CB2DD1"></a>
                                <a data-mq="sm" href="/css/images/content/index/services/action.jpg?mh=210&amp;w=640&amp;hash=80F9C000DA8668327835556E64B6690F06CB2DD1"></a>
                                <a data-mq="md" href="/css/images/content/index/services/action.jpg?mh=210&amp;w=900&amp;hash=64485B26DC1A15C2618920C61112C2D4DC1A8810"></a>
                                <a data-mq="lg" href="/css/images/content/index/services/action.jpg?h=267&amp;w=1266&amp;hash=4D3CC27C501BFCBBA0F826730CDF7F1CB7BAECD1"></a>
                            </div>
                            <div class="image-fx-overlay"></div>
                        </div>
                        <a href='/services/detail/skidochny-sistem' title='Скидочная система' >                                <div class="body">
                                <p class="ellipsis"><p><strong>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент.</strong></p>
                                <p>После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p></p>
                            </div>
                            <span class="tilebtn"><span class="ico icon-tilebtn-more"><span class="sr-only">More</span></span></span>
                        </a>                        </div>
                </div>
                <div class="col">
                    <div class="krossbanner">
                        <div class="head image-fx image-fx-6">
                            <div class="bg-adapt">
                                <a data-mq="xs" href="/css/images/content/index/services/traning.jpg?mh=210&amp;w=640&amp;hash=19C72E3E80FE3CAD7FBCE5D07539EB7FC0413B35"></a>
                                <a data-mq="sm" href="/css/images/content/index/services/traning.jpg?mh=210&amp;w=640&amp;hash=19C72E3E80FE3CAD7FBCE5D07539EB7FC0413B35"></a>
                                <a data-mq="md" href="/css/images/content/index/services/traning.jpg?mh=210&amp;w=900&amp;hash=78FDA37668889F22AB134BF8DD9B3A7EF0826527"></a>
                                <a data-mq="lg" href="/css/images/content/index/services/traning.jpg?h=267&amp;w=1266&amp;hash=57503E434D503CB220032E46BDA6BEA88DB2CFB6"></a>
                            </div>
                            <div class="image-fx-overlay"></div>
                        </div>
                        <a href='/services/detail/traning/' title='Тренинг площадка' >                                <div class="body">
                                <p class="ellipsis"><p><strong>Для тренинга предоставляется абсолютно любое DJ Оборудование которое представлено в DJ Центре. </strong></p>
                                <p>Бронирование даты и времени происходит заранее.</p></p>
                            </div>
                            <span class="tilebtn"><span class="ico icon-tilebtn-more"><span class="sr-only">More</span></span></span>
                        </a>                        </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <h2 class="h2 light">НОВЫЕ ВИДЕО ОТ PIONEERDJTV</h2>

            <div class="row product-teasers">
                <?
                $array['id'] = "106";
                $array['filter_video_6'] = array("cat" => "6");
                $array['content']['video_6'] = Element::GetList($array, $array['filter_video_6'], $limit="2");
                ?>

                <?foreach($array['content']['video_6'] as $element){ ?>
                    <div class="col-sm-6">
                        <div class="product-teaser">


                                    <iframe width="560" height="325" src="<?=$element['url']?>" frameborder="0" allowfullscreen style="    width: 100%;"></iframe>




                        </div>
                    </div>
                <? } ?>
            </div>
            <h2 class="h2 light">Новые видео от pioneerdjschool</h2>

            <div class="row product-teasers">
                <?
                $array['id'] = "106";
                $array['filter_video_7'] = array("cat" => "7");
                $array['content']['video_7'] = Element::GetList($array, $array['filter_video_7'], $limit="2");
                ?>

                <?foreach($array['content']['video_7'] as $element){?>
                    <div class="col-sm-6">
                        <div class="product-teaser">


                            <iframe width="560" height="325" src="<?=$element['url']?>" frameborder="0" allowfullscreen style="    width: 100%;"></iframe>




                        </div>
                    </div>
                <? } ?>
            </div>
        </div>
    </section>



</div>