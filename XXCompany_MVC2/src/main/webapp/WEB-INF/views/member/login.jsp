<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>${title} | 로그인</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	
    <link rel="shortcut icon" href="/resources/dist/img/favicon.ico">
    
	<!-- jQuery 3 -->
	<script charset="utf-8" src="/resources/bower_components/jquery/dist/jquery.min.js?version=2"></script>
	<!-- Bootstrap 3.3.7 -->
	<script charset="utf-8" src="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js?version=2"></script>
	<!-- iCheck -->
	<script charset="utf-8" src="/resources/plugins/iCheck/icheck.min.js?version=2"></script>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="/resources/bower_components/bootstrap/dist/css/bootstrap.min.css?version=2">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/resources/bower_components/font-awesome/css/font-awesome.min.css?version=2">
	<!-- Ionicons -->
	<link rel="stylesheet" href="/resources/bower_components/Ionicons/css/ionicons.min.css?version=2">
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css?version=2">
	<!-- iCheck -->
	<link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css?version=2">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- Google Font -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="/">${title}</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-header">
			<h1><c:out value="${error}" /></h1>
			<h1><c:out value="${logout}" /></h1>
		</div>
		<div class="login-box-body">
			<p class="login-box-msg">Sign in to start your session</p>
			<form action="/login" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="form-group has-feedback">
					<input type="text" name="username" class="form-control" placeholder="username Enter...">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" name="password" class="form-control" placeholder="password Enter...">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label><input type="checkbox" name="remember-me" /> remember me</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- <div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" class="btn btn-block btn-social btn-facebook btn-flat">
					<i class="fa fa-facebook"></i> Sign in using Facebook
				</a>
				<a href="#" class="btn btn-block btn-social btn-google btn-flat">
					<i class="fa fa-google-plus"></i> Sign in using Google+
				</a>
			</div> -->
			<!-- /.social-auth-links -->

			<a href="#">I forgot my password</a><br>
			<a href="/member/register" class="text-center">Register a new membership</a>

		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->
	<script>
		$(function() {
			var message = '${message}';
			
			if (message != null && message != '') { alert(message); }
			
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
		});
	</script>
</body>
</html>
