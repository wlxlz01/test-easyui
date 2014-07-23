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
	<div style="margin:10px">
	    <a href="#" class="easyui-linkbutton" onclick="addTab('google','http://www.google.com')">google</a>
	    <a href="#" class="easyui-linkbutton" onclick="addTab('jquery','http://jquery.com/')">jquery</a>
	    <a href="#" class="easyui-linkbutton" onclick="addTab('easyui','http://jeasyui.com/')">easyui</a>
	</div>
	<div id="tt" class="easyui-tabs" style="width: 400px;height: 100px;">
		<div title="Home"></div>
		<div title="First Tab">
			First Tab
		</div>
		<div title="Second Tab" closable="true" style="padding: 10px">
			Second Tab
		</div>
		<div title="Third Tab" iconCls="icon-reload">
			Third Tab
		</div>
	</div>
	
	<div id="tt2" class="easyui-tabs" style="width:330px;height:270px;">
	    <div title="Shirt1" style="padding:20px;">
	        <img src="images/shirt1.gif">
	    </div>
	    <div title="Shirt2" style="padding:20px;">
	        <img src="images/shirt2.gif">
	    </div>
	    <div title="Shirt3" style="padding:20px;">
	        <img src="images/shirt3.gif">
	    </div>
	    <div title="Shirt4" style="padding:20px;">
	        <img src="images/shirt4.gif">
	    </div>
	    <div title="Shirt5" style="padding:20px;">
	        <img src="images/shirt5.gif">
	    </div>
	</div>
</body>
<script type="text/javascript">
$(function() {
	var index = 0;
	var t = $('#tt2');
	var tabs = t.tabs('tabs');
	setInterval(function(){
	    t.tabs('select', tabs[index].panel('options').title);
	    index++;
	    if (index >= tabs.length){
	        index = 0;
	    }
	}, 3000);
});

function addTab(title, url) {
	if ($('#tt').tabs('exists', title)) {
		$('#tt').tabs('select', title);
	} else {
		var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
		$('#tt').tabs('add', {
			title : title,
			closable : true,
			content : content			
		});
	}
}
</script>
</html>
