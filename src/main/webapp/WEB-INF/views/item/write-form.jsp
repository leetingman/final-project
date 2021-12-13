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
<link rel="stylesheet" href="assets/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/user.css">

<title>Craigs - Easy Buy & Sell Listing HTML Template</title>

</head>
<body>
	<div class="page sub-page">
		<!--*********************************************************************************************************-->
		<!--************ HERO ***************************************************************************************-->
		<!--*********************************************************************************************************-->
		<header class="hero">
			<div class="hero-wrapper">
				<!--============ Main Navigation ====================================================================-->
				<div class="main-navigation">
					<div class="container">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.html">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Pages</a></li>
							<li class="breadcrumb-item active">Submit</li>
						</ol>
						<!--end breadcrumb-->
					</div>
					<!--end container-->
				</div>
				<!--============ End Main Navigation ================================================================-->
				<!--============ Page Title =========================================================================-->
				<div class="page-title">
					<div class="container">
						<h1>중고거래 글쓰기</h1>
					</div>
					<!--end container-->
				</div>
				<!--============ End Page Title =====================================================================-->
				<div class="background"></div>
				<!--end background-->
			</div>
			<!--end hero-wrapper-->
		</header>
		<!--end hero-->

		<!--*********************************************************************************************************-->
		<!--************ CONTENT ************************************************************************************-->
		<!--*********************************************************************************************************-->
		<section class="content">

			<section class="block">
				<div class="container">
					<form class="form form-submit">
						<section style="margin-bottom: 0px">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="submit-category" class="col-form-label">Category</label>
										<select class="change-tab"
											data-change-tab-target="category-tabs" name="submit_category"
											id="submit-category" data-placeholder="Select Category">
											<option value="">Select Category</option>
											<option value="computers">Computers</option>
											<option value="real_estate">Real Estate</option>
											<option value="cars_motorcycles">Cars & Motorcycles</option>
											<option value="furniture">Furniture</option>
										</select>
									</div>
									<!--end form-group-->
								</div>
								<!--end col-md-4-->
							</div>
							<!--end row-->
						</section>
						<section style="margin-bottom: 0px">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label for="title" class="col-form-label required">Title</label>
										<input name="title" type="text" class="form-control"
											id="title" placeholder="Title" required>
									</div>
									<!--end form-group-->
								</div>
								<!--end col-md-8-->
								<div class="col-md-4">
									<div class="form-group">
										<label for="price" class="col-form-label required">Price</label>
										<input name="price" type="text" class="form-control"
											id="price" required> <span class="input-group-addon">원</span>
									</div>
									<!--end form-group-->
								</div>
							</div>
						</section>
						<!--end basic information-->
						<section style="margin-bottom: 0px">
							<div class="form-group">
								<label for="details" class="col-form-label">Additional
									Details</label>
								<textarea name="details" id="details" class="form-control"
									rows="4"></textarea>
							</div>
							<!--end form-group-->
						</section>
						<section>
							<div class="file-upload-previews"></div>
							<div class="file-upload">
								<input type="file" name="files[]"
									class="file-upload-input with-preview" multiple
									title="Click to add files" maxlength="10" accept="gif|jpg|png">
								<span><i class="fa fa-plus-circle"></i>Click or drag
									images here</span>
							</div>
						</section>
						 <section class="clearfix">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary large icon float-right">완료<i class="fa fa-chevron-right"></i></button>
                            </div>
                        </section>
					</form>
					<!--end form-submit-->
				</div>
				<!--end container-->
			</section>
			<!--end block-->
		</section>
		<!--end content-->
	</div>
	<!--end page-->

	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
	<script type="text/javascript"
		src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyBEDfNcQRmKQEyulDN8nGWjLYPm8s4YB58&libraries=places"></script>
	<script src="assets/js/selectize.min.js"></script>
	<script src="assets/js/masonry.pkgd.min.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<!--<script src="assets/js/jquery.validate.min.js"></script>-->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
	<script src="assets/js/jquery-validate.bootstrap-tooltip.min.js"></script>
	<script src="assets/js/jQuery.MultiFile.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<script>
		var latitude = 51.511971;
		var longitude = -0.137597;
		var markerImage = "assets/img/map-marker.png";
		var mapTheme = "light";
		var mapElement = "map-submit";
		var markerDrag = true;
		simpleMap(latitude, longitude, markerImage, mapTheme, mapElement,
				markerDrag);
	</script>

</body>
</html>
