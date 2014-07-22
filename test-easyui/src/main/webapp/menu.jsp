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
</head>
<body>
	<div id="mm" class="easyui-menu" style="width: 120px">
		<div onclick="javascript: alert('New');">New</div>
		<div>
			<span>Open</span>
			<div style="width: 150px">
				<div><b>Word</b></div>
				<div>Excel</div>
				<div>PowerPoint</div>
			</div>
		</div>
		<div data-options="iconCls:'icon-save'">Save</div>
		<div class="menu-sep"></div>
		<div iconCls='icon-save'>Ext</div>
	</div>
	
	<div style="width: 200px">
		<a href="#" class="easyui-menubutton" menu="#mm1" iconCls="icon-edit">Edit</a>
		<a href="#" class="easyui-menubutton" menu="#mm2" iconCls="icon-help">Help</a>
	</div>
	<div id="mm1" style="width: 150px">
		<div iconCls="icon-undo">Undo</div>
		<div iconCls="icon-redo">Redo</div>
		<div class="menu-sep"></div>
    	<div>Cut</div>
    	<div>Copy</div>
    	<div>Paste</div>
    	<div class="menu-sep"></div>
    	<div iconCls="icon-remove">Delete</div>
    	<div>Select All</div>
	</div>
	<div id="mm2" style="width:100px;">
	    <div>Help</div>
	    <div>Update</div>
	    <div>About</div>
	</div>
	
	<div style="width:120px;">
	    <a href="#" class="easyui-splitbutton" menu="#mm" iconCls="icon-edit">Edit</a>
	    <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-help"></a>
	</div>
	<div id="mm" style="width:150px;">
	    <div iconCls="icon-undo">Undo</div>
	    <div iconCls="icon-redo">Redo</div>
	    <div class="menu-sep"></div>
	    <div>Cut</div>
	    <div>Copy</div>
	    <div>Paste</div>
	    <div class="menu-sep"></div>
	    <div>
	        <span>Open</span>
	        <div style="width:150px;">
	            <div>Firefox</div>
	            <div>Internet Explorer</div>
	            <div class="menu-sep"></div>
	            <div>Select Program...</div>
	        </div>
	    </div>
	    <div iconCls="icon-remove">Delete</div>
	    <div>Select All</div>
	</div>
</body>
<script type="text/javascript">
$(function() {
	$('#mm').menu('show', {
		left: 200,
		top: 100
	});
});
</script>
</html>
