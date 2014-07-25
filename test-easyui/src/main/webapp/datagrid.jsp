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

	<table class="easyui-datagrid" style="width: 400px; height: auto;">
		<thead>
			<tr>
				<th field="n1" rowspan="2" width="50px">Col 1</th> 
				<th field="n2" rowspan="2" width="50px">Col 2</th>
				<th field="n3" rowspan="2" width="50px">Col 3</th>
				<th colspan="3" >Details</th>
			</tr>
			<tr>
				<th field="n4" width="50px">Col 4</th>
				<th field="n5" width="50px">Col 5</th>
				<th field="n6" width="50px">Col 6</th>
			</tr>
		</thead>
		<tbody>
			<tr>                           
	            <td>Data 1</td>            
	            <td>Data 2</td>            
	            <td>Data 3</td>            
	            <td>Data 4</td>            
	            <td>Data 5</td>            
	            <td>Data 6</td>            
        	</tr>                          
        	<tr>                           
	            <td>Data 1</td>             
	            <td>Data 2</td>            
	            <td>Data 3</td>            
	            <td>Data 4</td>            
	            <td>Data 5</td>            
	            <td>Data 6</td>            
        	</tr>  
		</tbody>
	</table>
	
	<!-- 
	fitColumns 让列填充表格  好像要配合width使用
	 -->
	<table id="tt" class="easyui-datagrid" style="width: 550px;height: auto;" url="user/list2" title="Load Data"
			rownumbers="true" iconCls="icon-save" pagination="true" fitColumns="true" toolbar="#tb"> 
		<thead>
			<th field="firstName" width="100">First Name</th>
			<th field="lastName" width="100">Last Name</th>
			<th field="phone" width="100">Phone</th>
			<th field="email" width="100">Email</th>
		</thead>
	</table>
	<div id="tb" style="padding: 3px;">
		<span>First Name: </span>
		<input id="firstName" style="line-height:22px;border:1px solid #ccc"/> 
		<a href="#" class="easyui-linkbutton" plain="true" onclick="doSearch();">Search</a>
	</div>

</body>
<script type="text/javascript">
function doSearch() {
	$('#tt').datagrid('load', {
		firstName : $('#firstName').val()
	});
}
</script>
</html>
