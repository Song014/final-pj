<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Users / Profile - NiceAdmin Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link
	href="${pageContext.request.contextPath}/resources/img/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">

</head>

<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/aside.jsp"%>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Profile</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Users</li>
					<li class="breadcrumb-item active">Profile</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							<img
								src="${mypage.profile == null ? '/resources/img/profile-img.jpg':('https://osdsbucket.s3.amazonaws.com/osds/'+=mypage.userId += '/' += mypage.profile) }"
								alt="Profile" class="rounded-circle" id="profileImages">
							<h2>${mypage.name }</h2>
							<h3>Web Designer</h3>
							<div class="social-links mt-2">
								<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
									href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
									href="#" class="instagram"><i class="bi bi-instagram"></i></a>
								<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>

				</div>

				<div class="col-xl-8">

					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview">Overview</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit">Edit Profile</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-settings">Settings</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-change-password">Change
										Password</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">

									<h5 class="card-title"
										style="font-family: Roboto, sans-serif; font-weight: 700; line-height: 1.5; margin-bottom: 0; padding: 15px 0px; font-size: 22px; color: #012970;">Profile
										Details</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">이름</div>
										<div class="col-lg-9 col-md-8">${mypage.name }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">아이디</div>
										<div class="col-lg-9 col-md-8">${mypage.userId }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">전화번호</div>
										<div class="col-lg-9 col-md-8">${mypage.phone }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">성별</div>
										<div class="col-lg-9 col-md-8">${mypage.gender }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">생일</div>
										<div class="col-lg-9 col-md-8">${mypage.birthday }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">주소</div>
										<div class="col-lg-9 col-md-8">${mypage.addr1 }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">가입일</div>
										<div class="col-lg-9 col-md-8">${mypage.regDate }</div>
									</div>

								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

									<!-- Profile Edit Form -->
									<form>
										<div class="row mb-3">
											<label for="profileImage"
												class="col-md-4 col-lg-3 col-form-label">Profile
												Image</label>
											<div class="col-md-8 col-lg-9">
												<img id="profileImage"
													src="${mypage.profile == null ? '/resources/img/profile-img.jpg':('https://osdsbucket.s3.amazonaws.com/osds/'+=mypage.userId += '/' += mypage.profile) }"
													alt="Profile">

												<div class="pt-2">
													<input type="file" id="fileData" name="fileData">
													<button type="button" id="uploadButton"
														class="btn btn-primary btn-sm" onclick="uploadImage()">
														<i class="bi bi-upload"></i>
													</button>
													<button type="button" id="deleteButton"
														class="btn btn-danger btn-sm" onclick="deleteImage()">
														<i class="bi bi-trash"></i>
													</button>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">이름</label>
											<div class="col-md-8 col-lg-9">
												<input name="fullName" type="text" class="form-control"
													id="fullName" value="${mypage.name }" readonly="readonly">
											</div>
										</div>

										<div class="row mb-3">
											<label for="company" class="col-md-4 col-lg-3 col-form-label">아이디</label>
											<div class="col-md-8 col-lg-9">
												<input name="company" type="text" class="form-control"
													id="company" value="${mypage.userId }" readonly="readonly">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Job" class="col-md-4 col-lg-3 col-form-label">전화번호</label>
											<div class="col-md-8 col-lg-9">
												<input name="job" type="text" class="form-control"
													id="Phone" value="${mypage.phone }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Country" class="col-md-4 col-lg-3 col-form-label">성별</label>
											<div class="col-md-8 col-lg-9">
												<input name="country" type="text" class="form-control"
													id="Country" value="${mypage.gender }" readonly="readonly">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">생일</label>
											<div class="col-md-8 col-lg-9">
												<input name="address" type="text" class="form-control"
													id="job" value="${mypage.birthday }" readonly="readonly">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Phone" class="col-md-4 col-lg-3 col-form-label">주소</label>
											<div class="col-md-8 col-lg-9">
												<input name="phone" type="text" class="form-control"
													id="Address" value="${mypage.addr1 }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">가입일</label>
											<div class="col-md-8 col-lg-9">
												<input name="email" type="email" class="form-control"
													id="Email" value="${mypage.regDate }" readonly="readonly">
											</div>
										</div>

										<div class="text-center">
											<button type="button" class="btn btn-primary"
												onclick="updateMyPage()">수정</button>
										</div>
									</form>
									<!-- End Profile Edit Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-settings">

									<!-- Settings Form -->
									<form>

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Email
												Notifications</label>
											<div class="col-md-8 col-lg-9">
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="changesMade" checked> <label
														class="form-check-label" for="changesMade">
														Changes made to your account </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="newProducts" checked> <label
														class="form-check-label" for="newProducts">
														Information on new products and services </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="proOffers"> <label class="form-check-label"
														for="proOffers"> Marketing and promo offers </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="securityNotify" checked disabled> <label
														class="form-check-label" for="securityNotify">
														Security alerts </label>
												</div>
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<!-- End settings Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form>

										<div class="row mb-3">
											<label for="currentPassword"
												class="col-md-4 col-lg-3 col-form-label">Current
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="password" type="password" class="form-control"
													id="currentPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword"
												class="col-md-4 col-lg-3 col-form-label">New
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="newpassword" type="password"
													class="form-control" id="newPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword"
												class="col-md-4 col-lg-3 col-form-label">Re-enter
												New Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="renewpassword" type="password"
													class="form-control" id="renewPassword">
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Change
												Password</button>
										</div>
									</form>
									<!-- End Change Password Form -->

								</div>

							</div>
							<!-- End Bordered Tabs -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%@include file="../include/footer.jsp"%>
	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/chart.js/chart.umd.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/echarts/echarts.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/quill/quill.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/simple-datatables/simple-datatables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/tinymce/tinymce.min.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>

<script>
	function updateMyPage() {
		var phone = document.getElementById("Phone").value;
		var addr1 = document.getElementById("Address").value;

		$.ajax({
			url : '/updateMyPage',
			type : 'POST',
			contentType : 'application/json',
			data : JSON.stringify({
				"phone" : phone,
				"addr1" : addr1
			}),
			success : function(response) {
				alert('수정완료')
				console.log('Data sent successfully!');
				location.href = "/student/MyPage"
			},
			error : function(xhr, status, error) {
				alert('수정실패')
				console.error('Error occurred while sending data:', error);
			}
		});
	};

	function uploadImage() {
		var input = document.getElementById('fileData');
		if (input.files.length == 0) {
			input.click();
			return;
		}

		var file = input.files[0];
		var formData = new FormData();
		formData.append("fileData", file);

		$.ajax({
			url : '/myPage/fileUpload',
			type : 'POST',
			data : formData,
			processData : false,
			contentType : false,
			success : function(data) {
				// If the server returns a string (URL), log it directly.
				if (data) {
					console.log("File uploaded successfully. URL: " + data);
				} else {
					console.error("Error occurred while uploading file");
				}

				// Clear the selected file
				input.value = '';
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.error('Error:', textStatus);

				// Clear the selected file
				input.value = '';
			}
		});
	}

	function deleteImage() {

		$.ajax({
			url : '/myPage/fileDelete',
			type : 'POST',
			success : function(response) {
				var profileImg = document.getElementById("profileImage");
				profileImg.src = "/resources/img/profile-img.jpg";
			},
			error : function(xhr, status, error) {
				var errorMessage = xhr.status + ': ' + xhr.statusText;
				alert('Error - ' + errorMessage);
				// 필요하다면 여기에서 에러가 발생했을 때의 동작을 추가하세요.
			}
		});
	};

	document.getElementById('fileData').addEventListener(
			'change',
			function(event) {
				var file = event.target.files[0];
				var reader = new FileReader();

				reader.onload = function(e) {
					var profileImageElement = document
							.getElementById('profileImage');
					profileImageElement.src = e.target.result;
				};

				reader.readAsDataURL(file);
			});
</script>
</html>