$(function(){
	// 排序
	$('div.tablewrap table tr th span.sort').on('click',function(){
		var zlsortup=$(this).find('.glyphicon-triangle-top');
		var zlsortdown=$(this).find('.glyphicon-triangle-bottom');
		var zlsort=zlsortup.css('opacity');

		$(this).closest('th').siblings('th').find('span i').css('opacity','1');
		if(zlsort=='1'){
			zlsortup.css('opacity','0');
			zlsortdown.css('opacity','1');
		}else{
			zlsortup.css('opacity','1');
			zlsortdown.css('opacity','0');
		}		
	})
	// 展示进度
	$('div.tablewrap').on('click','.leading',function(){
		// console.log('启动进度条');
		// $.ajax({cache: false});
		// $.ajaxSetup ({ cache: false });
		// console.log('尝试清除js');
		// $('#leading-progress .modal-content').html('');
		// $('#leading-progress .modal-content').load('./pages/role/role-authorization.html')
		$('#leading-progress').modal({backdrop: 'static', keyboard: false}); ;
		$('#leading-progress').modal('show');
	})
	// 展示备注
	$('div.tablewrap').on('click','.remarks',function(){
		// console.log('备注信息');
		// $.ajax({cache: false});
		// $.ajaxSetup ({ cache: false });
		// console.log('尝试清除js');
	
		$('#database-remarks .database-remark').html("然则我获得的┞封个S变量却老是少一部分，有人说AsString只能限制在64K以下，但我的S实际上只有33K阁下，并且不是说Delphi3以上的String的理论值已经是4G了吗？我在写一个数据库法度榜样时，须要大大一个表中获得备注字段的内容然后写入另一个表中，我是用：var s :string; s:=Query.FieldByName('MemoField').AsString;如不雅确切有如许的限制的话，我该若何实现上述功能？还请各位大大侠多多指导！！");
		// $('#leading-progress .modal-content').load('./pages/role/role-authorization.html')
		
		$('#database-remarks').modal('show');
	})
})
