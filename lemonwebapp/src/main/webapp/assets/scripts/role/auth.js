$(function(){
	var role_aut_id=$('#role-authorization .modal-content').attr('aut_id');
	$('.min').find('p').attr('role_aut_id',role_aut_id);
	$('.min').find('p').html('角色授权'+role_aut_id);
	
	var role_input=localStorage['this_role_input'+role_aut_id]?JSON.parse(localStorage['this_role_input'+role_aut_id]):'';
	if(role_input){
		$('.maxcontainer .rolenameinput').val(role_input);
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
		zl_input.off().on('keyup',function(){
			var zl_con=$(this).val()
			if($(this).val().length>zl_limit){
				zl_message.html(0);
				zl_input.val(zl_con.substr(0,zl_limit));
			}else{
				zl_message.html(zl_limit*1-$(this).val().length*1)
			}
		})
	}
		zishuxianzhi('.maxcontainer .rolenameinput','.maxcontainer .rolenamelimit',15);
		// 滑块
		var changenum;//修改限制字数用
		$(".role-slider").slider({
		    // orientation: "vertical",
		    range: "min",
		    min: 0,
		    max: 100,
		    value: 50,
		    slide: function (event, ui) {
		    	changenum=Math.floor((ui.value-50)/5);
				zishuxianzhi('.maxcontainer .rolenameinput','.maxcontainer .rolenamelimit',15+changenum);
		    	// console.log(changenum)
		        // console.log(ui.value-50)
		        $('.maxcontainer .inputwrappermax').css('width',50+ui.value/2+'%')
		    }
		});
		var widthpercent=$(".role-slider").slider('value')
		$('.maxcontainer .inputwrappermax').css('width',50+widthpercent/2+'%')	
		// 复选框
		$('.maxcontainer header input[type=checkbox]').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue',
		    labelHover : true, 
		  	cursor : false,
		 });
		$('.maxcontainer .form-group >label.prompt input[type=checkbox]').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue',
		    labelHover : true, 
		  	cursor : false,
		});
		$('.maxcontainer .checkallaut').on('ifChecked', function(event){
		  	// $(".role-authorization-jstree").jstree(true).select_all()
		  	$(".maxcontainer .role-authorization-jstree").jstree(true).check_all ()
		  	console.log($('.role-authorization-jstree').jstree().select_node())
		});
		$('.maxcontainer .checkallaut').on('ifUnchecked', function(event){
		  	$(".maxcontainer .role-authorization-jstree").jstree(true).uncheck_all ()
		  	$('.maxcontainer .role-authorization-jstree .jstree-disabled').each(function(){
				$(".maxcontainer .role-authorization-jstree").jstree(true).check_node($(this))
			})
		  	// $(".maxcontainer .role-authorization-jstree").jstree(true).check_node('.jstree-disabled')
		  	// $(".role-authorization-jstree").jstree(true).deselect_all()
		});
		$('.maxcontainer .slidedownallaut').on('ifChecked', function(event){
		  	$(".maxcontainer .role-authorization-jstree").jstree(true).open_all()
		});
		$('.maxcontainer .slidedownallaut').on('ifUnchecked', function(event){
		  	$(".maxcontainer .role-authorization-jstree").jstree(true).close_all()
		});
		// 树形图
		// 从本地获取变化前jstree选中项
		var selected=localStorage['this_role_bulkadd'+role_aut_id]?JSON.parse(localStorage['this_role_bulkadd'+role_aut_id]):[];
		
		// 根据本地储存更新初始状态
		$(".maxcontainer .role-authorization-jstree").on("ready.jstree", function(e, data) {
				// console.log('执行同步')
			if(selected.length>0){
				$(".maxcontainer .role-authorization-jstree").jstree(true).uncheck_all()
				$(".maxcontainer .role-authorization-jstree").jstree(true).check_node(selected)
			}else{
				// console.log('未储存')
			}
		});
		$(".maxcontainer .role-authorization-jstree").jstree({
			'core' : {
				'themes':{'icons':false},
		        'data' : [
		            {
		            	'id':'1',
		                "text" : "插件管理",
		                "state" : {"opened" : true,"selected" : true,"disabled" : true },
		                
		                "children" : [
							{
							'id':'2',
							"text" : "查看",
							"state" : { "selected" : true,"disabled" : true },
							// "icon" : "glyphicon glyphicon-flash"
							},
							{ 'id':'3',"text" : "添加", "state" : { "selected" : true,"disabled" : true } },
							{ 'id':'4',"text" : "修改", "state" : { "selected" : true,"disabled" : true } },
							{ 'id':'5',"text" : "删除", "state" : { "selected" : true,"disabled" : true } },
							{ 'id':'6',"text" : "本地安装", "state" : { "selected" : true,"disabled" : true } },
							{ 'id':'7',"text" : "禁用", "state" : { "selected" : true,"disabled" : true } },
							{ 'id':'8',"text" : "本地安装", "state" : { "selected" : true,"disabled" : true } },
			            ]
		        	},
		        	{
		                'id':'9',"text" : "权限管理",
		                "state" : {"opened" : true },
		                "children" : [
		                    {
			                    'id':'10',"text" : "规则管理",
			                    // "state" : { "selected" : true },
			                    "children" : [
				                    {'id':'11',"text" : "规则管理1",},
				                    {'id':'12',"text" : "规则管理2",},
				                    {'id':'13',"text" : "规则管理3",},
				                    {'id':'14',"text" : "规则管理4",},
				              	]
			                },
		                  	{ 
		                  		'id':'15',"text" : "角色组", 
		                  		"state" : { "selected" : true } ,
		                  		"children" : [
				                    {'id':'16',"text" : "角色组1",},
				                    {'id':'17',"text" : "角色组2",},
				                    {'id':'18',"text" : "角色组3",},
				                    {'id':'19',"text" : "角色组4",},
				              	]
		                  	}
		              	]
		        	}
		      	]
		    },
			"checkbox": {
				"keep_selected_style": false,
				'cascade_to_disabled':false,
		        // "tie_selection" : false,
			},
			"plugins": ["checkbox"]
		});

	// 点击最小化、大小切换时保存状态至本地数据		
		$('.min').on('click',function(){
			selected=$(".maxcontainer .role-authorization-jstree").jstree(true).get_checked();
			localStorage['this_role_bulkadd'+role_aut_id]=JSON.stringify(selected);
			localStorage['this_role_input'+role_aut_id]=JSON.stringify($('.maxcontainer .rolenameinput').val());
		})	
		$('.maxrole').on('click',function(){
			selected=$(".maxcontainer .role-authorization-jstree").jstree(true).get_checked();
			localStorage['this_role_bulkadd'+role_aut_id]=JSON.stringify(selected);
			localStorage['this_role_input'+role_aut_id]=JSON.stringify($('.maxcontainer .rolenameinput').val());
		})
		// 关闭时清除
		$('.zclose').on('click',function(){
			localStorage.removeItem('this_role_bulkadd'+role_aut_id);
			localStorage.removeItem('this_role_input'+role_aut_id);
		})
	// 还原至模态框
	$('.maxcontainer').off('click.returnmin').on('click.returnmin','.maxrole',function(){
	// $('.maxcontainer .maxrole').on('click',function(){
		
		$.ajaxSetup ({ cache: false });
		$('.ajax_dom').html('');
        $('.ajax_dom').load('backend/authority/role/list').show();
		$('#role-authorization .modal-content').html('');
		$('#role-authorization .modal-content').load('backend/authority/role/auth/modal')
		$('#role-authorization').modal('show');
	})
	$('.maxcontainer').off('click.lgclose').on('click.lgclose','.zclose',function(){
	// $('.maxcontainer .zclose').on('click',function(){
		// 容器关闭
		// $('.ajax_dom').html('');
		// $('.ajax_dom').hide();
		$('.ajax_dom').html('');
        $('.ajax_dom').load('backend/authority/role/list').show();
		
	})
})