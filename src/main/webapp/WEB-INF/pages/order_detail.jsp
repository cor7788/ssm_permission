<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>订单列表</title>

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
                        <h1>订单详情</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">基础数据</a></li>
                            <li class="breadcrumb-item active">订单详情</li>
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
                            <h3 class="card-title">产品信息</h3>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row">
                                <div class="col-2">ID:</div>
                                <div class="col-4">${order.product.id}</div>
                                <div class="col-2">产品编号：</div>
                                <div class="col-4">${order.product.productNumber}</div>
                            </div>
                            <div class="row">
                                <div class="col-2">产品名称：</div>
                                <div class="col-4">${order.product.productName}</div>
                                <div class="col-2">出发城市：</div>
                                <div class="col-4">${order.product.cityName}</div>
                            </div>
                            <div class="row">
                                <div class="col-2">出发时间：</div>
                                <div class="col-4">${order.product.departureTime}</div>
                                <div class="col-2">产品价格：</div>
                                <div class="col-4">${order.product.productPrice}</div>
                            </div>
                            <div class="row">
                                <div class="col-2">产品状态：</div>
                                <div class="col-4">${order.product.productStatus}</div>
                                <div class="col-2">产品描述：</div>
                                <div class="col-4">${order.product.productDesc}</div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">会员信息</h3>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row">
                                <div class="col-2">ID:</div>
                                <div class="col-4">${order.member.id}</div>
                                <div class="col-2">姓名：</div>
                                <div class="col-4">${order.member.name}</div>
                            </div>
                            <div class="row">
                                <div class="col-2">昵称：</div>
                                <div class="col-4">${order.member.nickName}</div>
                                <div class="col-2">手机号：</div>
                                <div class="col-4">${order.member.phoneNumber}</div>
                            </div>
                            <div class="row">
                                <div class="col-2">邮箱：</div>
                                <div class="col-4">${order.member.email}</div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">旅客表单</h3>
                        </div>

                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>手机号</th>
                                    <th>身份证号</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${order.travellers}" var="traveller">
                                    <tr>
                                        <td>${traveller.id}</td>
                                        <td>${traveller.name}</td>
                                        <td>${traveller.gender}</td>
                                        <td>${traveller.phoneNumber}</td>
                                        <td>${traveller.identityCard}</td>
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
    $("#example1").DataTable({
        "paging": false,
        "ordering": false,
        "info": false
    });
</script>
</body>
</html>


