<%@ page language="java" pageEncoding="UTF-8" %>

<div class="modal-dialog modal-lg" role="document">
	<div class="modal-content" u_id="2">
		<div class="modal-header">
			<div class="pull-right">
				<a href="javascript:;" data-dismiss="modal" class="minus module_minimize">
					<img src="./assets/images/sys/modal2.png" alt="" />
					<div class="hidmission">
						<span class="icon-pencil icon-slidenav"></span>
						<p u_id="2" class="editRole">编辑角色</p>
						<span class="iconfont icon-chuyidong1 del"></span>
					</div>

				</a>
				<a href="javascript:;" class="external-link">
					<img src="./assets/images/sys/modal3.png" />
				</a>
				<a href="javascript:;" class="remove" data-dismiss="modal">
					<img src="./assets/images/sys/modal1.png" alt="" />
				</a>
			</div>
			<h4 class="modal-title">
				<span>|</span><b>编辑角色</b>
			</h4>
		</div>
		<div class="modal-body">
			<form class="form-horizontal flatUi">
				<div class="form-group has-feedback">
					<div class="col-xs-12 roleNameError text-right row-xs-h">
						<!--不要输入特殊符号-->
					</div>
					<div class="col-xs-3 col-sm-2 row-lg-h">
						<label for="roleName" class=" control-label"><span class="dot">·</span>角色名称：</label>
					</div>
					<div class="col-xs-9 col-sm-10 row-lg-h roleNameBox">
						<input name="name" type="text" class="form-control bg-grey" value="" id="roleName" placeholder="请输入角色名称">
						<span class="wordNum">15</span>
						<!--<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>-->
						<!--<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="false"></span>-->
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="col-sm-5 col-xs-6 row-xs-h parentRoleError text-right">
							<!--您还未选择父级角色-->
						</div>
						<div class="col-sm-5 col-xs-6 row-xs-h relyRoleError text-right">
							<!--你还未选择依赖角色-->
						</div>
					</div>
					<div class="col-md-5 col-sm-12 col-xs-12  row-lg-h fath_select">
						<div class="col-md-5 col-sm-2 col-xs-3 l-pd r-pd">
							<label for="sourceType" class="control-label">
                <span class="dot">·</span>父级角色：
            </label>
						</div>

						<div class="col-xs-4 col-md-6 row-lg-h select-l-pd">
							<select name="fath" data-toggle="select" class=" form-control" id="sourceType">
								<option value="0" disabled="disabled">选择父级角色</option>
								<option value="1">角色列表</option>
								<option value="2">首页</option>
								<option value="3">角色列表</option>
								<option value="4">角色列表</option>
								<option value="4">角色列表</option>
								<option value="4">角色列表</option>
							</select>
						</div>
					</div>
					<div class="col-md-5 col-sm-12 col-xs-12 row-lg-h fath_select">
						<div class="col-md-5 col-sm-2 col-xs-3  l-pd col-md-offset-1 r-pd">
							<label for="parentRole" class="control-label">
                <span class="dot">·</span>依赖角色：
            </label>
						</div>
						<div class="col-xs-4 col-md-6 row-lg-h select-l-pd">
							<select name="yilai" data-toggle="select" class="form-control" id="parentRole">
								<option value="0" disabled="disabled">选择依赖角色</option>
								<option value="1">角色列表</option>
								<option value="2">首页</option>
								<option value="3">角色列表</option>
								<option value="4">角色列表</option>
								<option value="4">角色列表</option>
								<option value="4">角色列表</option>
							</select>
						</div>
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-3 col-xs-4 row-lg-h maxNumView">
						<label class="control-label" for="limitNum">
                <span class="dot">·</span>最大限制用户数
            </label>
					</div>
					<div class="col-xs-2 row-lg-h numCtr">
						<a href="" class=" icon-minus text-center"></a>
						<input readonly name="max_num" class="form-control" id="limitNum" type="text" value="0" />
						<a href="" class="icon-plus text-center"></a>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-3 col-sm-2 remarkBox">
						<label class="control-label" for="remark">
                <span class="dot">·</span>备注：</label>
					</div>
					<div class="col-xs-9 col-sm-10 textarea-h">
						<textarea name="beizhu" class="form-control bg-grey" name="" id="remark" cols="30" rows="5" placeholder="请输入备注"></textarea>
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