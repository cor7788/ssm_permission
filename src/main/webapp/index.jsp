<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>首页</title>

    <!-- normalize.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLTE-3.0.1/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- 自定义样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/basic_custom.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <jsp:include page="pages/header.jsp"/>
    <jsp:include page="pages/aside.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <img src="${pageContext.request.contextPath}/images/main.png" alt="belle" style="width: 100%;">
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="float-right d-none d-sm-inline">
            Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/js/adminlte.min.js"></script>
</body>
</html>


