<%@ page language="java" pageEncoding="UTF-8" %>
<script src="./assets/scripts/user/user-authorizationlg.js"></script>

<!-- 用户授权 -->
<!-- 最大化 -->
<div class="maxcontainer">
	<ol class="breadcrumb">
	    <li>
	    	<i class="glyphicon glyphicon-home"></i>
	    	<a href="#" data="2" url="home">首页</a>
	    </li>
	    <li>
	    	<a href="#" url="./pages/user/list">用户管理</a>
	    </li>
	    <li>
	    	<a href="#" url="./pages/user/list">用户列表</a>
	    </li>
	    <li class="active">用户授权</li>
    	<div class="nav-search" id="nav-search">
			<form class="form-search">
				<div class="input-group">
			        <input type="text" class="form-control" placeholder="搜索你想找到的...">
			        <span class="input-group-btn">
			        <button class="btn btn-default" type="button">
						<img src="./assets/images/sys/iconsearch.png" alt="">
			        </button>
			        </span>
			    </div><!-- /input-group -->
			</form>
		</div>
	</ol>
		<div class="titlezl">
			<p>用户授权</p>
			<div class="btns">
				<a href="javascript:;" class="min dom_minimize">
					<img src="./assets/images/sys/modal2.png" alt="">
					<div class="hidmission">
						<span class="icon-key icon-slidenav"></span>
						<p url='./pages/user/user-authorizationlg'>用户授权</p>
						<span class="iconfont icon-chuyidong1 del"></span>
					</div>
				</a>
				<a href="javascript:;" class="maxuser" data-dismiss="modal" u_id="4">
					<img src="./assets/images/sys/modal3.png" alt="">
				</a>
				<a href="javascript:;" class="zclose" data-dismiss="modal">
					<img src="./assets/images/sys/modal1.png" alt="">
				</a>
			</div>
		</div>
		<div class="form_content">
			<form>
			  	<div class="form-group">
			    	<label for="rolename" class="rolename">用户名称
			    	<span class="errormessage">
			    		您输入了特殊符号！
			    	</span>
			    	</label>
			    	<div class="inputwrapper">
			    		<div class="inputwrappermax">
					    	<input type="text" class="form-control rolenameinput" placeholder="请输入用户名称" name='name'>
					    	<span class="rolenamelimit">11</span>
					    	<span class="icon-exclamation-sign"></span>
					    	<span class="icon-ok-sign"></span>
					    	<span class="errormessage">
				    		您输入了特殊符号！
				    		</span>
			    		</div>
			    	</div>
			    	<div class="user-slider"></div>
			  	</div>
			  	<div class="form-group">
			    	<label for="authorization">用户授权</label>
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
						<div class="treeuser">
							<div class="user-authorization-jstree">
							
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
	</div>

