<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/easyui/themes/icon.css">
<style type="text/css">
#fm {
	margin: 0;
	padding: 10px 30px;
}

.ftitle {
	font-size: 14px;
	font-weight: bold;
	color: #666;
	padding: 5px 0;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.fitem {
	margin-bottom: 5px;
}

.fitem label {
	display: inline-block;
	width: 80px;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.js"></script>
</head>
<body>

	<table id="dg" title="My Users" class="easyui-datagrid" style="width: 550px; height: 250px"
		url="user/list" toolbar="#toolbar" rownumbers="true" fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="firstName" width="50">First Name</th>
				<th field="lastName" width="50">Last Name</th>
				<th field="phone" width="50">Phone</th>
				<th field="email" width="50">Email</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
	</div>

	<div id="dlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px"
		closed="true" buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<form id="fm" method="post">
			<div class="fitem">
				<label>First Name:</label> <input name="firstName" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Last Name:</label> <input name="lastName" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Phone:</label> <input name="phone">
			</div>
			<div class="fitem">
				<label>Email:</label> <input name="email" class="easyui-validatebox" validType="email">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>

</body>
<script type="text/javascript">
var url;

function newUser() {
	$('#dlg').dialog('open').dialog('setTitle', 'New User');
	$('#fm').form('clear');
	url = 'user/add';
}

function editUser() {
	var row = $('#dg').datagrid('getSelected');
	if (row) {
		$('#dlg').dialog('open').dialog('setTitle', 'Edit User');
		$('#fm').form('load',row);
		url = 'user/update?id=' + row.id;
	} else {
		$.messager.show({title : 'alert',msg : 'Select a row !'});
	}
}

function saveUser() {
	$('#fm').form('submit', {
		url : url,
		onSubmit : function() {
			return $(this).form('validate');
		},
		success : function(result) {
			//var result = eval('(' + result + ')');
			//if (result.errorMsg) {
			//	$.messager.show({
			//		title : 'Error',
			//		msg : result.errorMsg
			//	});
			//} else {
				$('#dlg').dialog('close'); // close the dialog
				$('#dg').datagrid('reload'); // reload the user data
			//}
		}
	});
}

function destroyUser(){
    var row = $('#dg').datagrid('getSelected');
    if (row){
        $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
        	if (r){
                $.post('user/delete',{id:row.id},function(result){
                   // if (result.success){
                        $('#dg').datagrid('reload');    // reload the user data
                  //  } else {
                //        $.messager.show({    // show error message
                //            title: 'Error',
                 //           msg: result.errorMsg
                 //       });
                 //   }
                //},'json');//这样写返回值一定要是json
        		});
            }
        });
    }
}
</script>
</html>