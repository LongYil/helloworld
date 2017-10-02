<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>用户订单</title>
	<link rel="stylesheet" type="text/css" href="js/basic/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/basic/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="js/basic/demo/demo.css">
	<script type="text/javascript" src="js/basic/jquery.min.js"></script>
	<script type="text/javascript" src="js/basic/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/basic/locale/easyui-lang-zh_CN.js"></script>	
</head>
<body style="padding-top:0px; padding-bottom:0px;">

	<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="padding:0px;width:835px;height:630px;margin-left:-20px;margin-bottom:0px;">
	<div title="所有订单">
		<table id="dg" class="easyui-datagrid" border="0" style="width:830px;height:590px"
			data-options="singleSelect:true,url:'datagrid_data1.json',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'a',width:80,align:'center'">序号</th>
				<th data-options="field:'b',width:80,align:'center'" hidden="hidden">委托人编号</th>
				<th data-options="field:'c',width:80,align:'center'" hidden="hidden">发货代理点编号</th>
				<th data-options="field:'b',width:80,align:'center'" hidden="hidden">收货代理点编号</th>
				<th data-options="field:'e',width:80,align:'center'" hidden="hidden">承运商编号</th>
				<th data-options="field:'f',width:80,align:'center'">订单状态</th>
				<th data-options="field:'g',width:100,align:'center'">货物名称</th>
				<th data-options="field:'i',width:200,align:'center'">出发地址</th>
				<th data-options="field:'j',width:200,align:'center'">到达地址</th>
				<th data-options="field:'k',width:80,align:'center'">总件数</th>
				<th data-options="field:'l',width:80,align:'center'">总重量</th>
				<th data-options="field:'m',width:80,align:'center'">总体积</th>
				<th data-options="field:'n',width:80,align:'center'">预计运费</th>
				<th data-options="field:'o',width:80,align:'center'">实付运费</th>
				<th data-options="field:'p',width:80,align:'center'">发货人姓名</th>
				<th data-options="field:'q',width:120,align:'center'">发货人电话</th>
				<th data-options="field:'r',width:80,align:'center'">收货人姓名</th>
				<th data-options="field:'s',width:120,align:'center'">收货人电话</th>
				<th data-options="field:'t',width:120,align:'center'">订单发起时间</th>
				<th data-options="field:'u',width:120,align:'center'">预计到达时间</th>
				<th data-options="field:'v',width:120,align:'center'">实际到达时间</th>
				<th data-options="field:'w',width:120,align:'center'">操作</th>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${listdd}" var="item" begin="0" step="1" varStatus="status">
				<tr>
				    <td>${status.index+1}</td>
					<td hidden="hidden">${item.wtrbh}</td>
					<td hidden="hidden">${item.fhdld}</td>
					<td hidden="hidden">${item.shdld}</td>
					<td hidden="hidden">${item.cys}</td>
					<td>${item.ddzt}</td>
					<td>${item.hwmc}</td>
					<td>${item.cfsf}${item.cfcs}${item.cfx}${item.cfjd}</td>
					<td>${item.ddsf}${item.ddcs}${item.ddx}${item.ddjd}</td>
					<td>${item.zjs}</td>
					<td>${item.zzl}</td>
					<td>${item.ztj}</td>
					<td>${item.yjyf}</td>
					<td>${item.sfyf}</td>
					<td>${item.fhrxm}</td>
					<td>${item.fhrdh}</td>
					<td>${item.shrxm}</td>
					<td>${item.shrdh}</td>
					<td>${item.fqsj}</td>
					<td>${item.yjsdsj}</td>
					<td>${item.sjsdsj}</td>
					<td>
					<a href="javascript:void(0)" class="easyui-linkbutton" onClick="shanchu('${item.id}')">删除订单</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" onClick="fukuan('${item.id}')">确认付款</a>
					</td>
				</tr>
				</c:forEach>
		</tbody>
		</table>
		</div>
	</div>
</body>
<script type="text/javascript">

	var rqt = null;
	
	function shanchu(arg){
		var row = $('#dg').datagrid('getSelected');
		var name = row.g;
		var fhname = row.p;
		var shname = row.r;
		var hwname = row.g;
		var info = "<br/>货物名称:"+hwname+"<br/>发货人:"+fhname+"&nbsp;&nbsp;&nbsp;收货人:"+shname;
		$.messager.confirm("确认","是否删除订单?"+info, function (r) {  
	        if (r) {
	        	tijiao2(arg);
	        }else{
	        	;
	        }
	    });
	}
	function fukuan(arg){
		var row = $('#dg').datagrid('getSelected');
		var name = row.g;
		var fhname = row.p;
		var shname = row.r;
		var hwname = row.g;
		var info = "<br/>货物名称:"+hwname+"<br/>发货人:"+fhname+"&nbsp;&nbsp;&nbsp;收货人:"+shname;
		$.messager.confirm("确认","是否确认付款?"+info, function (r) {  
	        if (r) {  
	        	tijiao1(arg);
	        }else{
	        	;
	        } 
	    });
	}
	
	function tijiao1(arg0){
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
	rqt.onreadystatechange = getresult1;
	rqt.open("POST","dd_wtrQrfk.action?id="+encodeURI(encodeURI(arg0)),false);
	rqt.send("");
	};
	
	
	function getresult1(){
	   if(rqt.readyState == 4){
		   if(rqt.status == 200){	
			   var temp = rqt.responseText;
			   if(temp=="1"){
				    $.messager.alert('提示','订单付款成功。');  
					setTimeout("yanchishuaxin()",1500);	
			   }else{
				    $.messager.alert('提示','对不起，你的账户余额不足，订单付款失败，请充值后重试!','warning'); 
			   }
			}else{
				;
			};
		   }
	}
	

	
	function tijiao2(arg0){
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
		rqt.onreadystatechange = getresult2;
		rqt.open("POST","dd_wtrDelete.action?id="+encodeURI(encodeURI(arg0)),false);
		rqt.send("");
		};
		
		function getresult2(){
		   if(rqt.readyState == 4){
			   if(rqt.status == 200){
				   var temp = rqt.responseText;
				   if(temp=="true"){
						var a = $.messager.alert('提示','订单删除成功。');
						setTimeout("yanchishuaxin()",1500);
				   }else{
					    $.messager.alert('提示','订单删除失败，请重试!','warning'); 
				   }
					
				};
			   }
		}

		function yanchishuaxin()
		{
		window.location.href="dd_wtrFindWfk.action";
		
		}

</script>
</html>