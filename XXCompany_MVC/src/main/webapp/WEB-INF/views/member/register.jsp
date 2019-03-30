<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>(주)태성전자 | 회원가입</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/dist/img/favicon.ico">
    
	<!-- jQuery 3 -->
	<script charset="utf-8" src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js?version=1"></script>
	<!-- Bootstrap 3.3.7 -->
	<script charset="utf-8" src="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js?version=1"></script>
	<!-- iCheck -->
	<script charset="utf-8" src="${pageContext.request.contextPath}/resources/plugins/iCheck/icheck.min.js?version=1"></script>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/bootstrap/dist/css/bootstrap.min.css?version=1">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/font-awesome/css/font-awesome.min.css?version=1">
	<!-- Ionicons -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bower_components/Ionicons/css/ionicons.min.css?version=1">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css?version=1">
	<!-- iCheck -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/iCheck/square/blue.css?version=1">
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- Google Font -->
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<a href="/"><b>(주)태</b>성전자</a>
		</div>
		
		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>
			<form action="/member/registerPost" method="post">
				<div class="form-group has-feedback">
					<input type="text" name="username" class="form-control" placeholder="이름">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" name="joindate" class="form-control" placeholder="입사일">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password1" class="form-control" placeholder="Password">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password2" class="form-control" placeholder="Retype password">
					<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label>
								<input type="checkbox"> I agree to the <a href="#">terms</a>
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<!-- <div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" class="btn btn-block btn-social btn-facebook btn-flat">
					<i class="fa fa-facebook"></i> Sign up using Facebook
				</a>
				<a href="#" class="btn btn-block btn-social btn-google btn-flat">
					<i class="fa fa-google-plus"></i> Sign up using Google+
				</a>
			</div> -->

			<a href="/member/login" class="text-center">I already have a membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
	
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
