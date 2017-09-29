<%@ page language="java" pageEncoding="UTF-8" %>

<div class="modal-dialog modal-lg" role="document">
	<div class="modal-content">
		<div class="modal-header">
			<div class="pull-right">
				<a href="javascript:;" data-dismiss="modal" class="minus module_minimize">
					<img src="${pageContext.request.contextPath}/img/sys/modal2.png" alt="" />
					<div class="hidmission">
	<span class="icon-eye-open icon-slidenav"></span>
	<p class="lookRole">查看角色</p>
	<span class="iconfont icon-chuyidong1 del"></span>
</div>
				</a>
				<a  href="javascript:;" class="external-link">
					<img src="${pageContext.request.contextPath}/img/sys/modal3.png"/>
				</a>
				<a href="javascript:;" class="remove" data-dismiss="modal">
					<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="" />
				</a>
			</div>
			<h4 class="modal-title">
							<span>|</span><b>查看角色</b>
						</h4>
		</div>
		<div class="modal-body">
			<table class="table table-striped">
				<tr>
					<td class="col-lg-2">角色名称</td>
					<td>UI设计师</td>
				</tr>
				<tr>
					<td>父级角色</td>
					<td>首页</td>
				</tr>
				<tr>
					<td>依赖角色</td>
					<td>员工</td>
				</tr>
				<tr>
					<td>最大限制用户数</td>
					<td>6</td>
				</tr>
				<tr>
					<td>备注消息</td>
					<td>UI设计师为研发部门付出了艰辛的努力</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script>
	$("#parentRole").select2();
</script>