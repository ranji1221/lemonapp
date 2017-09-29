<%@ page language="java" pageEncoding="UTF-8" %>
<div class="modal-dialog modal-lg" role="document">
	<div class="modal-content" u_id="3" >
		<div class="modal-header">
			<div class="pull-right">
				<a href="javascript:;" data-dismiss="modal" class="minus module_minimize">
					<img src="${pageContext.request.contextPath}/img/sys/modal2.png" alt="" />
					<div class="hidmission">
						<span class="icon-pencil icon-slidenav"></span>
						<p u_id="3" class="editUser">编辑用户</p>
						<span class="iconfont icon-chuyidong1 del"></span>
					</div>
				</a>
				<a href="javascript:;" class="external-link">
					<img src="${pageContext.request.contextPath}/img/sys/modal3.png" />
				</a>
				<a href="javascript:;" class="remove" data-dismiss="modal">
					<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="" />
				</a>
			</div>
			<h4 class="modal-title">
							<span>|</span><b>编辑用户</b>
						</h4>
		</div>
		<div class="modal-body">
			<form class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-12 roleNameError text-right row-xs-h">
						<!--不要输入特殊符号-->
					</div>
					<div class="col-sm-2 col-xs-3 row-lg-h">
						<label for="userName" class=" control-label"><span class="dot">·</span>用户名：</label>
					</div>
					<div class="col-sm-10 col-xs-9 row-lg-h">
						<input name="name" type="text" class="form-control bg-grey" id="userName" placeholder="请输入用户名">
						<span class="wordNum">15</span>
					</div>
				</div>
				<div class="form-group fath_select">
					<div class="col-xs-12">
						<div class="col-xs-6 col-sm-5 row-xs-h parentRoleError text-right"> </div>
					</div>
					<div class="col-sm-2 col-xs-3 row-lg-h">
						<label for="parentRole" class="control-label">
                <span class="dot">·</span>分配用户：
            </label>
					</div>
					<div class="col-xs-3 row-lg-h">
						<select  name="fath" data-toggle="select" class="form-control select mrs mbm" id="parentRole">
							<option value="0" disabled="disabled">选择分配用户</option>
							<option value="1">用户列表</option>
							<option value="2">首页</option>
							<option value="3">用户列表</option>
							<option value="4">用户列表</option>
							<option value="4">用户列表</option>
							<option value="4">用户列表</option>
						</select>
					</div>
					<div class="col-xs-6 row-lg-h allotRoleError">
						<!--您还未选择分配用户-->
					</div>
				</div>
				<div class="form-group has-feedback">
					<div class="col-xs-12 roleNameError text-right row-xs-h">
						<!--请输入正确的电话号码-->
					</div>
					<div class="col-sm-2 col-xs-3 row-lg-h">
						<label for="userTel" class=" control-label"><span class="dot">·</span>联系电话：</label>
					</div>
					<div class="col-sm-10 col-xs-9 row-lg-h">
						<input name="tel" type="text" class="form-control bg-grey" id="userTel" placeholder="请输入用户联系方式">
						<!--<span class="glyphicon glyphicon-ok form-control-feedback"></span>-->
						<!--<span class="glyphicon glyphicon-exclamation-sign form-control-feedback"></span>-->
					</div>
				</div>
				<div class="form-group has-feedback">
					<div class="col-xs-12 roleNameError text-right row-xs-h">
						<!--请输入正确的邮箱地址-->
					</div>
					<div class="col-sm-2 col-xs-3 row-lg-h">
						<label for="userName" class=" control-label"><span class="dot">·</span>邮箱：</label>
					</div>
					<div class="col-sm-10 col-xs-9 row-lg-h">
						<input name="emily" type="text" class="form-control bg-grey" id="userEmail" placeholder="请输入用户邮箱">
						<!--<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>-->
						<!--<span class="glyphicon glyphicon-exclamation-sign form-control-feedback" aria-hidden="false"></span>-->
					</div>
				</div>
				<div class="form-group">
					<div class="role_button">
						<div class="col-xs-6 role_succse">
							<button type="submit" class="btn btn-default editSourceSubmit">确定</button>
						</div>
						<div class="col-xs-6 role_remove">
							<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script>
	$('[data-toggle="select"]').select2();
</script>