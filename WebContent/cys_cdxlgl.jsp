<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>运输线路管理</title>
	<link rel="stylesheet" type="text/css" href="js/basic/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/basic/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/basic/demo/demo.css">
	<script type="text/javascript" src="js/basic/jquery.min.js"></script>
	<script type="text/javascript" src="js/basic/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/basic/locale/easyui-lang-zh_CN.js"></script>	
	<style type="text/css">
		.cdmc{
		margin-left:140px;
		font-size:18px;
		color:#0248b5;
		font-weight:bold;
		height:40px;
		line-height:40px;
		}
	</style>
</head>
<body style="padding-top:0px; padding-bottom:0px;">

<section style="width:760px;height:40px;margin-top:10px;margin-bottom:10px;padding-left:40px;">
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="addPanel()">添加线路</a>
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="shanchu()">删除线路</a>
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;margin-right:20px;" onclick="sxxl()">刷新</a>
<a href="javascript:void(0)" class="easyui-linkbutton" style="width:80px;" onclick="sxcd()">返回</a>
<span class="cdmc">车队名称:${cdxlmc}</span>
<input type="hidden" value="${cdxlid}" class="cdxlid"/>
<input type="hidden" value="${cdxlmc}" class="cdxlmc"/>
</section>

	<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="padding:0px;width:840px;height:580px;margin-left:-20px;margin-bottom:0px;">
	<div title="所有线路">
		<table id="dg" class="easyui-datagrid" border="0" title="运输线路" style="width:835px;height:545px"
			data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'a',width:80,align:'center'">序号</th>
				<th data-options="field:'id',width:80,align:'center'" hidden="hidden">线路编号</th>
				<th data-options="field:'b',width:80,align:'center'">出发省份</th>
				<th data-options="field:'c',width:80,align:'center'">出发城市</th>
				<th data-options="field:'d',width:80,align:'center'">出发县</th>
				<th data-options="field:'e',width:80,align:'center'">到达省份</th>
				<th data-options="field:'f',width:80,align:'center'">到达城市</th>
				<th data-options="field:'g',width:80,align:'center'">到达县</th>
				<th data-options="field:'h',width:80,align:'center'">重货价格</th>
				<th data-options="field:'i',width:80,align:'center'">重货单位</th>
				<th data-options="field:'j',width:80,align:'center'">轻货价格</th>
				<th data-options="field:'k',width:80,align:'center'">轻货单位</th>
				<th data-options="field:'l',width:80,align:'center'">运输时效（X天/次）</th>
				<th data-options="field:'m',width:80,align:'center'">发车频率</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${listwlx}" var="item" begin="0" step="1" varStatus="status">
				<tr>
				    <td>${status.index+1}</td>
				    <td hidden="hidden">${item.id}</td>
					<td>${item.cfsf}</td>
					<td>${item.cfcs}</td>
					<td>${item.cfx}</td>
					<td>${item.ddsf}</td>
					<td>${item.ddcs}</td>
					<td>${item.ddx}</td>
					<td>${item.zhjg}</td>
					<td>千克</td>
					<td>${item.qhjg}</td>
					<td>立方米</td>
					<td>${item.yssx}</td>
					<td>${item.fcpl}</td>
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
			title: '添加线路',
			content: '<iframe src="cys_cdtjxl.jsp" frameborder="0" style="margin-left:10px;padding:5px;width:815px;height:500px;"></iframe>',
			closable: true
		});
	}
	function shanchu(){
		var row = $('#dg').datagrid('getSelected');
		var id = row.id;
		if (row){
			$.messager.confirm("确认","是否删除该线路?", function (r) {  
		        if (r) {  
		        	tijiao(id);
		        }  
		    }); 
		}
	}
	function sxxl(){
		var id = $(".cdxlid").val();
		var mc = $(".cdxlmc").val();
		window.location="wlx_findByCdid.action?id="+id+"&&mc="+mc;
	}
	
	function sxcd(){
		window.location = "yscd_cysFindAll.action";
	}
	
	var rqt = null;
	function tijiao(arg0){
		if(window.XMLHttpRequest){//非IE浏览器
			rqt = new XMLHttpRequest();
		}else if(window.ActiveXObject){
			try{
				rqt = new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e){
				try{
					rqt = new ActiveXObject("Microsoft.XMLHTTP");
				}catch(e){		
				}
			}
		}
		rqt.onreadystatechange = getresult;
		rqt.open("POST","wlx_cysyhScxl.action?id="+encodeURI(encodeURI(arg0)),false);
		rqt.send("");
	};
			
	function getresult(){
	   if(rqt.readyState == 4){
		   if(rqt.status == 200){
			   var temp = rqt.responseText;
			   if(temp=="true"){
					var a = $.messager.alert('提示','运输线路删除成功。');
					setTimeout("yanchishuaxin()",1500);
			   }else{
				    $.messager.alert('提示','运输线路删除失败，请重试!','warning'); 
			   }
			};
		}
	}

	function yanchishuaxin(){
		var id = $(".cdxlid").val();
		var mc = $(".cdxlmc").val();
		window.location="wlx_findByCdid.action?id="+id+"&&mc="+mc;
	}
		
		
	</script>
</body>
</html>