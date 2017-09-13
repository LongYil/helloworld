<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>修改角色</title>
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
	margin-right:32px;
	}
	</style>
</head>
<body style="padding:0px;margin:0px;">
	<div class="easyui-panel"  style="width:100%;max-width:830px;max-height:678px;padding:30px 60px;" title="修改角色">
		<form id="ff" name="myform" action="${pageContext.request.contextPath}/cysjs_xgjs2.action" class="easyui-form" method="post" data-options="novalidate:true">
			
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="jsmc" value="${cysjsVo.jsmc}" style="width:35%" data-options="label:'角色名称',required:true">
			</div>
			<div style="margin-bottom:20px">
				<span class="tou">帐号管理</span>
				<select  class="mycombox" name="zhgl" style="width:10%">
					<option value="block">可用</option>
					<option value="none">不可用</option>
				</select>
			</div>
			<div style="margin-bottom:20px">
				<span class="tou">设置货代</span>
				<select  class="mycombox" name="szdld" style="width:10%">
					<option value="block">可用</option>
					<option value="none">不可用</option>
				</select>
			</div>
			<div style="margin-bottom:20px">
				<span class="tou">车队管理</span>
				<select  class="mycombox" name="cdgl" style="width:10%">
					<option value="block">可用</option>
					<option value="none">不可用</option>
				</select>
			</div>
			<div style="margin-bottom:20px">
				<span class="tou">角色管理</span>
				<select  class="mycombox" name="jsgl" style="width:10%">
					<option value="block">可用</option>
					<option value="none">不可用</option>
				</select>
			</div>
			<div style="margin-bottom:20px">
				<span class="tou">系统日志</span>
				<select  class="mycombox" name="xtrz" style="width:10%">
					<option value="block">可用</option>
					<option value="none">不可用</option>
				</select>
			</div>

		</form>
		<div style="text-align:center;padding:5px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
		</div>
	</div>
	<script>

		function submitForm(){
			var a = $("#ff").form('enableValidation').form('validate');
			$('#ff').form('submit',{
				onSubmit:function(){
					if(a){
						$.messager.alert('提示','保存成功!');
						return $(this).form('enableValidation').form('validate');
					}else{
						$.messager.alert('温馨提示','信息填写不完整，请填写完整信息!','warning');
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