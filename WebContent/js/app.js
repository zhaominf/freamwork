/**
 * 
 */
$.fn.createPage = function(nodecode) {
	
	var page = $("div[nodecode='"+nodecode+"']");
	if (page.length>0)
	{
		return $(this).showPage(nodecode);
	}
	else
	{
		$("div[dynamicpage]").each(function(){
			if($(this).attr("nodecode")!=nodecode&&$(this).css("display")=="block")
			{
				$(this).hide();
			}
		});
		$("div[dynamicbutton]").each(function(){
			if($(this).attr("nodecode")!=nodecode)
			{
				$(this).removeClass("buttonclick");
				$(this).addClass("blue");
			}
		});
		//创建页面
		var newpage = $("<div></div>");
		newpage.attr("id","page"+nodecode);
		newpage.attr("nodecode",nodecode);
		newpage.attr("dynamicpage","true");
		newpage.css("background-color","#FFFFFF");
		newpage.css("width","100%");
		newpage.css("height","100%");
		newpage.css("display","block")
		newpage.html(nodecode);
		
		//创建按钮
		var closebutton = $("<div></div>");
		closebutton.addClass("round");
		closebutton.attr("nodecode",nodecode);
		closebutton.bind("click",function(e){
			$(this).deletePage($(this).attr("nodecode"));
			$(this).parent().remove();
			e.stopPropagation();//终止事件冒泡  
		});
		var closebuttontext = $("<div></div>");
		closebuttontext.addClass("roundtext");
		closebuttontext.html(nodecode);
		
		var newbutton = $("<div></div>").append(closebuttontext).append(closebutton);
		newbutton.addClass("button");
		newbutton.addClass("buttonclick");
		newbutton.attr("nodecode",nodecode);
		newbutton.attr("id","button"+nodecode);
		newbutton.attr("dynamicbutton","true");
		
		newbutton.bind("click",function(e){
			$(this).showPage($(this).attr("nodecode"));
			e.stopPropagation();//终止事件冒泡  
		});
		
		$(".menubar-Main").append(newbutton); 
		$(this).append(newpage); 
	}
	
}
$.fn.deletePage = function(nodecode){
	$("div[nodecode='"+nodecode+"']").remove();
	$("div[dynamicpage]:last-child").show();
}
$.fn.showPage = function(nodecode){
	$("div[dynamicpage]").each(function(){
		if($(this).attr("nodecode")!=nodecode&&$(this).css("display")=="block")
		{
			$(this).hide();
		}
	});
	$("div[nodecode='"+nodecode+"']").show();
	$(this).showbutton(nodecode);
}
$.fn.showbutton = function(nodecode){
	$("div[dynamicbutton]").each(function(){
		if($(this).attr("nodecode")!=nodecode)
		{
			$(this).removeClass("buttonclick");
			$(this).addClass("blue");
		}
		else
		{
			$(this).removeClass("blue");
			$(this).addClass("buttonclick");
		}
	});
}