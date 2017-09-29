<%@ page language="java" pageEncoding="UTF-8" %>

<script src="./js/role/bulkaddroles.js"></script>

<div class="bulkaddroles">
	<ol class="breadcrumb">
	    <li>
	    	<i class="glyphicon glyphicon-home"></i>
	    	<a href="#" data="2" url="home">首页</a>
	    </li>
	    <li>
	    	<a href="#" url="./pages/role/rolelist">角色管理</a>
	    </li>
	    <li class="active">批量添加角色</li>
	    <div class="nav-search" id="nav-search">
			<form class="form-search">
				<div class="input-group">
			        <input type="text" class="form-control" placeholder="搜索你想找到的...">
			        <span class="input-group-btn">
			        <button class="btn btn-default" type="button">
						<img src="./img/sys/iconsearch.png" alt="">
			        </button>
			        </span>
			    </div><!-- /input-group -->
			</form>
		</div>
	</ol>
	<div class="titlezl">
		<p>批量添加角色</p>
		<div class="btns">
			<a href="javascript:;" class="min dom_minimize">
				<img src="./img/sys/modal2.png" alt="">
				<div class="hidmission">
					<span class="iconfont icon-piliangtianjia icon-slidenav"></span>
					<p url="./pages/role/bulkaddroles">批量添加角色</p>
					<span class="iconfont icon-chuyidong1 del"></span>
				</div>
			</a>
			<!-- <a href="javascript:;" class="maxrole" data-dismiss="modal">
				<img src="./img/sys/modal3.png" alt="">
			</a> -->
			<a href="javascript:;" class="zclose" data-dismiss="modal">
				<img src="./img/sys/modal1.png" alt="">
			</a>
		</div>
	</div>
	<!-- <div class="btns">
		<a href="javascript:;" class="min">
			<img src="./img/sys/addrolees1.png" alt="">
		</a>
		<a href="javascript:;" class="max">
			<img src="./img/sys/addrolees2.png" alt="">
		</a>
		<a href="javascript:;" class="zclose">
			<img src="./img/sys/addrolees3.png" alt="">
		</a>
	</div> -->
	<div class="upload">
		<div class="title">
			<img src="./img/sys/addrolees4.png" alt="">
		</div>
		<form action="">
			<div class="uploadinput">
				
			</div>
			<div class="uploadhelp">
				<p>
					<i></i>
					<b>温馨小提示：</b>
					*仅支持excel文件格式导入；*文件&lt;50KB
				</p>
			</div>
			<div class="uploadbtns">
				<div class="uploadbtn">
					浏览...
					<input type="file" name="" id="">
				</div>
				<button type='button'>
					数据导入...
				</button>
			</div>
		</form>
		<a href="javascript:;" class="link">下载excel模版</a>
	</div>
</div>

