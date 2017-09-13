<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>角色管理</title>
	<link rel="stylesheet" type="text/css" href="js/basic/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/basic/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/basic/demo/demo.css">
	<script type="text/javascript" src="js/basic/jquery.min.js"></script>
	<script type="text/javascript" src="js/basic/jquery.easyui.min.js"></script>
	<style>
		.cdmc{
		margin-left:140px;
		font-size:24px;
		color:#0248b5;
		font-weight:bold;
		}
	</style>
</head>
<body style="padding-top:0px; padding-bottom:0px;">

<section style="width:760px;height:40px;margin-top:20px;padding-left:40px;">
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="addPanel()">添加角色</a>
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="xiugai()">重置角色</a>
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="shuaxin()">刷新</a>
</section>

	<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="padding:0px;width:830px;height:620px;margin-left:-20px;margin-bottom:0px;">
	<div title="所有角色">
		<table id="dg" class="easyui-datagrid" title="角色信息" style="width:820px;height:580px"
			data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'a',width:80,align:'center'">序号</th>
				<th data-options="field:'b',width:80,align:'center'" hidden="hidden">角色编号</th>
				<th data-options="field:'c',width:80,align:'center'">角色名称</th>
				<th data-options="field:'d',width:80,align:'center'">账号管理</th>
				<th data-options="field:'e',width:80,align:'center'">设置货代</th>
				<th data-options="field:'f',width:80,align:'center'">车队管理</th>
				<th data-options="field:'g',width:80,align:'center'">角色管理</th>
				<th data-options="field:'h',width:80,align:'center'">系统日志</th>
				<th data-options="field:'i',width:80,align:'center'">我的线路</th>
				<th data-options="field:'j',width:80,align:'center'">我的车辆</th>
				<th data-options="field:'k',width:80,align:'center'">所有线路</th>
				<th data-options="field:'l',width:80,align:'center'">所有车辆</th>
				<th data-options="field:'m',width:120,align:'center'">设置本帐号代理点</th>
				<th data-options="field:'n',width:120,align:'center'">设置所有帐号代理点</th>
				
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${listjsvo}" var="item" begin="0" step="1" varStatus="status">
				<tr>
				    <td>${status.index+1}</td>
				    <td hidden="hidden">${item.id}</td>
				    <td>${item.jsmc}</td>
				    <td>${item.cysqx.zhgl}权限</td>
					<td>${item.cysqx.szdld}权限</td>
					<td>${item.cysqx.cdgl}权限</td>
					<td>${item.cysqx.jsgl}权限</td>
					<td>${item.cysqx.xtrz}权限</td>
					<td>${item.cysqx.wdxl}权限</td>
					<td>${item.cysqx.wdcl}权限</td>
					<td>${item.cysqx.syxl}权限</td>
					<td>${item.cysqx.sycl}权限</td>
					<td>${item.cysqx.szbdld}权限</td>
					<td>${item.cysqx.szsydld}权限</td>
				</tr>
				</c:forEach>
		</tbody>
		</table>
		</div>
	</div>



	<script type="text/javascript">
		var index = 0;
		function addPanel(){
			index++;
			$('#tt').tabs('add',{
				title: '添加角色',
				content: '<iframe src="cys_tjjs.jsp" frameborder="0" style="padding:5px;width:818px;height:500px;"></iframe>',
				closable: true
			});
		}
		function xiugai(){
			var row = $('#dg').datagrid('getSelected');
			var id = row.g;
			if (row){
				$('#tt').tabs('add',{
					title: '重置角色',
					content: '<iframe src="cysjs_xgjs1.action?id='+id+'" frameborder="0" style="padding:5px;width:818px;height:500px;"></iframe>',
					closable: true
				});
			}
		}
		function shuaxin(){

			window.location="cysjs_findAllJs.action";
		}
		function sxcd(){
			window.location = "yscd_cysFindAll.action";
		}
	</script>
</body>
</html>