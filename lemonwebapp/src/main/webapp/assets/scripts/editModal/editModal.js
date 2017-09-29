/**
 * Created by gu on 2017/9/15.
 */

$(function() {
	var editModal = $("#editModal");
	var editRoleUrl = "backend/authority/role/editrole/modal";
	var editUserUrl = "backend/authority/user/edituser/modal";
	var editSourceUrl = "backend/authority/resource/editresource/modal";
	var lookRoleUrl = "backend/authority/role/lookrole/modal";
	var lookUserUrl = "backend/authority/user/lookuser/modal";
	var lookSourceUrl = "backend/authority/resource/lookresource/modal";
	var removeUrl = "pages/remove/remove.html";
	//  $("#editUserModal").on('hide.bs.modal',function () {
	//     $(this).removeData('bs.modal');
	//  });
	//  $("#removeModal").on('hide.bs.modal',function () {
	//     $(this).removeData('bs.modal');
	//  });
	const maxLimitNum = 10;

	function editRole(this_nid) {
		$.ajax({
			url: editRoleUrl,
			async: true,
			success: function(data) {
				$("#editRoleModal").html(data);
				var input = $("#roleName");
				limitChangeLength(input, 15);
				$(".modal-content").attr("n_id", $(this_nid).attr("n_id"))
				$(".modal-content .editRole").attr("n_id", $(this_nid).attr("n_id"));
				var nId = $(".modal-content .editRole").attr("n_id");

				var uStr, maxNum;
				uStr = localStorage.getItem("this_role" + nId);
//				console.log("uStr:" + uStr);
				if(uStr) {

					maxNum = JSON.parse(uStr)[3].value;
				}

				//					console.log("第一个"+maxNum+"maxNum");
				//					console.log(maxNum==null);
				//					console.log(maxNum==0);
				//					console.log(maxNum==undefined);
				//加减按钮
				var limitNum;
				if(parseInt(maxNum) == 0) {
					limitNum = 0;
				} else if(parseInt(maxNum)) {
					limitNum = parseInt(maxNum);
				} else {
					limitNum = parseInt($("#limitNum").val()) || 0;
				}
//				console.log("第二个" + limitNum);

				function judge(limitNum) {

					if(maxLimitNum <= limitNum) {
						//                  	console.log("条件1："+maxLimitNum+"maxLimitNum;"+limitNum+"limitNum");
						$(add).css("background", grey);
						$(sub).css("background", blue);
					} else if(limitNum < 1) {
						//                  	console.log("条件2："+maxLimitNum+"maxLimitNum;"+limitNum+"limitNum");
						$(sub).css("background", grey);
						$(add).css("background", blue);
					} else {
						//                  	console.log("条件3："+maxLimitNum+"maxLimitNum;"+limitNum+"limitNum");
						$(add).css("background", blue);
						$(sub).css("background", blue);
					}
				}
				var add = $(".numCtr .icon-plus");
				var sub = $(".numCtr .icon-minus");
				var grey = '#bdc3c7';
				var blue = '#378ef8';
				//                  $("#limitNum").ready(function(){
				////                  	console.log($("#limitNum").val());
				//                  $("#limitNum").val(limitNum);
				//                  })

				//                  judge(limitNum);
				$(sub).click(function(e) {
					e.preventDefault();
					var numVal = parseInt($("#limitNum").val());
					if(numVal > 0) {
						numVal--;
						$("#limitNum").val(numVal);
					}
					var inputlimitNum = parseInt($(".numCtr input").val());
					judge(inputlimitNum);
					
					localStorage.removeItem("this_role" + nId);
				});
				$(add).click(function(e) {
					e.preventDefault();
					var numVal = parseInt($("#limitNum").val());
					if(numVal < 10) {
						numVal++;
						$("#limitNum").val(numVal);
					}
					var inputlimitNum = parseInt($(".numCtr input").val());
					judge(inputlimitNum);
					localStorage.removeItem("this_role" + nId);
				});
			},
			error: function(data) {
				console.log(data);
			}
		});
	}
	$(document).on("click", ".editRole", function(e) {
		e.preventDefault();
		$('#editRoleModal').modal('show');
		editRole($(this));

	});
	$("#editRoleModal").on("shown.bs.modal", function() {
		var this_nid = $("#editRoleModal").find(".editRole");
		$(".modal-content").attr("n_id", $(this_nid).attr("n_id"));
		$(".modal-content .editRole").attr("n_id", $(this_nid).attr("n_id"));
		var nId = $(".modal-content .editRole").attr("n_id");

		var uStr, maxNum;
		var limitNum;
		uStr = localStorage.getItem("this_role" + nId);
//		console.log("uStr:" + uStr);
		if(uStr) {

			maxNum = JSON.parse(uStr)[3].value;
//			console.log("本地存储maxNum" + maxNum);
		}
		if(parseInt(maxNum) == 0) {
			limitNum = 0;
		} else if(parseInt(maxNum)) {
			limitNum = parseInt(maxNum);
		} else {
//			console.log($("#limitNum").val());
			limitNum = parseInt($("#limitNum").val()) || 0;
		}
//		console.log("show后的limitNum:" + limitNum);
		var add = $(".numCtr .icon-plus");
		var sub = $(".numCtr .icon-minus");
		var grey = '#bdc3c7';
		var blue = '#378ef8';
		//                  console.log("第二个"+limitNum);
		//                  console.log("1个limitNum"+limitNum);
//		console.log("最后的limitNum"+limitNum);
		$("#limitNum").val(limitNum);
		

		function judge(limitNum) {
//			console.log(limitNum);
			if(maxLimitNum <= limitNum) {

//				console.log("条件1：" + maxLimitNum + "maxLimitNum;" + limitNum + "limitNum");
				$(add).css("background", grey);
				$(sub).css("background", blue);
			} else if(limitNum < 1) {
//				console.log("条件2：" + maxLimitNum + "maxLimitNum;" + limitNum + "limitNum");
//				console.log($(sub));
				$(sub).css("background", grey);
				$(add).css("background", blue);
			} else {
//				console.log("条件3：" + maxLimitNum + "maxLimitNum;" + limitNum + "limitNum");
				$(add).css("background", blue);
				$(sub).css("background", blue);
			}
			//                  console.log("判断后的"+limitNum);
		}

		judge(limitNum);
		//  	console.log("模态框"+$("#limitNum").val());
	});
//	$('.modal').on("hidden.bs.modal", '.modal', function() {
//		$(this).removeData("bs.modal");
//		$(".modal").children().remove();
//	});

	function editUser(this_nid) {

		$.ajax({
			url: editUserUrl,
			dataType: "html",
			async: true,
			success: function(data) {

				$("#editUserModal").html(data);

				var input = $("#userName");
				limitChangeLength(input, 15);
				$(".modal-content").attr("n_id", $(this_nid).attr("n_id"))
				$(".modal-content .editUser").attr("n_id", $(this_nid).attr("n_id"))
			},
			error: function(data) {
				console.log(data);
			}
		});
	}
	$(document).on("click", ".editUser", function(e) {
		e.preventDefault();
		$('#editUserModal').modal('show');
		editUser($(this));
	});

	function editSource(this_nid) {
		$.ajax({
			dataType: "html",
			url: editSourceUrl,
			async: true,
			success: function(data) {

				$("#editSourceModal").html(data);
				$(".modal-content").attr("n_id", $(this_nid).attr("n_id"))
				$(".modal-content .editSource").attr("n_id", $(this_nid).attr("n_id"))
			},
			error: function(data) {
				console.log(data);
			}
		});
	}
	$(document).on("click", ".editSource", function(e) {
		e.preventDefault();
		$('#editSourceModal').modal('show');
		editSource($(this));
	});

	function lookRoleModal() {
		$.ajax({
			dataType: "html",
			url: lookRoleUrl,
			async: true,
			success: function(data) {

				$("#lookRoleModal").html(data);
			},
			error: function(data) {
				console.log(data);
			}
		});
	}

	$(document).on("click", ".lookRole", function(e) {
		e.preventDefault();
		$('#lookRoleModal').modal('show');
		lookRoleModal();
	});

	function lookUserModal() {
		$.ajax({
			dataType: "html",
			url: lookUserUrl,
			async: true,
			success: function(data) {
				$("#lookUserModal").html(data);
			},
			error: function(data) {
				if(data.status==404){
					//alert("you no auth!");
				}
				
				console.log(data);
			}
		});
	}

	$(document).on("click", ".lookUser", function(e) {
		e.preventDefault();
		$('#lookUserModal').modal('show');
		lookUserModal();
	});

	function lookSourceModal() {
		$.ajax({
			dataType: "html",
			url: lookSourceUrl,
			async: true,
			success: function(data) {

				$("#lookSourceModal").html(data);
			},
			error: function(data) {
				console.log(data);
			}
		});
	}

	$(document).on("click", ".lookSource", function(e) {
		e.preventDefault();
		$('#lookSourceModal').modal('show');
		lookSourceModal();
	});
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
			url: removeUrl,
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
	// 用户授权模态框的调用
	$(document).on('click', '.user-aut', function() {
		// console.log('启动授权模态框用户');
		// $.ajax({cache: false});
		$.ajaxSetup({
			cache: false
		});
		$('#user-authorization .modal-content').html('');
		$('#user-authorization .modal-content').load('backend/authority/user/authuser/modal')
		$('#user-authorization').modal('show');
	})
	// 角色授权模态框的调用
	$(document).on('click', '.role-aut', function() {
		// console.log('启动授权模态框');
		// $.ajax({cache: false});
		$.ajaxSetup({
			cache: false
		});
		// console.log('尝试清除js');
		$('#role-authorization .modal-content').html('');
		$('#role-authorization .modal-content').load('backend/authority/role/authrole/modal')
		$('#role-authorization').modal('show');
	})
});
//限制输入字符
function limitChangeLength(elm, limitLength) {
	$(elm).attr("maxLength", limitLength);
	$(elm).keydown(function() {
		var length = $(elm).val().length;
		$(elm).siblings(".wordNum").html(limitLength - length);
	});
	//方法二
	// $(elm).on("input propertychange",function(){
	//     console.log($(this).val().length);
	// })
}