<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>设置收货代理点</title>
	<link rel="stylesheet" type="text/css" href="js/basic/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/basic/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/basic/demo/demo.css">
	<script type="text/javascript" src="js/basic/jquery.min.js"></script>
	<script type="text/javascript" src="js/basic/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/lzx/area.js"></script>
	<style type="text/css">
	.mycombox{
	border:1px #95b8e7 solid;
	height:25px;
	border-radius:4px;
	font-size:12px;
	}
	.tou{
	margin-right:15px;
	}
	</style>
</head>
<body style="padding:0px;margin:0px;">
	<div class="easyui-panel" style="width:100%;max-width:840px;max-height:600px;padding:30px 60px;" title="收货代理点">
		<form id="ff" action="${pageContext.request.contextPath}/dd_disanbu.action" class="easyui-form" method="post" data-options="novalidate:true">
			<div style="margin-bottom:20px"   id="area_address1">
				<span class="tou">选择：</span>
				<select  class="mycombox" name="shid" style="width:50%">
					<c:forEach items="${listhygly}" var="item" begin="0" step="1" varStatus="status">
						<option value="${item.glybh}">${item.gsmc}公司——${item.szsf}-${item.szcs}-${item.szx}-${item.szjdh}-${item.lxdh}</option>
					</c:forEach>
				</select>
			</div>
		</form>
		<div style="text-align:center;padding:5px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">提交</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
		</div>
	</div>
	<script>

		function submitForm(){
			$('#ff').form('submit',{
				onSubmit:function(){
					var flag = $(this).form('enableValidation').form('validate');
					if(flag){
						$.messager.alert('提示','设置成功!');
						return $(this).form('enableValidation').form('validate');
					}else{
						$.messager.alert('温馨提示','信息不完整，请填写完整信息!','warning');
						return false;
					}
				}
			});
		}
		
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</body>
</html>