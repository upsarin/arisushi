<div id="content">
    <div id="company">
        <div id="menu-list">
            <a href="/comments" class="menu-list-item active">Отзывы</a>
            <a href="/news" class="menu-list-item">Новости</a>
            <a href="/legal" class="menu-list-item ">Правовая информация</a>
            <div style="clear: both;"></div>
        </div>
        <div id="review">


            <div class="review-item-out">
                <form method="POST" action="/ajax/comments.php" id="review-form">
                    <div class="review-item-new">
                        <textarea class="review-item-text-new" placeholder="Помогите сделать Аригато еще лучше, напишите нам" name="text"></textarea>
                    </div>
                    <div class="review-item-bottom"></div>

                    <input placeholder="Ваше имя" name="myname" class="review-item-new-name" value="">

                    <input type="submit" class="review-item-new-bottom" value="ОТПРАВИТЬ">
                    <div style="clear:both;margin-bottom: 20px;"></div>
                </form>
            </div>


            <script>
                // Attach a submit handler to the form
                $("#review-form").submit(function( event ) {

                    // Stop form from submitting normally
                    event.preventDefault();

                    // Get some values from elements on the page:
                    var form = $(this);
                    var name = form.find("input[name='myname']").val();
                    var text = form.find("textarea[name='text']").val();
                    var url = form.attr( "action" );

                    if (name=="") {alert("Введите имя");return false}
                    if (text=="") {alert("Введите текст отзыва");return false}

                    $.post(url, {name: name,text:text}, function( data ) {
                        if (data["result"]=="OK") alert("Сообщение отправлено. Спасибо!");
                        if (data["result"]=="ERROR") alert("Ошибка добавления");
                        if (data["result"]=="NOTEXT") alert("Введите текст отзыва");
                        if (data["result"]=="NONAME") alert("Введите имя");
                    }, "json");


                });
            </script>




            <?foreach($array['content']['content'] as $key => $element){ ?>
                <div class="review-item-out">
                    <div class="review-item">
                        <div class="review-item-text"><?=$element['desc']?></div>
                        <div class="review-item-name"><?=$element['title']?></div>
                    </div>
                    <div class="review-item-bottom"></div>
                    <div style="height:30px;"></div>
                </div>
            <? } ?>
            <div id="review_add"></div>
        </div>
    </div>
</div>