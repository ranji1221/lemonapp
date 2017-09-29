(function($){
	$(function(){
		$(document).on("click",".rolelist .tfoot .newPro,.slidenav li",function(){
			var url = $(this).attr("url")
			if(url){
				$.ajax({
					url:url,
					dataType:"html"
				}).done(function(data){
					$(".right-container .ajax_dom").empty()
					$(".right-container .ajax_dom").show()
					$($.parseHTML(data,document, true)).appendTo($(".right-container .ajax_dom"))
				})
			}
		})
	})
})(jQuery)
