<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE> 
<html>
<head>
<!-- Jquery -->
<script src="../resources/jquery/jquery_3.1.1.js"></script>
<!-- Bootstrap 3.3.4 -->
<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome Icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<title>home</title>
<%@ include file="include/commoncss.jsp" %>
<style type="text/css">
*{border:0px solid black;box-sizing:border-box;}
.carousel-inner img{
	width:100%;
	margin:auto;
	min-height:200px;
	max-height:900px;
}
#myCarousel{z-index: 0; margin:0px; padding:0px;}
.border-black{border:1px solid black;}
.section-bg{background-color: #b3daff;}
.section-p{height:400px;border:1px solid black;}
.margin-bottom-5{margin-bottom:5%;}
#notice-logo{
	color:#944dff; font-size: 30px; border-top:5px solid #944dff;
	font-weight: bold; height:auto;
}
#notice-board{border-top:5px solid #944dff; font-weight:bold; height:auto;}
</style>
</head>
<body>
<%@ include file="include/navbar.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicator -->
	<ol class="carousel-indicator">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
	</ol>
	<!-- wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img alt="즐거운 대학생활" src="../resources/img/student.jpg">
		</div>
		<div class="item">
			<img alt="도전의 시작" src="../resources/img/mountain.jpg">
		</div>
	</div>
	<!-- left and right controls -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
	<!-- contents -->
	<div class="container-fluid text-center">
		<div class="row content">
			<div class="sidenav col-sm-2"></div>
			<div class="col-sm-8 text-left">
				<div class="row text-center">
					<section class="container-fluid">
						<div id="notice-logo" class="col-sm-4">공지사항</div>
						<div id="notice-board" class="col-sm-8">...</div>
					</section>
					<section class="container-fluid">
						<h1 class="margin-bottom-5">What We Do</h1>
						<div class="row">
							<div class="col-sm-4">
								<h4>Training</h4>
								<p class="section-p">...</p>
							</div>
							<div class="col-sm-4">
								<h4>Organization</h4>
								<p class="section-p">...</p>
							</div>
							<div class="col-sm-4">
								<h4>Professional</h4>
								<p class="section-p">...</p>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="sidenav col-sm-2"></div>
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>




























