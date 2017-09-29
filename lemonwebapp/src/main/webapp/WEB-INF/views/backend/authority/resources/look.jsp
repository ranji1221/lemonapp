<%@ page language="java" pageEncoding="UTF-8" %>
<ol class="breadcrumb breadcrumb_margin">
	    <li>
	    	<i class="glyphicon glyphicon-home"></i>
	    	<a href="#" data="2" url="hoem">首页</a>
	    </li>
	    <li>
	    	<a href="#" url="./pages/resources/resourcelist">资源管理</a>
	    </li>
	    <li><a href="" url="./pages/resources/resourcelist">资源列表</a></li>
	    <li class="active">查看资源</li>
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
<div class="container-fluid">
    <!--<div class="row crumbs_nav">-->
    <!--<div class="col-lg-3 crumbs">-->
    <!--<div class="col-lg-1 crumbs_font_home">-->
    <!--<span class="icon-home"></span>-->
    <!--</div>-->
    <!--<ul class="col-lg-11 crumbs_font_box">-->
    <!--<li class="col-lg-1 crumbs_font">-->
    <!--<span>首页</span>-->
    <!--</li>-->
    <!--<li class="col-lg-1 crumbs_icon">-->
    <!--<span class="icon-angle-right"></span>-->
    <!--</li>-->
    <!--<li class="col-lg-2 crumbs_font">-->
    <!--<span>角色管理</span>-->
    <!--</li>-->
    <!--<li class="col-lg-1 crumbs_icon">-->
    <!--<span class="icon-angle-right"></span>-->
    <!--</li>-->
    <!--<li class="col-lg-2 crumbs_font">-->
    <!--<span>角色列表</span>-->
    <!--</li>-->
    <!--<li class="col-lg-1 crumbs_icon">-->
    <!--<span class="icon-angle-right"></span>-->
    <!--</li>-->
    <!--<li class="col-lg-2 crumbs_font">-->
    <!--<span><a href="" class="active">编辑角色</a></span>-->
    <!--</li>-->
    <!--</ul>-->
    <!--</div>-->
    <!--<div class="pull-right col-lg-2">-->
    <!--<from class="form-group">-->
    <!--<div class="input-group">-->
    <!--<input type="text" class="form-control" placeholder="搜索你想找到的...">-->
    <!--<span class="input-group-btn">-->
    <!--<button class="btn btn-default" type="button">-->
    <!--<span class="icon-search"></span>-->
    <!--</button>-->
    <!--</span>-->
    <!--</div>-->
    <!--</from>-->
    <!--</div>-->
    <!--</div>-->
    <!--编辑资源最大化开始-->
    <div class="row role_hearder">
        <div class="col-lg-2 col-md-2 col-sm-3 col-xs-3 role_hearde_font">
            <span>查看资源</span>
        </div>
        <div class="pull-right col-lg-2 col-md-2 col-sm-3 col-xs-4 role_hearde_icon">
           
			<div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1 role_hearde_this_icon red_border">
            	
            	<img src="./assets/images/sys/modal1.png" alt="" />
                <!--<a href=""><span class="glyphicon glyphicon-remove red_back"></span></a>-->
            </div>
            <div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1  role_hearde_this_icon  blue_border">
                <!--<a href=""><span class="glyphicon glyphicon-resize-small blue_back"></span></a>-->
                
                <img src="./assets/images/sys/modal3.png" alt="" />
            </div>
            <div class="pull-right col-lg-1 col-md-1 col-sm-1 col-xs-1 role_hearde_this_icon green_border dom_minimize">
                <!--<a href=""><span class="small_icon glyphicon green_back">-</span></a>-->
                <img src="./assets/images/sys/modal2.png" alt="" />
                <div class="hidmission">
					<span class="icon-eye-open icon-slidenav"></span>
					<p url="./pages/resources/look">查看资源</p>
					<span class="iconfont icon-chuyidong1 del"></span>
				</div>
            </div>

        </div>
    </div>
    <div class="row role_content">
        <table class="table table-striped">
            <tr>
                <td class="col-lg-2 col-md-2 col-xs-2">编号</td>
                <td>09</td>
            </tr>
            <tr>
                <td>资源名称</td>
                <td>添加员工</td>
            </tr>
            <tr>
                <td>资源类型</td>
                <td>操作</td>
            </tr>
            <tr>
                <td>父级资源</td>
                <td>用户管理</td>
            </tr>
            <tr>
                <td>相关操作</td>
                <td>查看，操作</td>
            </tr>
        </table>
    </div>
    <!--编辑角色最大化结束-->
</div>
<script type="text/javascript">
	//点击缩小
			$('.blue_border').on("click",function(e){
				e.preventDefault()
				$.ajax({
					url:"./pages/resources/resourcelist.html",
					dataType:"html"
				}).done(function(data){
					$(".ajax_dom").empty()
					$(".ajax_dom").html(data)
					$("#lookSourceModal").modal('show')
				})
			})
	//点击关闭
	$('.red_border').on("click",function(e){
				e.preventDefault()
				$.ajax({
					url:"./pages/resources/resourcelist.html",
					dataType:"html"
				}).done(function(data){
					$(".ajax_dom").empty()
					$(".ajax_dom").html(data)
				})
			})
</script>
