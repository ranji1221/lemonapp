<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<%-- 
<ul>
	<li> <a href="${pageContext.request.contextPath}/backend/authority/user/adduser">添加用户</a></li>
	<shiro:hasPermission name="user:delete">  
	<li> <a href="${pageContext.request.contextPath}/backend/authority/user/deleteuser">删除用户</a></li>
	</shiro:hasPermission>   
<<<<<<< HEAD
</ul> --%>
<!DOCTYPE html>
<!--1、指定语言基础-->
<html lang="zh-cn">

	<head>
		<meta charset="UTF-8">
		<!--flatui css库-->
		<link href="https://cdn.bootcss.com/flat-ui/2.3.0/css/flat-ui.min.css" rel="stylesheet">

		<!--2、指定视口信息-viewport-->
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />
		<!--3、指定 跨IE 浏览器的兼容性-->
		<meta http-equiv="x-ua-compatible" content="IE=edge" />
		<title></title>
		<!--4、引入 bootstrap.css 主css文件-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/common/bootstrap/css/bootstrap.css" />
		<!--6、 公共的初始化样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common/common.css" />
		<!--7、 rem自适应计算js -->
		<!--  <script src="${pageContext.request.contextPath}/js/rem/rem.js"></script>-->
		<!--8、 jquery引入 -->
		<!--<script src="./assets/scripts/jquery1.9.1/jquery1.9.1.min.js"></script>-->
		<!--<script src="https://cdn.bootcss.com/jquery/2.1.0/jquery.js"></script>
		<!--flatui js库-->
		<!-- <script src="https://cdn.bootcss.com/flat-ui/2.3.0/js/flat-ui.min.js"></script>
		<!--9、 bootstrap js引入 -->
		<!--和flat.js冲突-->
		<!--<script src="assets/common/bootstrap/js/bootstrap.js"></script>-->
		<!-- 公用分割线 -->
		<!-- 侧导航样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slidenav/slidenavREM.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/iconfont.css" />
		<!-- <script src="${pageContext.request.contextPath}/js/slidenav/slidenav.js"></script>
		<!--bootstrap图标库-->
		<link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/3.0.0/css/font-awesome.min.css" />
		<!-- icheck -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/common/icheck/skins/all.css" />
		<!-- <script src="${pageContext.request.contextPath}/common/icheck/icheck.js"></script>
		<!--头部引入-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index/index.css" />
		<!--ajax页面获取-->
		<!-- <script src="${pageContext.request.contextPath}/js/index/getDom.js"></script>
		<!--模态框引入-->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/editModal/editModal.css">
		<!-- <script src="${pageContext.request.contextPath}/js/editModal/editModal.js"></script>
		<!-- jstree -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/common/vakata-jstree/dist/themes/default/style.min.css" />
		<!-- <script src="${pageContext.request.contextPath}/common/vakata-jstree/dist/jstree.min.js"></script>
		<!-- 角色列表页 -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/role/rolelistREM.css" />
		<!-- 角色授权 -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/role/role-authorization.css" />
		<!-- 用户授权 -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/user-authorization.css" />
		<!-- 批量角色 -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/role/bulkaddrolesREM.css" />

		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/role/role.css">
		<!--jqueryui css文件-->
		<!-- <link href="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">
		<!--用户css-->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/edit.css">
		<!--resources资源  css-->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/resources/add.css">
		<!--icheck-->
		<!--<script src="assets/scripts/icheck/icheck.js"></script>-->
		<!-- <script src="${pageContext.request.contextPath}/js/icheck/custom.min.js"></script>
		<!--rolelook css-->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/role/look.css">
		<!-- 进度条 -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/database/progress.css">
		<!-- <script src="${pageContext.request.contextPath}/js/database/progress.js"></script>
		<!--难得数据备份-->
		
	</head>

	<body>
		<!--编辑模态框框部分-->
		<div id="editRoleModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<div id="editUserModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<div id="editSourceModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<!--查看模态框-->
		<div id="lookRoleModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<div id="lookUserModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<div id="lookSourceModal" class="modalCon modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			
		</div>
		<!--删除模态框-->
		<div id="removeModal">
			<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<div class="pull-right">
								<a href="javascript:;" class="remove" data-dismiss="modal">
									<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="" />
								</a>
							</div>
							<div class="modal-title">
								<h4><span>|</span>提示信息</h4>
							</div>
						</div>
						<div class="modal-body">

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 授权模态框 -->

		<!-- 角色授权 -->
		<!-- Modal -->
		<div class="modal fade" id="role-authorization" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  	<div class="modal-dialog" role="document">
		    	<div class="modal-content">

		    	</div>
		  	</div>
		</div>

		<!-- 授权模态框 -->

		<!-- 用户授权 -->
		<!-- Modal -->
		<div class="modal fade" id="user-authorization" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  	<div class="modal-dialog" role="document">
		    	<div class="modal-content">

		    	</div>
		  	</div>
		</div>
		<!-- 进度展示模态框 -->
		<div class="modal fade" id="leading-progress" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  	<div class="modal-dialog" role="document">
		    	<div class="modal-content">
		    		<div class="progressbox">
		    			<h3>正在导入...</h3>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
								<span class="pro-text">0%</span>
							</div>
						</div>
						<p>*请勿进行其他操作！您的任何操作都可能导致此次导入失败！</p>
		    		</div>
					<div class="leading-res-success">
						<div class="titlezl">
							<p>提示信息</p>
							<div class="btns">
								<a href="javascript:;" class="zclose" data-dismiss="modal">
									<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="">
								</a>
							</div>
						</div>
						<div class="res-success">
							<img src="${pageContext.request.contextPath}/img/sys/leads.png" alt="">
							<h3>导入成功！</h3>
							<p>您已成功恢复数据库！</p>
						</div>
					</div>
					<div class="leading-res-error">
						<div class="titlezl">
							<p>提示信息</p>
							<div class="btns">
								<a href="javascript:;" class="zclose" data-dismiss="modal">
									<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="">
								</a>
							</div>
						</div>
						<div class="res-error">
							<img src="${pageContext.request.contextPath}/img/sys/leade.png" alt="">
							<h3>导入失败！</h3>
							<p>您未能成功恢复数据库！</p>
						</div>
					</div>
		    	</div>
		  	</div>
		</div>
		<!-- 备注信息展示模态框 -->
		<div class="modal fade" id="database-remarks" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  	<div class="modal-dialog" role="document">
		    	<div class="modal-content">
					<div class="titlezl">
						<p>查看数据库备注信息</p>
						<div class="btns">
							<a href="javascript:;" class="zclose" data-dismiss="modal">
								<img src="${pageContext.request.contextPath}/img/sys/modal1.png" alt="">
							</a>
						</div>
					</div>
					<div class="database-remark">
						
					</div>
		    	</div>
		  	</div>
		</div>
		<!-- 头部 -->
		<nav class="navbar navbar-default">
			<div class="container-fluid row">
				<div class="navbar-header col-xs-3 col-lg-2 col-md-3 col-sm-3">
					<a href="#">
						<div class="navbar_header_logo">
							<img src="${pageContext.request.contextPath}/img/index/logo.png" alt="">
						</div>
						<div class="navbar_header_logo_home">
							<span class="icon-home"></span>
						</div>
					</a>
				</div>
				<div class="navbar-left navbar_search row col-xs-4 col-lg-5 col-md-3 col-sm-3">
					<h4 class="visible-lg-inline col-lg-5">青柠后台管理系统欢迎您</h4>
					<form action="" class="form-group search_form col-lg-5 col-sm-12 col-xs-12">
						<div class="search_form_box col-lg-12  col-md-offset-0 col-md-12 col-sm-12 col-xs-12">
							<input type="text" class="col-lg-10 col-md-11 col-sm-10 col-xs-11 ">
							<span class="icon-search col-lg-4 col-md-4 col-sm-6 col-xs-6 col-lg-offset-1"></span>
						</div>
					</form>
				</div>
				<div class="pull-right col-lg-3 col-md-2 col-sm-3 col-xs-4">
					<div class="pull_right_icon col-lg-2  col-md-2 text-center col-sm-2 col-xs-2">
						<span class=" icon-lock "></span>
					</div>
					<div class="pull_right_icon col-lg-1  col-sm-1 text-center col-md-2  col-xs-2">
						<span class="icon-bell "></span>
						<span class="badge badge-important">4</span>
					</div>
					<div class="pull_right_icon col-lg-1  col-sm-1 text-center col-md-2  col-xs-2">
						<span class="icon-envelope "></span>
					</div>
					<a class="pull_right_img col col-lg-1  col-md-1  col-xs-2" href="#">
						<div class="pull_right_img_hearder">
							<h3>您好，GIGI</h3>
							<p><span>所属角色:</span>超级管理员</p>
							<img src="${pageContext.request.contextPath}/img/index/out.png " alt="" />
						</div>
					</a>
					<div class="pull_right_font col-xs-3 col-lg-3  visible-lg-inline-block " style="padding:0;">
						<p>您好,GIGI</p>
					</div>
					<img src="${pageContext.request.contextPath}/img/index/out.png "  class="setout visible-lg-inline-block" alt="" />
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- 主体 -->
		<div class="main-container">
			<!-- 左侧面滑动导航菜单 -->
			<aside class="left-menu">
				<div class="user">
					<div class="photo">
						<img src="${pageContext.request.contextPath}/img/test/per.png" alt="">
					</div>
					<div class="userinfo">
						<h3>你好，<span>啊摇摇</span></h3>
						<p>所属角色：<span>超级管理员</span></p>
					</div>
				</div>
				<div class="slidenav">
					<ul>
						<li>
							<div class="iconfont icon-quanxianguanli icon-slidenav"></div>
							<p>权限管理</p>
							<span class="iconfont icon-icon"></span>
							<div class="rightborder"></div>
							<div class="rightarrow"></div>
						</li>
						<ul>
							<li>
								<div class="iconfont icon-jiaoseguanli icon-slidenav"></div>
								<p>角色管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<ul>
								<li url='./pages/role/rolelist.html'>
									<div class="iconfont icon-liebiao3 icon-slidenav"></div>
									<p>角色列表</p>
									<div class="hoverline"></div>
								</li>
								<li url='./pages/role/add.html'>
									<div class="iconfont icon-tianjia icon-slidenav"></div>
									<p>添加角色</p>
									<div class="hoverline"></div>
								</li>
								<li url='./pages/role/bulkaddroles.html'>
									<div class="iconfont icon-piliangtianjia icon-slidenav"></div>
									<p>批量添加角色</p>
									<div class="hoverline"></div>
								</li>
							</ul>
							<li>
								<div class="iconfont icon-yonghuguanli icon-slidenav"></div>
								<p>用户管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<ul>
								<li url="${pageContext.request.contextPath}/backend/authority/user/listuser">
									<div class="iconfont icon-yonghuliebiao icon-slidenav"></div>
									<p>用户列表</p>
									<div class="hoverline"></div>
								</li>
								<li url="${pageContext.request.contextPath}/backend/authority/user/adduser">
									<div class="iconfont icon-tianjiaxinyonghu icon-slidenav"></div>
									<p>添加用户</p>
									<div class="hoverline"></div>
								</li>
								<li url="${pageContext.request.contextPath}/backend/authority/user/bulkaddusers">
									<div class="iconfont icon-tianjiaduoyonghu icon-slidenav"></div>
									<p>批量添加用户</p>
									<div class="hoverline"></div>
								</li>
							</ul>
							<li>
								<div class="iconfont icon-ziyuanguanli icon-slidenav"></div>
								<p>资源管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<ul>
								<li url='./pages/resources/resourcelist.html'>
									<div class="iconfont icon-ziyuanguanli2 icon-slidenav"></div>
									<p>资源列表</p>
									<div class="hoverline"></div>
								</li>
								<li url="./pages/resources/add.html">
									<div class="iconfont icon-tianjiaziyuan-q icon-slidenav"></div>
									<p>添加资源</p>
									<div class="hoverline"></div>
								</li>
							</ul>
						</ul>
						<li>
							<div class="iconfont icon-gerenzhongxin icon-slidenav"></div>
							<p>个人中心</p>
							<span class="iconfont icon-icon"></span>
							<div class="rightborder"></div>
							<div class="rightarrow"></div>
						</li>
						<ul>
							<li>
								<div class="iconfont icon-jiaoseguanli icon-slidenav"></div>
								<p>角色管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<ul>
								<li url='./pages/role/rolelist.html'>
									<div class="iconfont icon-liebiao3 icon-slidenav"></div>
									<p>角色列表</p>
									<div class="hoverline"></div>
								</li>
								<li>
									<div class="iconfont icon-tianjia icon-slidenav"></div>
									<p>添加角色</p>
									<div class="hoverline"></div>
								</li>
								<li>
									<div class="iconfont icon-piliangtianjia icon-slidenav"></div>
									<p>批量添加角色</p>
									<div class="hoverline"></div>
								</li>
							</ul>
							<li>
								<div class="iconfont icon-yonghuguanli icon-slidenav"></div>
								<p>用户管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<li>
								<div class="iconfont icon-ziyuanguanli icon-slidenav"></div>
								<p>资源管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
						</ul>
						<li>
							<div class="iconfont icon-wodedenglu_shezhi icon-slidenav"></div>
							<p>我的设置</p>
							<span class="iconfont icon-icon"></span>
							<div class="rightborder"></div>
							<div class="rightarrow"></div>
						</li>
						<ul>
							<li>
								<div class="iconfont icon-jiaoseguanli icon-slidenav"></div>
								<p>角色管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<ul>
								<li>
									<div class="iconfont icon-liebiao3 icon-slidenav"></div>
									<p>角色列表</p>
									<div class="hoverline"></div>
								</li>
								<li>
									<div class="iconfont icon-tianjia icon-slidenav"></div>
									<p>添加角色</p>
									<div class="hoverline"></div>
								</li>
								<li>
									<div class="iconfont icon-piliangtianjia icon-slidenav"></div>
									<p>批量添加角色</p>
									<div class="hoverline"></div>
								</li>
							</ul>
							<li>
								<div class="iconfont icon-yonghuguanli icon-slidenav"></div>
								<p>用户管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
							<li>
								<div class="iconfont icon-ziyuanguanli icon-slidenav"></div>
								<p>资源管理</p>
								<span class="iconfont icon-icon"></span>
							</li>
						</ul>
						<li>
							<div class="iconfont icon-shujukuguanli icon-slidenav"></div>
							<p>数据库管理</p>
							<span class="iconfont icon-icon"></span>
							<div class="rightborder"></div>
							<div class="rightarrow"></div>
						</li>
						<ul>
							<li url='./pages/database/backup.html'>
								<div class="iconfont icon-beifenshujuku icon-slidenav"></div>
								<p>备份数据库</p>
								<!-- <span class="iconfont icon-icon"></span> -->
							</li>
							<li url='./pages/database/recoverlist.html'>
								<div class="iconfont icon-shuju-yihuifu icon-slidenav"></div>
								<p>恢复数据库</p>
								<!-- <span class="iconfont icon-icon"></span> -->
							</li>
							<li url='./pages/database/backupComplex.html'>
								<div class="iconfont icon-Group icon-slidenav"></div>
								<p>优化数据库</p>
								<!-- <span class="iconfont icon-icon"></span> -->
							</li>
						</ul>
					</ul>
				</div>
				<ul class="btns">
					<li>
						<div class="iconfont icon-bianji btn-edit"></div>
					</li>
					<li>
						<div class="iconfont icon-shouhui btn-fold"></div>
					</li>
					<li>
						<div class="iconfont icon-caidan5555 btn-mission"></div>
					</li>
					<div class="mission">
						<h3>任务&nbsp;&nbsp;&nbsp;————————</h3>
						<ol>
							
						</ol>
					</div>
				</ul>
			</aside>
			<!-- 左侧面滑动导航菜单结束 -->
			<!-- 右侧主容器 -->
			<div class="right-container">
				<div class="ajax_dom"></div>
				<!-- 此处添加导航右侧内容 -->
				<div class="container content-wrap">
					<div id="funcNav" class="row">
						<div class="col-lg-3 col-sm-6 func-item">
							<div class="panel statistical">
								<div class="panel-body">
									<div class="funcImg text-right">
										<img src="${pageContext.request.contextPath}/img/index/analysis.png" class="signImg" alt="">
									</div>
									<div class="title">
										<h3 class="cn h3">统计分析</h3>
										<h4 class="en h4">Statistical analysis</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 func-item">
							<div class="panel authority">
								<div class="panel-body">
									<div class="funcImg text-right">
										<img src="${pageContext.request.contextPath}/img/index/Authority.png" class="signImg" alt="">
									</div>
									<div class="title">
										<h3 class="cn h3">
                                    权力管理
                                </h3>
										<h4 class="en h4">
                                    SAuthority management
                                </h4>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 func-item">
							<div class="panel human">
								<div class="panel-body">
									<div class="funcImg text-right">
										<img src="${pageContext.request.contextPath}/img/index/human.png" class="signImg" alt="">
									</div>
									<div class="title">
										<h3 class="cn h3">
                                人力行政
                            </h3>
										<h4 class="en h4">
                                Human resources administration
                            </h4>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 func-item">
							<div class="panel system">
								<div class="panel-body">
									<div class="funcImg text-right">
										<img src="${pageContext.request.contextPath}/img/index/Settings.png" class="signImg" alt="">
									</div>
									<div class="title">
										<h3 class="cn">
                            行政管理
                            </h3>
										<h4 class="en">
                            System management
                            </h4>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="showList">
						<div class="row">
							<!--今日任务-->
							<div class="col-lg-4 m-con">
								<div class="panel missionToday">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                    今日任务
                                    <span class="pull-right ctrTool">
                                <i class="icon-move "></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<div class="well well-sm">
											<div class="row">
												<div class="col-xs-8">
													<input type="text" class="form-control" placeholder="临时添加任务">
												</div>
												<div class="col-xs-4 text-right">
													<button type="button" class="btn"> 发布</button>
												</div>
											</div>
										</div>
										<ul class="list-unstyled">
											<li>
												<a href="">首页管社保局看来你了吗看局看来你了</a>
											</li>
											<li>
												<a href="">首页管社保局看来你了吗看局看来你了</a>
											</li>
											<li>
												<a href="">首页管社保局看来你了吗看局看来你了</a>
											</li>
											<li>
												<a href="">首页管社保局看来你了吗看局看来你了</a>
											</li>

										</ul>
									</div>
									<div class="panel-footer text-right">
										<a href="" class="more">更多</a>
									</div>
								</div>
							</div>
							<!--活动-->
							<div class="col-lg-4 m-con">
								<div class="panel gameBox">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                    活动
                                    <span class="pull-right ctrTool">
                                <i class="icon-move"></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<h4>最新发布</h4>
										<div class="row newtitle">
											<div class="col-xs-7">下午2：52 08月28日</div>
											<div class="col-xs-5 ">
												<a href="">世界你好</a>
											</div>
										</div>
										<div class="row-content">
											<div class="col-img">
												<img src="${pageContext.request.contextPath}/img/index/newIssue.jpg" alt="">
											</div>
											<div class="col-text text-justify">
												<p>小米商城直营小米公司旗下所有产品，囊括小米手机系列小米6、小米5X、小米MIX，红米手机系列红米4X、红米Note 5A，智能硬件，配件及小小米商城直营小米公司旗下所有产品，囊括小米手机系列小米6、小，红米手机系列红米4X、红米Note 5A，智能硬件，配件及小....
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--天气-->
							<div class="col-lg-4 m-con">
								<div class="panel skyBox">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                    天气小贴士
                                    <span class="pull-right ctrTool">
                                <i class="icon-move"></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div class="moreSky text-right">
												<a href="" class="moresky">更多天气</a>
											</div>
											<div class="col-xs-4 con r">
												<div class="pie text-center">
													<div class="pieChart text-center" data-percent="76%">
													</div>
													<!--<div class="per">76%</div>-->
													<label for="" class="per">76%</label>
												</div>
												<div class="skyInfo text-center">空气湿度</div>

											</div>
											<div class="col-xs-8 con">
												<div class="row skyDetail">
													<div class="col-xs-6">
														<ul class="list-unstyled">
															<li class="text-center">太原</li>
															<li class="text-center">多云 星期四</li>
															<li class="text-center">17℃~20℃</li>
														</ul>
													</div>
													<div class="cloud col-xs-6 text-center">
														<!--<canvas width="80" height="100" id="skyCan">-->
														<!--</canvas>-->
														<img src="${pageContext.request.contextPath}/img/index/weather/duoyun.jpg" class="img-responsive" alt="">
													</div>
												</div>
												<div class="date text-center">
													<i class="icon-calendar"></i>
													<span id="calendar"></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!--人力管理-->
							<div class="col-lg-4 m-con">
								<div class="panel humanInfo">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                    人力管理
                                    <span class="pull-right ctrTool">
                                <i class="icon-move"></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<div class="table-responsive table-condensed">
											<table class="table userlist">
												<thead>
													<tr>
														<th>编号</th>
														<th>名称</th>
														<th>父菜单</th>
														<th>操作</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>02</td>
														<td class="manageName" title="首页信息管理">首页信息管理</td>
														<td>首页</td>
														<td>
															<a href="" class="icon-eye-open lookRole" title="查看"></a>
															<a href="" class="icon-pencil editUser" title="编辑"></a>
															<a href="" class="icon-trash removeBtn" title="删除"></a>
															<a href="" class="icon-key" title="授权"></a>
														</td>
													</tr>
													<tr>
														<td>02</td>
														<td class="manageName">首页管理</td>
														<td>首页</td>
														<td>
															<a href="" class="icon-eye-open lookRole" title="查看"></a>
															<a href="" class="icon-pencil editUser" title="编辑"></a>
															<a href="" class="icon-trash removeBtn" title="删除"></a>
															<a href="" class="icon-key" title="授权"></a>
														</td>
													</tr>
													<tr>
														<td>02</td>
														<td class="manageName">首页管理</td>
														<td>首页</td>
														<td>
															<a href="" class="icon-eye-open lookRole" title="查看"></a>
															<a href="" class="icon-pencil editUser" title="编辑"></a>
															<a href="" class="icon-trash removeBtn" title="删除"></a>
															<a href="" class="icon-key" title="授权"></a>
														</td>
													</tr>
													<tr>
														<td>02</td>
														<td class="manageName">首页管理</td>
														<td>首页</td>
														<td>
															<a href="" class="icon-eye-open lookRole" title="查看"></a>
															<a href="" class="icon-pencil editUser" title="编辑"></a>
															<a href="" class="icon-trash removeBtn" title="删除"></a>
															<a href="" class="icon-key" title="授权"></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>

									</div>
									<div class="panel-footer text-right">
										<a href="">更多</a>
									</div>
								</div>
							</div>
							<!--经济报表-->
							<div class="col-lg-8 m-con reportBox">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                    经营报表
                                    <span class="pull-right ctrTool">
                                <i class="icon-move"></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<div id="line">

										</div>
									</div>
								</div>
							</div>

							<!--快速草稿-->
							<div class="col-lg-4 m-con">
								<div class="panel drafts">
									<div class="panel-heading">
										<h3 class="panel-title">
                                    <i class="icon-circle"></i>
                                   		 快速草稿
                                    <span class="pull-right ctrTool">
                                <i class="icon-move"></i>
                                <i class="icon-refresh"></i>
                                <i class="icon-chevron-up"></i>
                                <i class="icon-remove"></i>
                            </span>
                                </h3>
									</div>
									<div class="panel-body">
										<from>
											<div class="form-group">
												<input type="text" class="form-control" placeholder="标题">
												<textarea name="" id="" class="form-control" placeholder="在想写什么？"></textarea>
												<button type="button" class="btn btn-info pull-right getBtn">保存草稿</button>
											</div>
										</from>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 添加导航右侧内容完毕 -->
				<div class="clearfix"></div>
			</div>
		</div>
		<!--jquery引入-->
			<script src="https://cdn.bootcss.com/jquery/2.1.0/jquery.min.js"></script>
			<!--侧导航的js-->
			<script src="${pageContext.request.contextPath}/js/slidenav/slidenav.js"></script>
			<!--flatui js库-->
			<script src="https://cdn.bootcss.com/flat-ui/2.3.0/js/flat-ui.min.js"></script>
			<!--7、 rem自适应计算js -->
			<!--<script src="assets/scripts/rem/rem.js"></script>-->
			<!--生成其他页面样式操作-->
			<script src="${pageContext.request.contextPath}/js/index/get.js"></script>
			<!--7、引入检查文件-->
			<script src="${pageContext.request.contextPath}/common/jquery-ui1.12.1/jquery-ui.js"></script>
			<script src="${pageContext.request.contextPath}/js/jquery.easypiechart/jquery.easypiechart.js"></script>
			<script src="${pageContext.request.contextPath}/js/skycons/skycons.js"></script>
			<script src="${pageContext.request.contextPath}/js/raphael/raphael.min.js"></script>
			<script src="${pageContext.request.contextPath}/js/raphael/morris.js"></script>
			<script src="${pageContext.request.contextPath}/js/index/index.js"></script>
	</body>

</html>
=======
	<li> <a href="${pageContext.request.contextPath}/backend/flowable/list">工作流测试</a></li>
</ul>
>>>>>>> branch 'master' of https://github.com/ranji1221/lemonapp.git

