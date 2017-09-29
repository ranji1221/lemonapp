<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/js/role/rolelist.js"></script>
<script >
	//alert(122);
	initHtml(11);
	function initHtml(data){
		var html = '';
		if(true){
			var role = ${roleList};
			$.each(role,function(index,value,role){
				html += '<tr>'+
				'<td class="checkboxtd">'+
					'<label>'+
						'<input  type="checkbox" name="layout">'+
					'</label>'+
				'</td>'+
				'<td>'+
					(index+1) +
				'</td>'+
				'<td title="首页">'+
					value.roleName +//${role.roleName}
				'</td>'+
				'<td title="首页">'+
					"123"  +
				'</td>'+
				'<td>'+
					'<span class="icon-eye-open iconact lookRole"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-pencil iconact editRole" n_id="1"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-trash iconact removeBtn"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-key iconact"></span>'+
				'</td>'+
			'</tr>';
				
			})		
		}
		$('#rolesList').html(html);
	}

</script>

<div class="rolelist roleslist">
	<ol class="breadcrumb">
	    <li>
	    	<i class="glyphicon glyphicon-home"></i>
	    	<a href="#" data="2" url="home">首页</a>
	    </li>
	    <li>
	    	<a href="#" url="/pages/role/rolelist">角色管理</a>
	    </li>
	    <li class="active">角色列表</li>
    	<div class="nav-search" id="nav-search">
			<form class="form-search">
				<div class="input-group">
			        <input type="text" class="form-control" placeholder="搜索你想找到的...">
			        <span class="input-group-btn">
			        <button class="btn btn-default" type="button">
						<img src="${pageContext.request.contextPath}/img/sys/iconsearch.png" alt="">
			        </button>
			        </span>
			    </div><!-- /input-group -->
			</form>
		</div>
	</ol>
	<div class="alert alert-danger">
		<i class="glyphicon glyphicon-hand-right"></i>

		温馨提示：此页面展示角色列表，您可以对角色查看、编辑、删除、授权及批量删除和新建的操作。单击右方x号，可以关闭此条提示语！

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
					<th style="min-width:94px;">
						编号
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<!-- <th style="width:25%"> -->
					<th>
						名称
						<span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
					</th>
					<th>
						父菜单
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
			<tbody id = "rolesList">
			<!--<c:forEach items="${roleList}" var = "role">
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						01
					</td>
					<td title="首页">
						
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole" n_id="1"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				</c:forEach>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						02
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole" n_id="2"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						03
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						04
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						05
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						06
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						07
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						08
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						09
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						10
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>
				<tr>
					<td class='checkboxtd'>
						<label>
							<input  type="checkbox" name="layout">
						</label>
					</td>
					<td>
						11
					</td>
					<td title="首页">
						首页
					</td>
					<td title="首页">
						首页
					</td>
					<td>
						<span class="icon-eye-open iconact lookRole"></span>
					</td>
					<td>
						<span class="icon-pencil iconact editRole"></span>
					</td>
					<td>
						<span class="icon-trash iconact removeBtn"></span>
					</td>
					<td>
						<span class="icon-key iconact"></span>
					</td>
				</tr>-->
			</tbody>
		</table>
		<div class="tfoot">
			<div class="btns">
				<span class="newPro" url="./pages/role/add.html">
					<img src="${pageContext.request.contextPath}/img/sys/icons4.png" alt="">
					新建
				</span>
				<span>
					<img src="${pageContext.request.contextPath}/img/sys/icons1.png" alt="">
					刷新
				</span>
				<span class="removeBtn">
					<img src="${pageContext.request.contextPath}/img/sys/icons2.png" alt="">
					删除
				</span>
			</div>
			<div class="pagination">
				<a href="javascript:;" class="pre"></a>
				<a href="javascript:;" class="page">1</a>
				<a href="javascript:;" class="page active">2</a>
				<a href="javascript:;" class="page">3</a>
				<a href="javascript:;" class="page">4</a>
				<a href="javascript:;" class="page">5</a>
				<a href="javascript:;" class="page">6</a>
				<a href="javascript:;" class="page">7</a>
				<a href="javascript:;" class="shot">···</a>
				<a href="javascript:;" class="page">46</a>
				<a href="javascript:;" class="page">47</a>
				<a href="javascript:;" class="next"></a>
				<span>跳转到</span>
				<input type="text">
				<span>页</span>
				<button class="search">GO</button>
			</div>
		</div>
	</div>

<!-- 最大化容器 -->
<div class="maxcontainer">
	
</div>