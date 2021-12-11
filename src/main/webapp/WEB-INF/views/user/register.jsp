<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="ThemeStarz">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="assets/fonts/font-awesome.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/selectize.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/user.css">

<title>home</title>

</head>
<body>
	<section class="block">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
					<div id="container_border"
						style="background-color: #f7fcf9; padding-bottom: 10px;">
						<form class="form clearfix">
							<div class="profile-image"  id="register-image">
								<div class="image background-image">
									<img src="assets/img/루피감자.png" alt="">
									<!-- author-default.png -->
								</div>
								<div class="single-file-input">
									<input type="file" id="user_image" name="user_image">
									<div class="btn btn-framed btn-primary small">Upload a
										picture</div>
								</div>
							</div>
							<br>
							<div class="form-group">
								<input name="id" type="text" placeholder="아이디"
									class="form-control" id="login_id" placeholder="Your Name"
									required>
							</div>
							<div class="form-group">
								<input name="name" type="tel" placeholder="전화번호"
									class="form-control" id="login_tel" required>
							</div>
							<!--end form-group-->
							<div class="form-group">
								<input name="address" type="text" placeholder="주소"
									class="form-control" id="login_address" required>
							</div>
							<!--end form-group-->
							<div class="form-group">
								<input name="password" type="password" placeholder="비밀번호"
									class="form-control" id="login_password" required>
							</div>
							<!--end form-group-->
							<div class="form-group">
								<input name="passwordCheck" type="password"
									placeholder="비밀번호 확인" class="form-control" id="login_password"
									required>
							</div>
							<!--end form-group-->
						</form>
						<!--end form-group-->
						<div class="form-group">
							<button type="submit" class="btn btn-primary2 width-100"
								style="font-size: 1.3rem;">가입하기</button>
						</div>
					</div>
					<hr>
					<div>
						<button type="button" class="btn btn-primary width-100"
							style="border: none; background-color: yellow; color: brown; font-size: 1.3rem;">
							<i class="fa fa-comment"></i> 카카오톡계정으로 가입하기
						</button>
					</div>
					<br>
					<div style="text-align: center; font-size: 1.3rem;">
						<a href="login">이미 계정이 있으신가요?</a>
					</div>
				</div>
				<!--end col-md-6-->
			</div>
			<!--end row-->
		</div>
		<!--end container-->
	</section>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<script type="text/javascript"
		src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyBEDfNcQRmKQEyulDN8nGWjLYPm8s4YB58&libraries=places"></script>
	<script src="assets/js/selectize.min.js"></script>
	<script src="assets/js/masonry.pkgd.min.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="assets/js/custom.js"></script>

</body>
</html>
