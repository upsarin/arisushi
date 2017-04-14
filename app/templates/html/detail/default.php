
		<div class="page-image contacts"><img src="/css/images/header_banner_1.png"></div>
        <header class="header navbar navbar-white navbar-static-top">
            <div class="">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
				<div class="contacts-block">

                    <div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" title="Pioneer DJ&nbsp; Novosibirsk+7 913 015-90-09"><span class="filter-option pull-left"><span class="title">Pioneer DJ&nbsp;</span> <span class="address">Novosibirsk</span><span class="phone">+7 913 015-90-09</span></span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0"><a tabindex="0" class="" style="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="title">Pioneer DJ&nbsp;</span> <span class="address">Moscow</span><span class="phone">+7 916 942-52-48</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="title">Pioneer DJ&nbsp;</span> <span class="address">St. Petersburg</span><span class="phone">+7 812 984-91-44</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2" class="selected"><a tabindex="0" class="" style="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="title">Pioneer DJ&nbsp;</span> <span class="address">Novosibirsk</span><span class="phone">+7 913 015-90-09</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="title">Pioneer DJ&nbsp;</span> <span class="address">Almaty</span><span class="phone">+7 747 336-22-02</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>

                </div>
                    <div class="navbar-brand">
                        <a href="/" class="logo-image"><img src="/css/images/logo.png"></a>
                    </div>
                </div>
				
                <div class="navbar-container header-container">
                    <nav class="collapse navbar-collapse menu">
                        <ul class="nav navbar-nav ">
                            
                            
                            <li <?=($array['id'] == 100) ? 'class="active"' : ''?>><a href="/news"><span>Новости</span></a></li>
                            
                            <li <?=($array['id'] == 101) ? 'class="active"' : ''?>><a href="/courses"><span>Курсы</span></a></li>
                            
                            <li <?=($array['id'] == 102) ? 'class="active"' : ''?>><a href="/services"><span>Услуги</span></a></li>
                            
                            <li <?=($array['id'] == 103) ? 'class="active"' : ''?>><a href="/contacts"><span>Контакты</span></a></li>
                            
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <div class="content-container-wrapper search-line">
            <div class="content-container">
                <div class="content">
                        <form class="form-horizontal">
                            <fieldset>
                                    
                                <div class="form-group">
                                    <div class="col-md-8 col-sm-12 input-box">
                                            <div class="col-md-8 col-sm-8 col-xs-12 single-line input-box">
                                                <input id="textinput" name="name" type="text" placeholder="" class="form-control input-md" required="">
                                            </div>
                                            <div class="col-md-4 col-sm-4 single-line input-box">
                                                <button class="form-button" id="singlebutton" name="singlebutton"><span></span></button>
                                            </div>
                                    </div>
                                    <div class="input-box select-box col-sm-12 col-md-4">
                                        <div class="btn-group bootstrap-select form-control"><button type="button" class="btn dropdown-toggle bs-placeholder btn-default" data-toggle="dropdown" role="button" data-id="service" title="Nothing selected"><span class="filter-option pull-left">Nothing selected</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"></ul></div><select id="service" name="service" class="selectpicker form-control" tabindex="-98">
                                            
                                            
                                        </select></div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                </div>
            </div>
        </div>				
				
		<div class="content-container-wrapper news-page">
            <div class="content-container">
                <div class="content">
                    <h2 class="block-header">НОВОСТИ</h2>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
						<?foreach($array['content'] as $element){?>
							<?
							$filter = array("id" => $element['id']-1, "active" => "Y", "page_id" => $array['id']);
							$prev = Element::SelectAll('content', $filter, null, null);
							?>
							<?
							$filter = array("id" => $element['id']+1, "active" => "Y", "page_id" => $array['id']);
							$next = Element::SelectAll('content', $filter, null, null);
							?>
							
							
                            <a href="/news" class="button-back"><span>Назад к списку</span></a>
							<? if(count($prev) > 0){?>
								<a href="/news/detail/<?=$prev[0]['alias']?>" class="navigation-button button-prev-news" ><span></span></a>
							<? } ?>
							<? if(count($next) > 0){?>
								<a href="/news/detail/<?=$next[0]['alias']?>" class="navigation-button button-next-news"><span></span></a>
							<? } ?>
							
                            <article>
							<?
							$filter = array("content_id" => $element['id']);
							$images = Element::SelectAll('files', $filter, null, null);
							?>
                                <div class="image-container">
								<? if(count($images)) { ?>
                                    <img class="image" src="/<?=$images[0]['path']?>" alt="" style="max-width: 600px; max-height:500px;height: auto;">
								<? } ?>
                                </div>
                                <span class="date"><?=($element['active_to'] != "0000-00-00 00:00:00") ? date("M d, Y", strtotime($element['active_to'])) : ""?></span>
                                <h3 class="news-title"><?=$element['title']?></h3>
                                <p><?=$element['desc']?></p>
                            </article>
						<? } ?>
                        </div>
                    </div>
                    <div class="slick-slider news-navigation">
                        <ul class="slick-dots ">
                            <li class="slick-active"><a href="#">1</a></li>
                            <li ><a href="#">2</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>