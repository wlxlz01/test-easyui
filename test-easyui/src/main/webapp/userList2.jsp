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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.edatagrid.js"></script>

</head>
<body>

	<h2>CRUD DataGrid</h2>
	<p>Double click the row to begin editing.</p>
	
	<table id="dg" title="My Users" style="width:550px;height:250px" toolbar="#toolbar" idField="id"
        rownumbers="true" fitColumns="true" singleSelect="true" pagination="true">
	    <thead>
	        <tr>
	            <th field="firstName" width="50" editor="{type:'validatebox',options:{required:true}}">First Name</th>
	            <th field="lastName" width="50" editor="{type:'validatebox',options:{required:true}}">Last Name</th>
	            <th field="phone" width="50" editor="text">Phone</th>
	            <th field="email" width="50" editor="{type:'validatebox',options:{validType:'email'}}">Email</th>
	        </tr>
	    </thead>
	</table>
	<div id="toolbar">
	    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#dg').edatagrid('addRow')">New</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#dg').edatagrid('destroyRow')">Destroy</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">Save</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Cancel</a>
	</div>
	

</body>
<script type="text/javascript">

$('#dg').edatagrid({
	url : 'user/list',
	saveUrl : 'user/add',
	updateUrl : 'user/update',
	destroyUrl : 'user/delete'
});

</script>
</html>