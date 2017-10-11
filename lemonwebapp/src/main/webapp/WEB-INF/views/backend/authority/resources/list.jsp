<%@ page language="java" pageEncoding="UTF-8" %>
<!-- <link rel="stylesheet" href="./assets/styles/rolelist/rolelistREM.css" /> -->
<script src="${pageContext.request.contextPath}/js/user/list.js"></script>
<script src="${pageContext.request.contextPath}/js/twbs-pagination-1.4.1/jquery.twbsPagination.js"></script>

<script >
     var pageSize =15;
	//初始化页面执行
	$(function(){
		getData(1,true);
	})
	//去 后台 请求数据
	function getData(pages,page_first){
		$.post('${pageContext.request.contextPath}/backend/authority/resource/data',{
			page: pages,
			rows: pageSize
		}, function(data){  //get 请求数据 需要获取当前 总数 和 本次分页数据
			if(data.total > 0){
				initHtml(data.rows);
				if(page_first){ 
					//如果页面是第一次加载,进入本流程
					createPage(pages,data.total,pageSize);
				}
				$('.tablewrap input').iCheck({
				    checkboxClass: 'icheckbox_flat-blue',
				    radioClass: 'iradio_flat-blue',
				    labelHover : true, 
				  	cursor : false,
				 });
			}else{
				$('#dataList').html("<tr><td style='width:100%' colspan='9'><span class='center text-center' style='display:inline-block;width:100%;'>没有查找到数据!</span></td></tr>");
			}
		
			
		},"json");
	}
	// 需要 当前分页 和 总数
	function createPage(now_page,all_num,pageSize){
		// 计算总页数
		var pageNum = all_num % pageSize == 0 ? (all_num / pageSize):(all_num / pageSize) +1 ;
		if(pageNum >= 2){
			//生成分页
			$('.pagination').twbsPagination({
				totalPages : pageNum,
				visiblePages : 5,
				onPageClick : function (event, page) {
					getData(page,false);
				}
			});
		}
	}
	function initHtml(data){
		var html = '';
		if(true){
			$.each(data,function(index,value,data){
				var thisType = '';
				switch(value.resourceType){
					case 1:
						thisType = '菜单';
						break;
					case 2:
						thisType = '文件';
						break;
					default:
						thisType = '未知';
						break;
				}
				if(!value.resourcePName) value.resourcePName = '无';
				html += '<tr>'+
				'<td class="checkboxtd">'+
					'<label>'+
						'<input  type="checkbox" name="layout">'+
					'</label>'+
				'</td>'+
				'<td>'+
					(index+1) +
				'</td>'+
				'<td title="资源类型">'+
					thisType +
				'</td>'+
				'<td title="资源名">'+
					value.resourceName +
				'</td>'+
				'<td title="父资源名">'+
					value.resourcePName +
				'</td>'+
				'<td>'+
					'<span class="icon-eye-open iconact lookSource"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-pencil iconact editSource" n_id="1"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-trash iconact removeBtn"></span>'+
				'</td>'+
				'<td>'+
					'<span class="icon-trash iconact removeBtn"></span>'+
				'</td>'+
			'</tr>';
			})		
		}
		$('#dataList').html(html);
	}
	$(document).on("click", ".removeBtn", function(e) {
		e.preventDefault();
		var str = $(this).closest(".roleslist").length ?
			"角色" : $(this).closest(".sourcelist").length ?
			"资源" : $(this).closest(".userlist").length ?
			"用户" : $(this).closest(".recoverlist").length ? "数据库备份" : "";
		var strFoot = $(this).closest(".tfoot").length ? "这些" : "此";
		$('#removeModal .modal').modal('show');
		$.ajax({
			dataType: "html",
			url: '${pageContext.request.contextPath}/remove',
			async: true,
			success: function(data) {
				$("#removeModal .modal-body").html(data);
				if($("#removeModal .modal-body .removeName")) {
					$("#removeModal .modal-body .removeName").html(strFoot + str);
				}
			},
			error: function(data) {
				console.log(data);
			}
		});

	});
</script>

<div class="rolelist sourcelist">
    <ol class="breadcrumb">
        <li>
            <i class="glyphicon glyphicon-home"></i>
            <a href="#" data="2" url="home">首页</a>
        </li>
        <li>
            <a href="#" url="${pageContext.request.contextPath}/backend/authority/resource/list">资源管理</a>
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
            <tbody id="dataList">
            
            </tbody>
        </table>
        <div class="tfoot">
            <div class="btns">
				<span class="newPro" url="${pageContext.request.contextPath}/backend/authority/resource/add">
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
            
            </div>
        </div>
    </div>
</div>