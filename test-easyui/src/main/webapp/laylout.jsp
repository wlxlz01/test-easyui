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
	<div class="easyui-layout" style="width: 400px; height: 200px;">
		<div region="west" split="true" title="Navigator" style="width: 150px;">
			<p style="padding:5px;margin:0;">Select language:</p>
			<ul>
	            <li><a href="javascript:void(0)" onclick="showcontent('java')">Java</a></li>
	            <li><a href="javascript:void(0)" onclick="showcontent('cshape')">C#</a></li>
	            <li><a href="javascript:void(0)" onclick="showcontent('vb')">VB</a></li>
	            <li><a href="javascript:void(0)" onclick="showcontent('erlang')">Erlang</a></li>
        	</ul>
		</div>
		<div id="content" region="center" title="Language" style="padding:5px;"></div>
	</div>

</body>
<script type="text/javascript">
function showcontent(language){
    $('#content').html('Introduction to ' + language + ' language');
}
</script>
</html>
