<%@ page language="java" pageEncoding="UTF-8" %>
<!-- <link rel="stylesheet" href="./assets/styles/rolelist/rolelistREM.css" /> -->
<script src="${pageContext.request.contextPath}/js/user/userlist.js"></script>


<div class="rolelist sourcelist">
    <ol class="breadcrumb">
        <li>
            <i class="glyphicon glyphicon-home"></i>
            <a href="#" data="2" url="home">首页</a>
        </li>
        <li>
            <a href="#" url="${pageContext.request.contextPath}/backend/authority/resource/listresource">资源管理</a>
        </li>
        <li class="active">资源列表</li>
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

        温馨提示：此页面展示资源列表，您可以对资源查看、编辑、删除、授权及批量删除和新建的操作。单击右方x号，可以关闭此条提示语！

        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    <div class="tablewrap">
        <table class="table ">
            <thead>
            <tr>
                <th style="width:0.8rem">
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
                <th style="width:22%">
                    资源类型
                    <span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
                </th>
                <th style="width:22%">
                    资源名称
                    <span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
                </th>
                <th style="width:22%">
                    父级资源
                    <span class="sort">
							<i class="glyphicon glyphicon-triangle-top"></i>
							<i class="glyphicon glyphicon-triangle-bottom"></i>
						</span>
                </th>
                <th style="width:1rem">查看</th>
                <th style="width:1rem">编辑</th>
                <th style="width:1rem">删除</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource" n_id="1"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <input  type="checkbox" name="layout">
                    </label>
                </td>
                <td>
                    01
                </td>
                <td>
                    菜单
                </td>
                <td>
                    员工
                </td>
                <td>
                	权限管理
                </td>
                <td>
                    <span class="icon-eye-open iconact lookSource"></span>
                </td>
                <td>
                    <span  class="icon-pencil iconact editSource"></span>
                </td>
                <td>
                    <span class="icon-trash iconact removeBtn"></span>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="tfoot">
            <div class="btns">
				<span class="newPro" url="${pageContext.request.contextPath}/backend/authority/resource/addresources">
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
</div>