$(
	//给jquery添加表格插件
	$.fn.LemonCreateTable = function(params){
		var _this = this;
		var defaults = {
			pageSize:"15",
			requestListUrl:" ",
			pageClassName:".pagination",
			trForm : function(){
				return '';
			}
		};
		var TableObj = $.extend(defaults,params);
		
		//扩展业务字段
		var saveStorageName = '';
		//去 后台 请求数据
		var getData = function(url,pages,page_first){
			//设置本地存储名称
			saveStorageName = TableObj.requestListUrl+"_"+pages;
			
 			var data = getStorage(saveStorageName);
			if(data){
	 			dealData(data,pages,page_first);
			}else{
				$.post(url,{
					page: pages,
					rows: TableObj.pageSize
				}, function(data){  //get 请求数据 需要获取当前 总数 和 本次分页数据
					setStorage(saveStorageName,data);
					dealData(data,pages,page_first);
				},"json");
			}
		};
		getData(TableObj.requestListUrl,1,true)
		
		//处理来自服务器端的数据
		function dealData(data,pages,page_first){
			if(data.total > 0){
				initHtml(data.rows,pages);
				if(page_first){ 
					//如果页面是第一次加载,进入本流程
					createPage(pages,data.total,TableObj.pageSize);
				}
				$('.tablewrap input').iCheck({
				    checkboxClass: 'icheckbox_flat-blue',
				    radioClass: 'iradio_flat-blue',
				    labelHover : true, 
				  	cursor : false,
				 });
			}else{
				_this.html("<tr><td style='width:100%' colspan='9'><span class='center text-center' style='display:inline-block;width:100%;'>没有查找到数据!</span></td></tr>");
			}
		}
		function initHtml(data,now_page){
			var html = '';
			if(true){
				$.each(data,function(index,value,data){
					var storage_name = ' storage_name="'+saveStorageName+'" ';
					var storage_id = ' storage_id="'+index+'" ';
					var extend = storage_name + storage_id;
					html += TableObj.trForm(index,value,data,extend);
				})		
			}
			_this.html(html);
		}
		
		
		// 需要 当前分页 和 总数
		function createPage(now_page,all_num,pageSize){
			// 计算总页数
			var pageNum = all_num % pageSize == 0 ? (all_num / pageSize):(all_num / pageSize) +1 ;
			if(pageNum >= 2){
				//生成分页
				$(TableObj.pageClassName).twbsPagination({
					totalPages : pageNum,
					visiblePages : 5,
					onPageClick : function (event, page) {
						getData(TableObj.requestListUrl,page,false);
					}
				});
			}
		}
	}
	

)	
//获取某条具体的数据
function getDataByStorage(storageName,index){
	var data = getStorage(storageName);
	if(data && data.rows && data.rows[index]){
		return data.rows[index];
	}else{
		return null;
	}
	
}
