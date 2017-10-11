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
		
		//去 后台 请求数据
		var getData = function(url,pages,page_first){
 			var data = getStorage(TableObj.requestListUrl+"_"+pages);
			if(data){
	 			dealData(data,pages,page_first);
			}else{
				$.post(url,{
					page: pages,
					rows: TableObj.pageSize
				}, function(data){  //get 请求数据 需要获取当前 总数 和 本次分页数据
					setStorage(TableObj.requestListUrl+"_"+pages,data);
					dealData(data,pages,page_first);
				},"json");
			}
		};
		getData(TableObj.requestListUrl,1,true)
		
		//处理来自服务器端的数据
		function dealData(data,pages,page_first){
			if(data.total > 0){
				initHtml(data.rows);
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
		function initHtml(data){
			var html = '';
			if(true){
				$.each(data,function(index,value,data){
					html += TableObj.trForm(index,value,data);
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
