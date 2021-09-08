<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- Navbar Start -->
	<div class="container-fluid bg-dark mb-30">
		<div class="row px-xl-5">
			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none"> <span
						class="h1 text-uppercase text-dark bg-light px-2">Multi</span> <span
						class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<%-- 	<c:if test="${empty sessionScope.username}">
								
							</c:if> --%>
							<%-- 	<c:if test="${not empty sessionScope.username}">
								
							</c:if> --%>
							<security:authorize access="!isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/login" class="dropdown-item">Đăng nhập</a> <a
											href="/register" class="dropdown-item">Đăng ký</a>
									</div>
								</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/shop/profile/order" class="dropdown-item">Thông tin</a> <a
											href="/logout" class="dropdown-item">Đăng xuất</a>
									</div>
								</div>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_ADMIN')">  
 								<a href="/admin/index" class="nav-item nav-link">Quản lý</a>
							</security:authorize>
						</div>

					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
</body>
</html>