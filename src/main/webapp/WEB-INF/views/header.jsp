<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title>管理系统</title>
		<%
			String path = request.getContextPath();
			 
			String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort() + path + "/";
			// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。     
			pageContext.setAttribute("basePath", basePath);	
		
		%>	
		<base href="<%=basePath%>">
		
		<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="admin/js/util.js" type="text/javascript"></script>
		
		<!-- 提示框，js和css文件都在view下的info中 -->
		<script src="admin/artdialog/artDialog.source.js?skin=default"></script>
		
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="admin/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="admin/assets/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="admin/assets/css/jquery-ui.min.css" />
		<link rel="stylesheet" href="admin/assets/css/datepicker.css" />
		<link rel="stylesheet" href="admin/assets/css/ui.jqgrid.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="admin/assets/css/ace-fonts.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="admin/assets/css/ace.min.css"/>
		<link rel="stylesheet" href="admin/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="admin/assets/css/ace-rtl.min.css" />
 
 		<link rel="stylesheet" href="admin/assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="admin/docs/assets/js/themes/sunburst.css" />
		
		<script type="text/javascript">
			var basePath = "<%=basePath%>";
		</script>
		<style type="text/css">
		    html, body {
		     background-color:transparent
		    }
		</style>
	</head>
</html>