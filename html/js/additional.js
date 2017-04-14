$(document).ready(function(){

    var route,geocode;
    ymaps.ready(init);

    function degreesToRadians (degrees) {
        var radians = (degrees * Math.PI)/180;
        return radians;
    }

    function computeDistance (startCoords, destCoords) {
        var startLatRads = degreesToRadians(startCoords.latitude);
        var startLongRads = degreesToRadians(startCoords.longitude);
        var destLatRads = degreesToRadians(destCoords.latitude);
        var destLongRads = degreesToRadians(destCoords.longitude);

        var Radius = 6371; //радиус Земли в километрах
        var distance = Math.acos(Math.sin(startLatRads) * Math.sin(destLatRads) + Math.cos(startLatRads) * Math.cos(destLatRads) * Math.cos(startLongRads - destLongRads)) * Radius;

        return distance;
    }

    function init() {
        var geolocation = ymaps.geolocation;
        var lat = geolocation.latitude;
        var lon = geolocation.longitude;
        var current = {
            latitude: lat,
            longitude: lon
        };
        var ourCoordsPeter = {
            latitude: 59.934985,
            longitude: 30.282161
        };
        var ourCoordsMoscow = {
            latitude: 55.720843,
            longitude: 37.577083
        };
        var ourCoordsNsk = {
            latitude: 55.014367,
            longitude: 82.916654
        };
        var ourCoordsAlmati = {
            latitude: 43.202242,
            longitude: 76.900278
        };

        var peter = computeDistance(current, ourCoordsPeter);
        var moscow = computeDistance(current, ourCoordsMoscow);
        var nsk = computeDistance(current, ourCoordsNsk);
        var almati = computeDistance(current, ourCoordsAlmati);


        var min = Math.min(peter, moscow, nsk, almati);
        var cityId;
        if(peter == min){
            cityId = "peter";
        } else if(moscow == min){
            cityId = "moscow";
        } else if(nsk == min){
            cityId = "nsk";
        } else if(almati == min){
            cityId = "almati";
        }
        var data = "city=" + cityId + "&manualy=N";
        $.ajax({
            url: "/callback/city_session.php",
            type: "POST",
            data: data,
            success: function(html){
                if(html == "ok"){
                    window.location = "/main/?city=" + cityId; ///
                }
            }
        });

        console.log(min, peter, moscow, nsk, almati);
    }

	var geopos = function(){
        navigator.geolocation.getCurrentPosition(function(position) {
            var lat_geo = position.coords.latitude;
            var lon_geo = position.coords.longitude;
            data = "lat=" + lat_geo + "&lon=" + lon_geo;
            $.ajax({
                url: "/callback/geopos.php",
                type: "POST",
                data: data,
                success: function(html){
                    console.log("lat=" + lat_geo + "&lon=" + lon_geo);
                }
            });
            setTimeout(geopos, 150000);
        });
	};
    geopos();

    //$("#form_phone").mask("+7 (999) 999-9999");
	$("a[href='/apply/']").click(function(){
        $(".search-border").css({display: "block"});
        return false;
	});
	$("a.trigger__close-overlayer").click(function(){
        $(".search-border").css({display: "none"});
		return false;
	});
    $(".form-send").click(function(){
        $("#errors").css({display: "none"});
		var courseId = $("#form_course").val();
		var courseUserName = $("#form_name").val();
		var courseUserPhone = $("#form_phone").val();
		var title = "Заявка с сайта pioneerdjschool.ru";
		var error = false;

		if(courseUserName == ""){
            $("#errors").css({display: "block"});
            $("#errors").html("Введите ваше Имя");
            error = true;
		}
		if(courseUserPhone == ""){
            $("#errors").css({display: "block"});
            $("#errors").html("Введите телефон для обратной связи");
            error = true;
		}
		if(!error){
			console.log("form complete");

            data = "title=" + title + "&city=" + $(".select__footer-dark select option:selected").html() + "&course=" + courseId + "&name=" + courseUserName + "&phone=" + courseUserPhone;
            $.ajax({
                url: "/callback/ajax_mail.php",
                type: "POST",
                data: data,
                success: function(html){
                    $(".search-border .input-wrap").html(html);
                }
            });
		}
		return false;
	});

	/*
	$('.module-window').click(function(){
		console.log(this.id);
		return false;
	});
	
	setTimeout(function(){
		$('.loading_overlay').remove();
		$(".mastfoot").css("display", "block");
		$('.site-wrapper').css({
			display: "table",
		});
		$('.site-wrapper').animate({
			opacity: 1,
		}, 3000)
		
	}, 1000);
	
	$('#link-logout').click(function(e){ 
		console.log(this)
		var data = "action=logout_user&module=login"
		data = data + '&ajax=Y';
		
		$.ajax({
		  url: "/login/",
		  type: "POST",
		  data: data,
		  success: function(html){
				location.href='/';
				
		  }
		});
		return false;
	});
	
	$('#shortlinkForm input[type="submit"]').click(function(e){
		var link = document.getElementById('main[orig_url]').value;

		if(link == "" || link == "undefined"){
			$('#error_mess').remove();
			$('#shortlinkForm').append('<div id="error_mess" class="short_link_error">Заполните поле "Оригинальная ссылка"</div>');
			setTimeout(function(){
				$('#error_mess').animate({
					opacity: 1,
				}, 5000)
				$('#error_mess').remove();
			}, 10000);
			
		} else {
			var data = "action=save_data&module=shortlink&iblock_name=shortlink&main[orig_url]=" + link;
			data = data + '&ajax=Y';
			
			$.ajax({
			  url: "/katalog/",
			  type: "POST",
			  data: data,
			  success: function(html){
				
				var obj = JSON.parse(html);
				$('#noResult').remove();
				if($(linkList.children[0]).attr("class", "new_link")){
					$(linkList.children[0]).attr("class", "");
				}
				var newLi = document.createElement('li');
				newLi.className = "new_link";
				newLi.innerHTML = '<a href="' + obj.orig_url + '" id="' + obj.id + '" target="_blank"><i class="glyphicon glyphicon-share"></i></a>  ' + obj.edit_url;
				
				
				
				linkList.insertBefore(newLi, linkList.children[0]);
				
				document.getElementById('main[orig_url]').value = "";
				
			  }
			});
		}
		return false;
	});	
});

$('#main_tabs a').click(function (e) {
	e.preventDefault()
	$(this).tab('show')
});



function logoMove(loaderWidth)
	{
		var logo = $('.logoimg').offset();
		$(".masthead-brand .logoright").hover(function(){
			
			$(".logoimg").animate({
				left: 0,
				top: 0,
			}, 1000)
			.animate({left: "+=100"}, 1000);
		},function(){
			var arc_params = {
				center: [-3,-3],  
				radius: 4,    
				start: 29,
				end: 30,
				dir: -1
			};
			$(".logoimg").animate({left: "-=100"}, 1000);
			$(".logoimg").animate({path : new $.path.arc(arc_params)}, 500);
		
			
		});
		
		$(".masthead-brand .logoleft").hover(function(){
			
			$(".logoimg").animate({
				left: 0,
				top: 0,
			}, 1000)
		});
		// $("html").click(function(e){
			// console.log(window.innerWidth);
			// $(".logoimg").animate({
				// left: e.clientX - logo.left + 40 - loaderWidth/3,
				// top: e.clientY - logo.top - 50,
			// }, 1000);
			
		// });
		*/
	});