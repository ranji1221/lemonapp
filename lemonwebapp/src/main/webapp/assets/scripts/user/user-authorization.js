$(function(){
	// console.log('user-authorization');
	// 获取点击列表编号作为唯一标识符
	var user_aut_id=$('#user-authorization .modal-content').attr('aut_id');
	$('.min').find('p').attr('user_aut_id',user_aut_id);
	$('.min').find('p').html('用户授权'+user_aut_id);

	// console.log(user_aut_id);
	var user_input=localStorage['this_user_input'+user_aut_id]?JSON.parse(localStorage['this_user_input'+user_aut_id]):'';
	if(user_input){
		$('#user-authorization .rolenameinput').val(user_input);
	}
	// 限制字数方法zl_input获取输入框元素zl_message获取提示信息元素zl_limit限制字数值
	function zishuxianzhi(zl_inputele,zl_messageele,zl_limitnum){
		var zl_input=$(zl_inputele);
		var zl_message=$(zl_messageele);
		var zl_limit=zl_limitnum;
		// console.log(zl_input)
		if(zl_limit-zl_input.val().length<0){

			zl_message.html(0);
		}else{
			zl_message.html(zl_limit-zl_input.val().length);
			
		}
		// 配合滑块截取超出字符，单独限制字符不需要此片段
		var zl_con=zl_input.val()
		if(zl_input.val().length>zl_limit){
			zl_message.html(0);
			zl_input.val(zl_con.substr(0,zl_limit));
		}else{
			zl_message.html(zl_limit*1-zl_input.val().length*1)
		}
		zl_input.on('keyup',function(){
			var zl_con=$(this).val()
			if($(this).val().length>zl_limit){
				zl_message.html(0);
				zl_input.val(zl_con.substr(0,zl_limit));
			}else{
				zl_message.html(zl_limit*1-$(this).val().length*1)
				
			}
		})
	}
	zishuxianzhi('#user-authorization .rolenameinput','#user-authorization .rolenamelimit',15);

	// 复选框
	$('#user-authorization header input[type=checkbox]').iCheck({
	    checkboxClass: 'icheckbox_flat-blue',
	    radioClass: 'iradio_flat-blue',
	    labelHover : true, 
	  	cursor : false,
	 });
	$('#user-authorization .form-group >label.prompt input[type=checkbox]').iCheck({
	    checkboxClass: 'icheckbox_flat-blue',
	    radioClass: 'iradio_flat-blue',
	    labelHover : true, 
	  	cursor : false,
	 });
	$('#user-authorization .checkallaut').on('ifChecked', function(event){
	  	// $(".user-authorization-jstree").jstree(true).select_all()
	  	$("#user-authorization .user-authorization-jstree").jstree(true).check_all ()
	});
	$('#user-authorization .checkallaut').on('ifUnchecked', function(event){
	  	$("#user-authorization .user-authorization-jstree").jstree(true).uncheck_all ()
	  	$('#user-authorization .user-authorization-jstree .jstree-disabled').each(function(){
			$("#user-authorization .user-authorization-jstree").jstree(true).check_node($(this))
		})
		// $("#user-authorization .user-authorization-jstree").jstree(true).check_node('.jstree-disabled')
	  	// $(".user-authorization-jstree").jstree(true).deselect_all()
	});
		$('#user-authorization .slidedownallaut').on('ifChecked', function(event){
	  	$("#user-authorization .user-authorization-jstree").jstree(true).open_all()
	});
		$('#user-authorization .slidedownallaut').on('ifUnchecked', function(event){
	  	$("#user-authorization .user-authorization-jstree").jstree(true).close_all()
	});
	// 树形图
	// 从本地获取变化前jstree选中项
		var selected=localStorage['this_user_bulkadd'+user_aut_id]?JSON.parse(localStorage['this_user_bulkadd'+user_aut_id]):[];
		
		// 根据本地储存更新初始状态
		$(".user-authorization-jstree").on("ready.jstree", function(e, data) {
				// console.log('执行同步')
			if(selected.length>0){
				$(".user-authorization-jstree").jstree(true).uncheck_all()
				$(".user-authorization-jstree").jstree(true).check_node(selected)
			}else{
				// console.log('未储存')
			}
		});
	$(".user-authorization-jstree").jstree({
		'core' : {
			'themes':{'icons':false},
	        'data' : [
	        {"id":"1","parent":"#","text":"研发部","state":{"opened":true}},
	        {"id":"2","parent":"1","text":"UI设计师","state":{"selected":true}},
	        {"id":"3","parent":"1","text":"前端工程师","state":{"selected":true}},
	        {"id":"4","parent":"1","text":"PHP工程师","state":{"selected":true}},
	        {"id":"5","parent":"1","text":"JAVA工程师",},
	        {"id":"6","parent":"1","text":"PHP工程师",},
	        {"id":"7","parent":"1","text":"PHP工程师",},
	        {"id":"8","parent":"#","text":"研发部2","state":{"opened":true}},
	        {"id":"9","parent":"8","text":"UI设计师","state":{"selected":true}},
	        {"id":"10","parent":"8","text":"前端工程师","state":{"selected":true}},
	        {"id":"11","parent":"8","text":"PHP工程师","state":{"selected":true}},
	        {"id":"12","parent":"8","text":"JAVA工程师",},
	        {"id":"13","parent":"8","text":"PHP工程师",},
	        {"id":"14","parent":"8","text":"PHP工程师",},
	        {"id":"15","parent":"#","text":"研发部3","state":{"opened":true}},
	        {"id":"16","parent":"15","text":"UI设计师","state":{"selected":true}},
	        {"id":"17","parent":"15","text":"前端工程师","state":{"selected":true}},
	        {"id":"18","parent":"15","text":"PHP工程师","state":{"selected":true}},
	        {"id":"19","parent":"15","text":"JAVA工程师",},
	        {"id":"20","parent":"15","text":"PHP工程师",},
	        {"id":"21","parent":"15","text":"PHP工程师",},
	        {"id":"22","parent":"#","text":"研发部4","state":{"opened":true}},
	        {"id":"23","parent":"22","text":"UI设计师","state":{"selected":true}},
	        {"id":"24","parent":"22","text":"前端工程师","state":{"selected":true}},
	        {"id":"25","parent":"22","text":"PHP工程师","state":{"selected":true}},
	        {"id":"26","parent":"22","text":"JAVA工程师",},
	        {"id":"27","parent":"22","text":"PHP工程师",},
	        {"id":"28","parent":"22","text":"PHP工程师",},
      	]
	    },
		"checkbox": {
			"keep_selected_style": false,
			'cascade_to_disabled':false,
			// 'tie_selection':false,
		},
		"plugins": ["checkbox"]
	});
	// 点击最小化、大小切换时保存状态至本地数据		
		$('.min').on('click',function(){
			selected=$(".user-authorization-jstree").jstree(true).get_checked();
			localStorage['this_user_bulkadd'+user_aut_id]=JSON.stringify(selected);
			localStorage['this_user_input'+user_aut_id]=JSON.stringify($('#user-authorization .rolenameinput').val());
		})	
		$('.maxuser').on('click',function(){
			selected=$(".user-authorization-jstree").jstree(true).get_checked();
			localStorage['this_user_bulkadd'+user_aut_id]=JSON.stringify(selected);
			localStorage['this_user_input'+user_aut_id]=JSON.stringify($('#user-authorization .rolenameinput').val());
		})
		// 关闭时清除
		$('.zclose').on('click',function(){
			localStorage.removeItem('this_user_bulkadd'+user_aut_id);
			localStorage.removeItem('this_user_input'+user_aut_id);
		})
	// 放大按钮
	$('.modal .maxuser').on('click',function(){
		console.log('触发次数+1')
		// 填充列表页
		$('.ajax_dom').html('');
        $('.ajax_dom').load('./pages/user/user-authorizationlg.html').show();
    })
})