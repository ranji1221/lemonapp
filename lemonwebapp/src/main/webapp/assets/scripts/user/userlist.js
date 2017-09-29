$(function(){
	// console.log('userlist')
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
	// 授权模态框的调用
	$('div.tablewrap').on('click','.icon-key',function(){
		// console.log('启动授权模态框用户');
		// $.ajax({cache: false});
		$.ajaxSetup ({ cache: false });
		var user_aut_id=$(this).closest('tr').find('td').eq(1).html().trim();
		// console.log(user_aut_id);
		$('#user-authorization .modal-content').attr('aut_id',user_aut_id);
		$('#user-authorization .modal-content').html('');
		$('#user-authorization .modal-content').load('backend/authority/user/authuser/modal')
		$('#user-authorization').modal('show');
	})
})