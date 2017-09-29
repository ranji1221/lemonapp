<%@ page language="java" pageEncoding="UTF-8" %>
<ol class="breadcrumb breadcrumb_margin">
	<li>
		<i class="glyphicon glyphicon-home"></i>
		<a href="" url="home" data="2">首页</a>
	</li>
	<li>
		<a href="" url="${pageContext.request.contextPath}/backend/authority/user/listuser">用户管理</a>
	</li>
	<li class="active">添加用户</li>
	<div class="nav-search" id="nav-search">
		<form class="form-search">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="搜索你想找到的...">
				<span class="input-group-btn">
			        <button class="btn btn-default" type="button">
						<img src="${pageContext.request.contextPath}/img/sys/iconsearch.png" alt="">
			        </button>
			        </span>
			</div>
			<!-- /input-group -->
		</form>
	</div>
</ol>
<div class="container-fluid">
	<!--编辑用户最大化开始-->
	<div class="row user_hearder">
		<div class="col-lg-2 col-md-2 col-sm-3 col-xs-3 user_hearde_font">
			<span>添加用户</span>
		</div>
		<div class="pull-right col-lg-2 col-md-3 col-sm-4 col-xs-4 role_hearde_icon">
			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 role_hearde_this_icon red_border">
				<!--<a href=""><span class="glyphicon glyphicon-remove red_back"></span></a>-->
				<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="" />
			</div>

			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 role_hearde_this_icon green_border dom_minimize">
				<!--<a href=""><span class="small_icon glyphicon green_back">-</span></a>-->
				<img src="${pageContext.request.contextPath}/img/sys/modal2.png" alt="" />
				<div class="hidmission">
					<span class="icon-pencil icon-slidenav"></span>
					<p url="./pages/user/add" u_id="3" n_id="-1">添加用户</p>
					<span class="iconfont icon-chuyidong1 del"></span>
				</div>
			</div>
		</div>
	</div>
	<div class="row user_content form_content" u_id="3" n_id="-1">
		<form action="">
		<div class="row user_form">
			<div action="" class="form-horizontal col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="form-group ">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
						<span></span>
					</div>
					<label class="col-lg-2 col-md-2 col-sm-3 col-xs-3 control-label">用户名称：</label>
					<div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 form_input col-lg-offset-1 col-md-offset-1 col-sm-offset-1  role_name sliderInput">
						<input type="text" maxlength="15" name="name" class="form-control role" placeholder="请输入用户名称">
						<span class="minlimitNum">15</span>
					</div>
				</div>
			</div>
			<div class="error_font col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<!--visible-->
				<span class="error_icon icon-exclamation-sign"></span>
				<span>您输入了特殊符号！</span>
			</div>
			<div class="succse_font col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<!--visible-->
				<span class="succse_icon glyphicon glyphicon-ok-sign"></span>
				<span>输入正确</span>
			</div>
		</div>
		<div class="row user_content_error_xian">
			<div class="error_xian col-lg-8 col-md-8 col-sm-8 col-xs-8 ">
				<div class="col-lg-3 col-md-3 col-xs-4"></div>
				<div class="error_box col-lg-5 col-md-7 col-sm-6 col-xs-6"></div>
			</div>
		</div>
		<ul class="row user_fath">
			<li class="col-lg-7 col-md-7 col-sm-9 col-xs-12 fath_select">
				<div class="col-lg-1 col-md-1 col-sm-1  col-xs-1 form_clire  text-center">
					<span></span>
				</div>
				<label class="col-lg-3 col-md-3 col-sm-4 col-xs-3 control-label fath_select_font">分配用户：</label>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 form_input">
					<select class="form-control select select-primary select-block mbl" name="user" data-toggle="select">

						<option value="0" disabled="disabled">选择分配用户</option>
						<option value="1">用户列表</option>
						<option value="2">首页</option>
						<option value="3">用户列表</option>
						<option value="4">用户列表</option>

					</select>
				</div>
			</li>
		</ul>
		<div class="row user_phone">
			<div action="" class="form-horizontal col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="form-group ">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
						<span></span>
					</div>
					<label class="col-lg-2 col-md-2 col-sm-3 col-xs-3 control-label fath_select_font sliderBox">联系电话：</label>
					<div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 form_input col-lg-offset-1 col-md-offset-1 col-sm-offset-1 ">
						<input type="text" name="phone" maxlength="11" class="form-control phone" placeholder="请输入用户联系方式">
						<span>11</span>
					</div>
				</div>
			</div>
			<div class="error_font col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<!--visible-->
				<span class="error_icon icon-exclamation-sign"></span>
				<span>您输入了特殊符号！</span>
			</div>
		</div>
		<div class="row user_emily">
			<div action="" class="form-horizontal col-lg-9 col-md-9 col-sm-9 col-xs-12">
				<div class="form-group ">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
						<span></span>
					</div>
					<label class="col-lg-2 col-md-2 col-sm-3 col-xs-3  control-label fath_select_font">邮箱：</label>
					<div class="col-lg-8 col-md-8 col-sm-6 col-xs-6 form_input col-lg-offset-1 col-md-offset-1 col-sm-offset-1 ">
						<input type="text" maxlength="15" name="emily" class="form-control emlia" placeholder="请输入用户邮箱">
						<span>15</span>
					</div>
				</div>
			</div>
			<div class="error_font col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<!--visible-->
				<span class="error_icon icon-exclamation-sign"></span>
				<span>您输入了特殊符号！</span>
			</div>
		</div>
		<div class="row role_button">
			<div class=" col-sm-6 col-md-6 col-lg-6 col-xs-6 role_succse">
				<button type="submit" class="btn btn-default">确认</button>
			</div>
			<div class=" col-sm-4 col-md-4 col-lg-4 col-xs-4 role_remove">
				<button type="submit" class="btn btn-default">取消</button>
			</div>
		</div>
	</div>
	</form>
	<!--编辑用户最大化结束-->
</div>
<script>
	//滑块限制字符
	$(".sliderInput").css("width","0");
	var minlimitNum=5;
	$(".minlimitNum").html(minlimitNum);
	var docu_w = parseInt($(".sliderInput").css("width"));
	$(".error_box").slider({
		orientation: "horizontal",
		range: "min",
		max:70,
		value: 1,
		slide: function(event, ui) {
			var ui_value = ui.value
			$(".sliderInput").css("width",ui_value+"%");
			$(".minlimitNum").html(minlimitNum+parseInt(ui_value/10));
			$(".sliderInput").find("input").val($(".sliderInput").find("input").val().slice(0,minlimitNum+parseInt(ui_value/10)))
			$(".sliderInput").find("input").prop("maxlength",minlimitNum+parseInt(ui_value/10))
			limitChangeLength($(".form_input .role"), parseInt($(".minlimitNum").html()));
		}
	})
	$('[data-toggle="select"]').select2();
	
	function limitChangeLength(elm, limitLength) {
		$(elm).attr("maxLength", limitLength);
		$(elm).keyup(function() {
			var length = $(elm).val().length;
			$(elm).siblings("span").html(limitLength - length);
		});
	}
	limitChangeLength($(".form_input .role"), parseInt($(".minlimitNum").html()));
	limitChangeLength($(".form_input .phone"), 11)
	limitChangeLength($(".form_input .emlia"), 15)

	//点击缩小
	$('.blue_border').on("click", function(e) {
		e.preventDefault()
		$.ajax({
			url: "./pages/user/list.html",
			dataType: "html"
		}).done(function(data) {
			$(".ajax_dom").empty()
			$(".ajax_dom").html(data)
			$("#editUserModal").modal('show')
		})
	})
	//点击关闭
	$('.red_border').on("click", function(e) {
		e.preventDefault()
		$.ajax({
			url: "./pages/user/list.html",
			dataType: "html"
		}).done(function(data) {
			$(".ajax_dom").empty()
			$(".ajax_dom").html(data)
		})
	})
</script>