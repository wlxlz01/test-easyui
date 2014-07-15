<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/easyui/themes/icon.css">
<style type="text/css">
.dd-demo{
	width:60px;
	height:60px;
	border:2px solid #d3d3d3;
	position:absolute;
}
.proxy{
	border:1px dotted #333;
	width:60px;
	height:60px;
	text-align:center;
	background:#fafafa;
}
#dd1{
	background:#E0ECFF;
	left:20px;
	top:160px;
}
#dd2{
	background:#8DB2E3;
	left:100px;
	top:160px;
}
#dd3{
	background:#FBEC88;
	left:180px;
	top:160px;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.js"></script>
</head>
<body>
	<div id="dd1" class="dd-demo"></div>
	<div id="dd2" class="dd-demo"></div>
	<div id="dd3" class="dd-demo"></div>

</body>
<script type="text/javascript">
$(function() {
	$('#dd1').draggable();
	$('#dd2').draggable({proxy : 'clone'});
	$('#dd3').draggable({
		proxy : function(source) {
			var p = $('<div class="poxy">proxy</div>');
			p.appendTo('body');
			return p;
		}		
	});
});

</script>
</html>