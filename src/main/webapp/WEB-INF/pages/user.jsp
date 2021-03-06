<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>用户管理</title>

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
    <jsp:include page="../../pages/header.jsp"/>
    <jsp:include page="../../pages/aside.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>用户管理</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">首页</a></li>
                            <li class="breadcrumb-item">系统管理</li>
                            <li class="breadcrumb-item active">用户管理</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">用户表单</h3>
                            <div style="float:right;">
                                <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/user/add">添加用户</a>
                            </div>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>邮箱</th>
                                    <th>用户名</th>
                                    <th>手机号</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userList}" var="pUser">
                                    <tr>
                                        <td>${pUser.id}</td>
                                        <td>${pUser.email}</td>
                                        <td>${pUser.username}</td>
                                        <td>${pUser.phoneNumber}</td>
                                        <td>${pUser.statusStr}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/user/${pUser.id}"
                                               class="btn btn-default btn-sm">详情</a>
                                            <a href="${pageContext.request.contextPath}/user/add_role?id=${pUser.id}"
                                               class="btn btn-default btn-sm">添加角色</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        <div class="p-3">
            <h5>Title</h5>
            <p>Sidebar content</p>
        </div>
    </aside>
    <!-- /.control-sidebar -->

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
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/datatables/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/js/adminlte.min.js"></script>
<script>
    $("#example1").DataTable();
</script>
</body>
</html>


