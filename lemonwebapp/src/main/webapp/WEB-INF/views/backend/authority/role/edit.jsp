<%@ page language="java" pageEncoding="UTF-8" %>

<!--<link rel="stylesheet" href="assets/styles/role/role.css">-->
<ol class="breadcrumb breadcrumb_margin">
	<li>
		<i class="glyphicon glyphicon-home"></i>
		<a href="#" data="2" url="home">首页</a>
	</li>
	<li>
		<a href="#" url="${pageContext.request.contextPath}/backend/authority/role/list">角色管理</a>
	</li>
	<li>
		<a href="" url="${pageContext.request.contextPath}/backend/authority/role/list">角色列表</a>
	</li>
	<li class="active">编辑角色</li>
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

	<!--编辑角色最大化开始-->
	<div class="row role_hearder">
		<div class="col-lg-2 col-md-2 col-sm-3 col-xs-3 role_hearde_font">
			<span>编辑角色</span>
		</div>
		<div class="pull-right col-lg-2 col-md-3 col-sm-4 col-xs-4 role_hearde_icon">
			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 role_hearde_this_icon red_border">

				<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="" />
				<!--<a href=""><span class="glyphicon glyphicon-remove red_back"></span></a>-->
			</div>
			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1  role_hearde_this_icon  blue_border">
				<!--<a href=""><span class="glyphicon glyphicon-resize-small blue_back"></span></a>-->

				<img src="${pageContext.request.contextPath}/img/sys/modal3.png" alt="" />
			</div>
			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 role_hearde_this_icon green_border dom_minimize">
				<!--<a href=""><span class="small_icon glyphicon green_back">-</span></a>-->
				<img src="${pageContext.request.contextPath}/img/sys/modal2.png" alt="" />
				<div class="hidmission">
					<span class="icon-pencil icon-slidenav"></span>
					<p url="${pageContext.request.contextPath}/backend/authority/role/edit/max" u_id="2">编辑角色</p>
					<span class="iconfont icon-chuyidong1 del"></span>
				</div>
			</div>
		</div>
	</div>
	<div class="row role_content form_content" u_id="2" >
		<form action="">
			<div class="row role_form">
				<div action="" class="form-horizontal col-lg-8 col-md-9 col-sm-9 col-xs-12">
					<div class="form-group ">
						<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
							<span></span>
						</div>
						<label class="col-lg-2 col-md-3 col-sm-3 col-xs-3 control-label">角色名称：</label>
						<div class="col-lg-8 col-md-7 col-sm-6 col-xs-6 form_input col-lg-offset-1 col-md-offset-0 col-sm-offset-1 role_name sliderInput">
							<input type="text" maxlength="15" name="name" class="form-control " placeholder="请输入角色名称">
							<span class="minlimitNum">15</span>
						</div>
					</div>
				</div>
				<div class="error_font col-lg-3 col-md-3 col-sm-3 col-xs-3">
					<!--visible-->
					<span class="error_icon icon-exclamation-sign"></span>
					<span>您输入了特殊符号！</span>
				</div>
			</div>
			<div class="row role_content_error_xian">
				<div class="error_xian col-lg-8 col-md-8 col-sm-8 col-xs-8 ">
					<div class="col-lg-3 col-md-3 col-xs-4"></div>
					<div class="error_box col-lg-5 col-md-7 col-sm-6 col-xs-6"></div>
				</div>
			</div>
			<ul class="row role_fath">
				<li class="col-lg-7 col-md-12 col-sm-12 col-xs-12 fath_select">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
						<span></span>
					</div>
					<label class="col-lg-3 col-md-3 col-sm-3 col-xs-3 control-label fath_select_font">父级角色：</label>
					<div class="col-lg-3 col-md-2 col-sm-2 col-xs-2 form_input">
						<select class="form-control select select-primary select-block mbl" data-toggle="select" name="fath">

							<option value="0" disabled="disabled">选择父级角色</option>
							<option value="1">角色列表</option>
							<option value="2">首页</option>
							<option value="3">角色列表</option>
							<option value="4">角色列表</option>

						</select>
					</div>
					<div class="error_font col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<!--visible-->
						<span class="error_icon icon-exclamation-sign"></span>
						<span>您还未选择依赖角色</span>
					</div>
				</li>
				<li class="col-lg-5 col-md-12 col-sm-12 col-xs-12 fath_select">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
						<span></span>
					</div>
					<label class="col-lg-4 col-md-3 col-sm-3 col-xs-3 control-label fath_select_font">依赖角色：</label>
					<div class="col-lg-4 col-md-2 col-sm-2 col-xs-2 form_input">
						<select class="form-control select select-primary select-block mbl" data-toggle="select" name="yilai">

							<option value="0" disabled="disabled">选择依赖角色</option>
							<option value="1">角色列表</option>
							<option value="2">首页</option>
							<option value="3">角色列表</option>
							<option value="4">角色列表</option>

						</select>
					</div>
				</li>
			</ul>
			<div class="row role_max_number">
				<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
					<span></span>
				</div>
				<label class="col-lg-2 col-md-3 col-sm-3 col-xs-3 control-label">最大限制用户数 ：</label>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 max_number_add">
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 reduce active">
						<a href=""><span>-</span></a>
					</div>
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 input">
						<input type="text" readonly  name="max_num">
					</div>
					<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 add">
						<a href=""><span>+</span></a>
					</div>
				</div>
			</div>
			<div class="row role_remarks">
				<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 form_clire  text-center">
					<span></span>
				</div>
				<label class="col-lg-2 col-md-2 col-sm-3 col-xs-3 control-label">备注 ：</label>
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 role_write">
					<textarea name="beizhu" id="" placeholder="请输入备注"></textarea>
				</div>
			</div>
			<div class="row role_button">
				<div class=" col-md-6 col-lg-6 col-sm-6 col-xs-6 role_succse">
					<button type="submit" class="btn btn-default">确认</button>
				</div>
				<div class=" col-md-4 col-lg-4 col-sm-4 col-xs-6 role_remove">
					<button type="submit" class="btn btn-default">取消</button>
				</div>
			</div>
	</div>
	</form>
	<!--编辑角色最大化结束-->
</div>
<script>
	(function($) {
		$(function() {
			
			//拖拽问题
			$(".sliderInput").css("width", "0");
			var minlimitNum = 5;
			$(".minlimitNum").html(minlimitNum);
//			var docu_w = parseInt($(".sliderInput").css("width"));
			
			$(".error_box").slider({
				orientation: "horizontal",
				range: "min",
				max: 70,
				value: 1,
				slide: function(event, ui) {
					var ui_value = ui.value
					$(".sliderInput").css("width", ui_value+"%");
					$(".minlimitNum").html(minlimitNum + parseInt(ui_value / 10));
					$(".sliderInput").find("input").val($(".sliderInput").find("input").val().slice(0, minlimitNum + parseInt(ui_value / 10)))
					$(".sliderInput").find("input").prop("maxlength", minlimitNum + parseInt(ui_value / 10))
					limitChangeLength($(".form_input input"), parseInt($(".minlimitNum").html()));
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
			limitChangeLength($(".form_input input"), parseInt($(".minlimitNum").html()))
			//加减数字
			$(".reduce").click(function(e) {

				e.preventDefault();
				var numVal = $(".input input").val();
				if(numVal == 1) {
					$(".add").addClass("active")
					$(".reduce").removeClass("active")
				}
				if(numVal > 0) {
					//					alert(1)
					$(".add").addClass("active")
					numVal--;
					$(".input input").val(numVal);
				}
			});
			$(".add").click(function(e) {
				e.preventDefault();
				var numVal = $(".input input").val();
				if(numVal < 10) {
					numVal++;
					$(".add").addClass("active")
					$(".reduce").addClass("active")
					$(".input input").val(numVal);
				}
				if(numVal == 10) {
					$(".reduce").addClass("active")
					$(".add").removeClass("active")
				}
			});
			//点击缩小
			$('.blue_border').on("click", function(e) {
				e.preventDefault()
				$.ajax({
					url: "${pageContext.request.contextPath}/backend/authority/role/list",
					dataType: "html"
				}).done(function(data) {
					$(".ajax_dom").empty()
					$(".ajax_dom").html(data)
					$("#editRoleModal").modal('show')
				})
			})
			//点击关闭
			$('.red_border').on("click", function(e) {
				e.preventDefault()
				$.ajax({
					url: "${pageContext.request.contextPath}/backend/authority/role/list",
					dataType: "html"
				}).done(function(data) {
					$(".ajax_dom").empty()
					$(".ajax_dom").html(data)
				})
			})
		})
	})(jQuery)
</script>