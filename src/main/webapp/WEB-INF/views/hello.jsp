<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html ng-app="bookStoreApp">

<head>
    <meta charset="UTF-8">
    <title>BookStore</title>
    <link rel="stylesheet" href="framework/bootstrap-3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="framework/bootstrap-3.0.0/css/bootstrap.theme.min.css">
    <link rel="stylesheet" href="css/index2.css">
    <script src="framework/1.3.0.14/angular.js"></script>
    <script src="framework/1.3.0.14/angular-route.js"></script>
    <script src="framework/1.3.0.14/angular-animate.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/filters.js"></script>
    <script src="js/services.js"></script>
    <script src="js/directives.js"></script>
</head>

<body>
    <div class="page {{pageClass}}" ng-view>
    </div>
</body>

</html>

