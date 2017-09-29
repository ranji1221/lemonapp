$(function(){
	console.log('progress')
	// 进度条容器
	var progress_box=$('#leading-progress .progressbox')
	// 进度条
	var progress_bar=$('#leading-progress .progress-bar')
	// 进度提示文字
	var pro_text=$('#leading-progress .progress-bar .pro-text')
	// 成功提示
	var leading_res_success=$('.leading-res-success')
	// 失败提示
	var leading_res_error=$('.leading-res-error')
	// 临时动画
	function progress_animation(){
		var percentage=0;
		var leading=setInterval(function(){
			if(percentage==100){
				clearInterval(leading);
				progress_box.fadeOut(function(){
					leading_res_success.fadeIn()
				})
			}else{
				percentage++;
				progress_bar.width(percentage+'%');
				pro_text.html(percentage+'%')
			}
		},100)
	}
	// 进度模态框展示前初始化
	$('#leading-progress').on('show.bs.modal', function (e) {
	    progress_box.css('display','block');
	    leading_res_success.css('display','none');
	    leading_res_error.css('display','none');
	    progress_bar.width('0%');
		pro_text.html('0%')
	})
	// 进度模态框展示时启动动画
	$('#leading-progress').on('shown.bs.modal', function (e) {
	    progress_animation()
	})
})