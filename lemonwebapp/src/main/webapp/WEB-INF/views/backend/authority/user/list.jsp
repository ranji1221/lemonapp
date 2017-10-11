<%@ page language="java" pageEncoding="UTF-8" %>
<!-- <link rel="stylesheet" href="./assets/styles/rolelist/rolelistREM.css" /> -->
<script src="${pageContext.request.contextPath}/js/user/list.js"></script>

<script src="${pageContext.request.contextPath}/js/twbs-pagination-1.4.1/jquery.twbsPagination.js"></script>
<script src="${pageContext.request.contextPath}/js/common/common.js"></script>
<script src="${pageContext.request.contextPath}/js/common/LemonForm.js"></script>

<script >
$("#dataList").LemonCreateTable({
    requestListUrl : '${pageContext.request.contextPath}/backend/authority/user/data',
   	trForm : function(index,value,data,extend){
		var phone = value.phone == null ? '无':value.phone ;
		var email = value.email == null ? '无':value.email ;
		var createTime = value.createTime == null ? '无':value.createTime.substr(0,10);
		tr_data = '<tr user_id='+value.id+extend+'>'+
			'<td class="checkboxtd">'+
				'<label>'+
					'<input  type="checkbox" name="layout">'+
				'</label>'+
			'</td>'+
			'<td>'+
				(index+1) +
			'</td>'+
			'<td title="姓名">'+
				value.userName +
			'</td>'+
			'<td title='+ phone +'>'+
				phone +
			'</td>'+
			'<td title='+ email +'>'+
				email +
			'</td>'+
			'<td title='+ createTime +'>'+
				createTime +
			'</td>'+
			'<td>'+
				'<span class="icon-eye-open iconact lookUser"></span>'+
			'</td>'+
			'<td>'+
				'<span class="icon-pencil iconact editUser" n_id="1"></span>'+
			'</td>'+
			'<td>'+
				'<span class="icon-trash iconact removeBtn"></span>'+
			'</td>'+
			'<td>'+
				'<span class="icon-key iconact"></span>'+
			'</td>'+
		'</tr>';
       	return tr_data; 
   		}
	})
	
</script>
<script>
	//删除弹框
	$(document).on("click", ".removeBtn", function(e) {
		
		e.preventDefault();
		var str = $(this).closest(".roleslist").length ?
			"角色" : $(this).closest(".sourcelist").length ?
			"资源" : $(this).closest(".userlist").length ?
			"用户" : $(this).closest(".recoverlist").length ? "数据库备份" : "";
		var strFoot = $(this).closest(".tfoot").length ? "这些" : "此";
		$('#removeModal .modal').modal('show');
		$.ajax({
			dataType: "html",
			url: '${pageContext.request.contextPath}/remove',
			async: true,
			success: function(data) {
				$("#removeModal .modal-body").html(data);
				if($("#removeModal .modal-body .removeName")) {
					$("#removeModal .modal-body .removeName").html(strFoot + str);
				}
			},
			error: function(data) {
				console.log(data);
			}
		});

	});
</script>

<div class="rolelist userlist">
	<ol class="breadcrumb">
		<li>
			<i class="glyphicon glyphicon-home"></i>
			<a href="#" data="2" url="home">首页</a>
		</li>
		<li>
			<a href="#" url="${pageContext.request.contextPath}/backend/authority/user/list">用户管理</a>
		</li>
		<li class="active">用户列表</li>
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
	<div class="alert alert-danger">
		<i class="glyphicon glyphicon-hand-right"></i> 温馨提示：此页面展示用户列表，您可以对用户查看、编辑、删除、授权及批量删除和新建的操作。单击右方x号，可以关闭此条提示语！

		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	</div>
	<div class="tablewrap">
		<table class="table ">
			<thead>
				<tr>
					<th style="width:0.8rem" class='checkboxth'>
						<label for="checkall">
							<input  type="checkbox" name="layout" id="checkall" >
						</label>
					</th>
					<th style="width:12.5%;min-width:94px;">
						编号
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<!-- <th style="width:25%"> -->
					<th>
						用户名
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<th>
						手机号码
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<th>
						邮箱
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<th>
						创建时间
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<th style="width:0.6rem">查看</th>
					<th style="width:0.6rem">编辑</th>
					<th style="width:0.6rem">删除</th>
					<th style="width:0.9rem;">授权</th>
				</tr>
			</thead>
			<tbody id = "dataList">
			
			</tbody>
		</table>
		<div class="tfoot">
			<div class="btns">
				<span class="newPro" url="${pageContext.request.contextPath}/backend/authority/user/add">
					<img src="${pageContext.request.contextPath}/img/sys/icons4.png" alt="">
					新建
				</span>
				<span>
					<img src="${pageContext.request.contextPath}/img/sys/icons1.png" alt="">
					刷新
				</span>
				<span  class="removeBtn">
					<img src="${pageContext.request.contextPath}/img/sys/icons2.png" alt="">
					删除
				</span>
			</div>
			<div class="pagination">

			</div>
		</div>
	</div>
</div>

<!-- 最大化容器 -->
<div class="maxcontainer">
	
</div>