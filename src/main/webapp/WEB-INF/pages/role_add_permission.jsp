<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>为角色添加权限</title>

    <!-- normalize.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/select2/css/select2.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
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
                        <h1>配置权限</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">系统管理</a></li>
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/role">角色管理</a></li>
                            <li class="breadcrumb-item active">配置权限</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-6">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title">为角色添加权限</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form" method="post"
                              action="${pageContext.request.contextPath}/role/add_permissions">
                            <div class="card-body">
                                <div class="form-group">
                                    <input type="hidden" name="roleId" value="${roleId}">
                                    <label for="permissions">权限</label>
                                    <select id="permissions" class="select2" name="permissionIds" multiple="multiple"
                                            data-placeholder="选择权限"
                                            style="width: 100%;">
                                        <c:forEach items="${permissions}" var="per">
                                            <option value="${per.id}">${per.permissionName}-${per.permissionUrl}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">提交</button>
                            </div>
                        </form>
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
<!-- Select2 -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/plugins/select2/js/select2.full.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLTE-3.0.1/js/adminlte.min.js"></script>
<script>
    $('.select2').select2();
</script>
</body>
</html>


