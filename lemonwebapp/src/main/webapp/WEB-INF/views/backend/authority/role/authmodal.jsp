<%@ page language="java" pageEncoding="UTF-8" %>

<script src="${pageContext.request.contextPath}/js/role/authmodal.js"></script>
<!-- 角色授权 -->
<!-- Modal -->
	<div class="modal-contentbox">
		<div class="titlezl">
			<p>角色授权</p>
			<div class="btns">
				<a href="javascript:;" class="min module_minimize" data-dismiss="modal">
					<img src="${pageContext.request.contextPath}/img/sys/modal2.png" alt="">
					<div class="hidmission">
						<span class="icon-key icon-slidenav"></span>
						<p class='role-aut'>角色授权</p>
						<span class="iconfont icon-chuyidong1 del"></span>
					</div>
				</a>
				<!-- <a href="javascript:;" class="maxrole" data-dismiss="modal" u_id="4"> -->
				<a href="javascript:;" class="maxrole external-link" data-dismiss="modal" u_id="4">
					<img src="${pageContext.request.contextPath}/img/sys/modal3.png" alt="">
				</a>
				<a href="javascript:;" class="zclose" data-dismiss="modal">
					<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="">
				</a>
			</div>
		</div>
		<form>
		  	<div class="form-group">
		    	<label for="rolename" class="rolename">角色名称
		    	<span class="errormessage">
		    		您输入了特殊符号！
		    	</span>
		    	</label>
		    	<div class="inputwrapper">
		    		<div class="inputwrappermax">
				    	<input type="text" class="form-control rolenameinput" placeholder="请输入角色名称" name='name'>
				    	<span class="rolenamelimit">11</span>
				    	<span class="icon-exclamation-sign"></span>
				    	<span class="icon-ok-sign"></span>
				    	<span class="errormessage">
			    		您输入了特殊符号！
			    		</span>
		    		</div>
		    	</div>
		    	<div class="role-slider"></div>
		  	</div>
		  	<div class="form-group">
		    	<label for="authorization">角色授权</label>
		    	<div class="wrapper">
					<header>
						<label for="checkallaut">
							<input  type="checkbox" name="checkallaut" class="checkallaut">
							选中全部
						</label>
						<label for='slidedownallaut'>
							<input  type="checkbox" name="slidedownallaut" class="slidedownallaut">
							展开全部
						</label>
						<label class="prompt visible-md visible-lg">
							温馨小提示：此
							<input  type="checkbox" name="disabled" checked disabled>
							为您的上级权限您无权更改
						</label>
					</header>
					<div class="treezl">
						<div class="role-authorization-jstree">
						
						</div>
					</div>
		    	</div>
		    	<label class="prompt visible-sm visible-xs">
					温馨小提示：此
					<input  type="checkbox" name="disabled" checked disabled>
					为您的上级权限您无权更改
				</label>
		  	</div>
		  	<div class="btnbox">
				<button type="submit" class="btn btn-default" data-dismiss="modal">确定</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
		  	</div>
		</form>
	</div>