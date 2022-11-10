var num=0,oUl=$("#min_title_list"),hide_nav=$("#Hui-tabNav");

/*Получить общую длину верхней вкладки*/
function tabNavallwidth(){
	var taballwidth=0,
		$tabNav = hide_nav.find(".acrossTab"),
		$tabNavWp = hide_nav.find(".Hui-tabNav-wp"),
		$tabNavitem = hide_nav.find(".acrossTab li"),
		$tabNavmore =hide_nav.find(".Hui-tabNav-more");
	if (!$tabNav[0]){return}
	$tabNavitem.each(function(index, element) {
        taballwidth += Number(parseFloat($(this).width()+60))
    });
	$tabNav.width(taballwidth+25);
	var w = $tabNavWp.width();
	if(taballwidth+25>w){
		$tabNavmore.show()}
	else{
		$tabNavmore.hide();
		$tabNav.css({left:0});
	}
}

/*Адаптивное левое меню*/
function Huiasidedisplay(){
	if($(window).width()>=768){
		$(".Hui-aside").show();
	}
}
/*получение cookie*/
function getskincookie(){
	var v = $.cookie("Huiskin");
	var hrefStr=$("#skin").attr("href");
	if(v==null||v==""){
		v="red";
	}
	if(hrefStr!=undefined){
		var hrefRes=hrefStr.substring(0,hrefStr.lastIndexOf('skin/'))+'skin/'+v+'/skin.css';
		$("#skin").attr("href",hrefRes);
	}
}
/*навигация по меню*/
function Hui_admin_tab(obj){
	var bStop = false,
		bStopIndex = 0,
		href = $(obj).attr('data-href'),
		title = $(obj).attr("data-title"),
		topWindow = $(window.parent.document),
		show_navLi = topWindow.find("#min_title_list li"),
		iframe_box = topWindow.find("#iframe_box");
	//console.log(topWindow);
	if(!href||href==""){
		alert("data-href не существует. До версии 2.5 использовался атрибут _href. После обновления измените его на атрибут data-href");
		return false;
	}if(!title){
		alert("Используйте атрибут data-title после версии 2.5.");
		return false;
	}
	if(title==""){
		alert("Атрибут data-title не может быть пустым");
		return false;
	}
	show_navLi.each(function() {
		if($(this).find('span').attr("data-href")==href){
			bStop=true;
			bStopIndex=show_navLi.index($(this));
			return false;
		}
	});
	if(!bStop){
		creatIframe(href,title);
		min_titleList();
	}
	else{
		show_navLi.removeClass("active").eq(bStopIndex).addClass("active");
		iframe_box.find(".show_iframe").hide().eq(bStopIndex).show().find("iframe").attr("src",href);
	}
}

/*Список строк заголовка последней вкладки*/
function min_titleList(){
	var topWindow = $(window.parent.document),
		show_nav = topWindow.find("#min_title_list"),
		aLi = show_nav.find("li");
}

/*создать iframe*/
function creatIframe(href,titleName){
	var topWindow=$(window.parent.document),
		show_nav=topWindow.find('#min_title_list'),
		iframe_box=topWindow.find('#iframe_box'),
		iframeBox=iframe_box.find('.show_iframe'),
		$tabNav = topWindow.find(".acrossTab"),
		$tabNavWp = topWindow.find(".Hui-tabNav-wp"),
		$tabNavmore =topWindow.find(".Hui-tabNav-more");
	var taballwidth=0;

	show_nav.find('li').removeClass("active");
	show_nav.append('<li class="active"><span data-href="'+href+'">'+titleName+'</span><i></i><em></em></li>');
  console.log('1');

  show_nav.find('li').contextMenu('Huiadminmenu', {
    bindings: {
      'closethis': function(t) {
        var $t = $(t);
        if($t.find("i")){
          $t.find("i").trigger("click");
        }
      },
      'closeall': function(t) {
        show_nav.find('li i').trigger("click");
      },
    }
  });

	var $tabNavitem = topWindow.find(".acrossTab li");
	if (!$tabNav[0]){return}
	$tabNavitem.each(function(index, element) {
    taballwidth+=Number(parseFloat($(this).width()+60))
  });
	$tabNav.width(taballwidth+25);
	var w = $tabNavWp.width();
	if(taballwidth+25>w){
		$tabNavmore.show()}
	else{
		$tabNavmore.hide();
		$tabNav.css({left:0})
	}
	iframeBox.hide();
	iframe_box.append('<div class="show_iframe"><div class="loading"></div><iframe data-scrollTop="0" frameborder="0" src='+href+'></iframe></div>');
	var showBox=iframe_box.find('.show_iframe:visible');
	showBox.find('iframe').load(function(){
		showBox.find('.loading').hide();
	});
}


/*закрыть iframe*/
function removeIframe(){
	var topWindow = $(window.parent.document),
		iframe = topWindow.find('#iframe_box .show_iframe'),
		tab = topWindow.find(".acrossTab li"),
		showTab = topWindow.find(".acrossTab li.active"),
		showBox=topWindow.find('.show_iframe:visible'),
		i = showTab.index();
	tab.eq(i-1).addClass("active");
	tab.eq(i).remove();
	iframe.eq(i-1).show();
	$(iframe.eq(i-1).find("iframe")[0].contentWindow.document).scrollTop(iframe.eq(i-1).find("iframe").attr("data-scrollTop"));
	iframe.eq(i).remove();
}

/*закрыть все iframe*/
function removeIframeAll(){
	var topWindow = $(window.parent.document),
		iframe = topWindow.find('#iframe_box .show_iframe'),
		tab = topWindow.find(".acrossTab li");
	for(var i=0;i<tab.length;i++){
		if(tab.eq(i).find("i").length>0){
			tab.eq(i).remove();
			iframe.eq(i).remove();
		}
	}
}

/*Всплывающий слой*/
/*
	Описание параметра：
	title	заглавие
	url		запрошенный url
	id		управление id
	w		ширина всплывающего слоя (по умолчанию)
	h		высота всплывающего слоя (по умолчанию)
*/
function layer_show(title,url,w,h){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=800;
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	layer.open({
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //не зафиксировано
		maxmin: true,
		shade:0.4,
		title: title,
		content: url
	});
}
/*закрыть всплывающее окно*/
function layer_close(){
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}

/*время*/
function getHTMLDate(obj) {
    var d = new Date();
    var weekday = new Array(7);
    var _mm = "";
    var _dd = "";
    var _ww = "";
    weekday[0] = "Воскресение";
    weekday[1] = "Понедельник";
    weekday[2] = "Вторник";
    weekday[3] = "Среда";
    weekday[4] = "Четверг";
    weekday[5] = "Пятница";
    weekday[6] = "Суббота";
    _yy = d.getFullYear();
    _mm = d.getMonth() + 1;
    _dd = d.getDate();
    _ww = weekday[d.getDay()];
    obj.html(_yy + "год" + _mm + "месяц" + _dd + "день " + _ww);
};
function toNavPos(){
	oUl.stop().animate({'left':-num*100},100);
}
$(function(){
	getHTMLDate($("#top_time"));
	getskincookie();
	//layer.config({extend: 'extend/layer.ext.js'});
	Huiasidedisplay();
	var resizeID;
	$(window).resize(function(){
		clearTimeout(resizeID);
		resizeID = setTimeout(function(){
			Huiasidedisplay();
		},500);
	});

	$(".nav-toggle").click(function(){
		$(".Hui-aside").slideToggle();
	});
	$(".Hui-aside").on("click",".menu_dropdown dd li a",function(){
		if($(window).width()<768){
			$(".Hui-aside").slideToggle();
		}
	});
	/*левое меню*/
	$(".Hui-aside").Huifold({
		titCell:'.menu_dropdown dl dt',
		mainCell:'.menu_dropdown dl dd',
	});

	/*навигация по вкладкам*/
	$(".Hui-aside").on("click",".menu_dropdown a",function(){
		Hui_admin_tab(this);
		$(".Hui-aside").find(".menu_dropdown dl dd ul li").removeClass("current");
		$(this).parent().addClass("current");
	});

	$(document).on("click","#min_title_list li",function(){
		var bStopIndex=$(this).index();
		var iframe_box=$("#iframe_box");
		$("#min_title_list li").removeClass("active").eq(bStopIndex).addClass("active");
		iframe_box.find(".show_iframe").hide().eq(bStopIndex).show();
	});
	$(document).on("click","#min_title_list li i",function(){
		var aCloseIndex=$(this).parents("li").index();
		$(this).parent().remove();
		$('#iframe_box').find('.show_iframe').eq(aCloseIndex).remove();
		num==0?num=0:num--;
		tabNavallwidth();
	});
	$(document).on("dblclick","#min_title_list li",function(){
		var aCloseIndex=$(this).index();
		var iframe_box=$("#iframe_box");
		if(aCloseIndex>0){
			$(this).remove();
			$('#iframe_box').find('.show_iframe').eq(aCloseIndex).remove();
			num==0?num=0:num--;
			$("#min_title_list li").removeClass("active").eq(aCloseIndex-1).addClass("active");
			iframe_box.find(".show_iframe").hide().eq(aCloseIndex-1).show();
			tabNavallwidth();
		}else{
			return false;
		}
	});
	tabNavallwidth();

	$('#js-tabNav-next').click(function(){
		num==oUl.find('li').length-1?num=oUl.find('li').length-1:num++;
		toNavPos();
	});
	$('#js-tabNav-prev').click(function(){
		num==0?num=0:num--;
		toNavPos();
	});

	/**/
	$("#Hui-skin .dropDown-menu a").click(function(){
		var v = $(this).attr("data-val");
		$.cookie("Huiskin", v);
		var hrefStr=$("#skin").attr("href");
		var hrefRes=hrefStr.substring(0,hrefStr.lastIndexOf('skin/'))+'skin/'+v+'/skin.css';
		$(window.frames.document).contents().find("#skin").attr("href",hrefRes);
	});
});
