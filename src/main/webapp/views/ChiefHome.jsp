<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-image: url('Cook2.avif');
	background-size: cover;
	background-position: center;
}

.navbar {
	background-color: rgba(0, 0, 0, 0.7);
}

.navbar-brand, .nav-link {
	color: white !important;
}

.nav-link:hover {
	color: lightgray !important;
}
</style>
</head>
<body>

	<!-- Navbar  start-->
	<nav class="navbar navbar-expand-lg">
		<div class="fluid-container">
			<a class="navbar-brand" href="ChiefHome">ChiefRent</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="ChiefHome">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="About">About</a></li>
					<li class="nav-item"><a class="nav-link" href="Contact">Contact</a>
					</li>
					<li class="nav-item">
					<a class="btn btn-outline-danger"  style="position: absolute; right: 5px;  href="Logout">LogOut</a>
					</li>
					<li class="nav-item">
					<a class="btn btn-outline-success"  style="position: absolute; right: 100px ;  href="Cprofile">Create Profile</a>
					</li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar  start-->










	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



</body>
</html>


