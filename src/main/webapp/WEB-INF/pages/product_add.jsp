<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>添加产品</title>

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
    <style>
        .fas {
            line-height: inherit;
        }
    </style>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <jsp:include page="header.jsp"/>
    <jsp:include page="aside.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>数据添加</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">首页</a></li>
                            <li class="breadcrumb-item active">数据添加</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">添加产品</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form" method="post" action="${pageContext.request.contextPath}/product/add">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="productNumber">产品编号</label>
                                    <input type="text" class="form-control" id="productNumber" name="productNumber"
                                           placeholder="产品编号">
                                </div>
                                <div class="form-group">
                                    <label for="productName">产品名称</label>
                                    <input type="text" class="form-control" id="productName" name="productName"
                                           placeholder="产品名称">
                                </div>
                                <div class="form-group">
                                    <label for="cityName">出发城市</label>
                                    <input type="text" class="form-control" id="cityName" name="cityName"
                                           placeholder="出发城市">
                                </div>
                                <div class="form-group">
                                    <label for="departureTime">出发时间</label>
                                    <input type="datetime-local" class="form-control" id="departureTime" name="departureTime"
                                           placeholder="出发时间">
                                </div>
                                <div class="form-group">
                                    <label for="productPrice">产品价格</label>
                                    <input type="number" step="0.01" class="form-control" id="productPrice" name="productPrice"
                                           placeholder="产品价格">
                                </div>
                                <div class="form-group">
                                    <label for="productDesc">产品描述</label>
                                    <input type="text" class="form-control" id="productDesc" name="productDesc"
                                           placeholder="产品描述">
                                </div>
                                <div class="form-group">
                                    <label for="productStatus">状态</label>
                                    <select class="form-control" id="productStatus" name="productStatus">
                                        <option value="1">开启</option>
                                        <option value="0">关闭</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
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


