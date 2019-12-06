<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="${pageContext.request.contextPath}/AdminLTE-3.0.1/img/AdminLTELogo.png" alt="AdminLTE Logo"
             class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="${pageContext.request.contextPath}/AdminLTE-3.0.1/img/user2-160x160.jpg"
                     class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">
                    <security:authentication property="principal.username"/>
                </a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <!-- 首页 -->
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}" class="nav-link">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            首页
                        </p>
                    </a>
                </li><!-- /首页 -->

                <!-- 系统管理 -->
                <security:authorize access="hasRole('ROLE_ADMIN')">
                    <li class="nav-item has-treeview menu-open">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                系统管理
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/user" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>用户管理</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/role" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>角色管理</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/permission" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>权限管理</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="${pageContext.request.contextPath}/log" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>日志管理</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </security:authorize>
                <!-- /系统管理 -->

                <!-- 基础数据 -->
                <li class="nav-item has-treeview menu-open">
                    <a href="#" class="nav-link active">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            基础数据
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/product" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>产品管理</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/order" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>订单管理</p>
                            </a>
                        </li>
                    </ul>
                </li><!-- /基础数据 -->

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>