<%@ page language="java" pageEncoding="UTF-8" %>
<div class="row">
    <div class="col-xs-4">
        <div class="trashImg text-right">
            <img src="${pageContext.request.contextPath}/img/modal/trash.png" alt="">

        </div>
    </div>
    <div class="col-xs-8 info">
        <h3>你确认删除<span class="removeName">用户</span>吗？</h3>
        <p>
            *此项操作不可逆！<br/>
          	  如果确认删除则点击“确定”，否则点“取消”
        </p>
    </div>

</div>
<div class="row">
    <div class="col-xs-8 col-xs-offset-4">
        <button type="button" class="btn modalBtn delBtn">确定</button>
        <button type="button" class="btn modalBtn closeBtn" data-dismiss="modal">取消</button>
    </div>
</div>