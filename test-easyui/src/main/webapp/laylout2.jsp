<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/easyui/themes/icon.css">
<style type="text/css">
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.js"></script>
<style>
		.p-search{
			background:#fafafa;
			padding:5px;
			border:1px solid #ccc;
			border-bottom:0;
			overflow:hidden;
		}
		.p-search input{
			width:300px;
			border:1px solid #ccc;
			background: #fff url('images/search.png') no-repeat right top;
		}
		.p-right{
			text-align:center;
			border:1px solid #ccc;
			border-left:0;
			width:150px;
			background:#fafafa;
			padding-top:10px;
		}
</style>
</head>
<body>
	<div class="easyui-panel" title="Complex panel Layout" collapsible="true" style="padding: 5px;width: 500px;height: 250px;">
		<div class="easyui-layout" fit="true">
			<div data-options="region:'north',border:false" class="p-search"> 
				<label>Search:</label><input></input>
			</div>
			<div data-options="region:'east',border:false" class="p-right"> 
				<img src="images/msn.gif"/>
			</div>
			<div data-options="region:'center'">
				<div class="easyui-layout" fit="true">
                    <div region="center" border="false">
                    </div>
                    <div region="south" split="true" border="false" style="height:60px;">
                        <textarea style="border:0;width:100%;height:100%;resize:none">Hi,I am easyui.</textarea>
                    </div>
                </div>
			</div>  
		</div>
	</div>
	<hr/>
	
	<div class="easyui-accordion" style="width:300px;height:200px;">
	    <div title="About Accordion" iconCls="icon-ok" style="overflow:auto;padding:10px;">
	        <h3 style="color:#0099FF;">Accordion for jQuery</h3>
	        <p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily.</p>
	    </div>
	    <div title="About easyui" iconCls="icon-reload" selected="true" style="padding:10px;">
	        easyui help you build your web page easily
	    </div>
	    <div title="Tree Menu">
	        <ul id="tt1" class="easyui-tree">
	            <li>
	                <span>Folder1</span>
	                <ul>
	                    <li>
	                        <span>Sub Folder 1</span>
	                        <ul>
	                            <li><span>File 11</span></li>
	                            <li><span>File 12</span></li>
	                            <li><span>File 13</span></li>
	                        </ul>
	                    </li>
	                    <li><span>File 2</span></li>
	                    <li><span>File 3</span></li>
	                </ul>
	            </li>
	            <li><span>File2</span></li>
	        </ul>
	    </div>
	</div>
	
</body>
<script type="text/javascript">
</script>
</html>
