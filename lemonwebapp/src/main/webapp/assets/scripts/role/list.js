$(function(){
	// 全选中
	// $('#checkall').on('click',function(){
	// 	console.log($(this),$(this).prop('checked'))
	// 	if($(this).prop('checked')){
	// 		$('input[type=checkbox]').prop('checked',true);
	// 	}else{
	// 		$('input[type=checkbox]').prop('checked',false);

	// 	}
	// })
	// 复选框
	$('.tablewrap input').iCheck({
	    checkboxClass: 'icheckbox_flat-blue',
	    radioClass: 'iradio_flat-blue',
	    labelHover : true, 
	  	cursor : false,
	 });
	$('#checkall').on('ifChecked', function(event){
	  	$('.tablewrap input').iCheck('check')
	});
		$('#checkall').on('ifUnchecked', function(event){
	  	$('.tablewrap input').iCheck('uncheck')
	});
	// 删除
	// $('.tablewrap table').on('click','span.icon-trash',function(){
	// 	$(this).closest('tr').remove();
	// })
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
		// $.ajaxSetup ({ 
		// 	cache: false //关闭AJAX相应的缓存 
		// });
	// 授权模态框的调用
	$('div.tablewrap').on('click','.icon-key',function(){
		// console.log('启动授权模态框');
		// $.ajax({cache: false});
		$.ajaxSetup ({ cache: false });
		// console.log('尝试清除js');
		var role_aut_id=$(this).closest('tr').find('td').eq(1).html().trim();
		// console.log(role_aut_id);
		$('#role-authorization .modal-content').attr('aut_id',role_aut_id);
		$('#role-authorization .modal-content').html('');
		$('#role-authorization .modal-content').load('backend/authority/role/auth/modal');
		$('#role-authorization').modal('show');
	})
})