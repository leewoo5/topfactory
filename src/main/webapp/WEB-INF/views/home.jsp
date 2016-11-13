<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="include/page.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="include/header.jsp" %>
<title>Home</title>
<%@ include file="include/topmenucss.jsp" %>
<style>
* {border: 0px solid black;	box-sizing: border-box;}
body {background-color: #004466;}
#wrapper {height: 100%;}
.sidenav {height: 100%;}
#container {padding-left: 0%; padding-right: 0%; margin: 0px;}
#content {
	background-color: white;
	height: auto;
}
a{color: black;}
ul{padding:0px;}
ul li{list-style: none; margin-top:1%; margin-bottom:1%;}
.timeline {background-color: #00334d; padding: 0px; margin-bottom: 5%;}
.review {background-color: white; padding-top: 2%; padding-bottom: 2%;}
.cover{ height:120px; width: 30%; margin: 3%; position: absolute;}
#discri{ height:100px; width: 57%; margin-left: 40%; margin-top: 3%; margin-right: 1%; margin-bottom:10%; line-height: 20px; }
.title {margin-top:5%; font-size: 12px; color: white;}
.author, .publisher, .price {color: white; font-size: 11px;}
.info {padding: 0px; margin-top: 1%; margin-left: 3%; font-size: 10px;}
.time {	padding: 0px; margin-bottom: 2%; margin-left: 3%; font-size: 5px;}
textarea {padding: 5px;	resize: none;}
.btn {font-size: 10px; color: white; padding: 5px; margin: 0px;}
p {margin: 0px;}
.btns{background-color: #00334d; border: none; }
.btn.focus, .btn:focus, .btn:hover {color: #0cf2ff; text-decoration: none;}
#nickName{color: #0cf2ff; }
.signs{margin-bottom: 5%;}
.sign{padding-top: 5%; padding-bottom: 5%;}
footer .signs{margin-bottom: 1%;}
#copyright{color: white; font-weight: bold; font-size: 11px; background-color: #00334d; padding-top: 4%; padding-bottom: 4%; }
footer .timeline{padding-bottom: 5%;}
</style>

</head>
<body>
	<div id="wrapper">
		<!-- 탑메뉴 -->
		<%@ include file ="include/topmenu.jsp" %>
		<!-- 컨텐츠 start -->
		<div class="container-fluid">
			<div class="row">
				<div class="sidenav col-xs-1 col-sm-4"></div>
				<div id="container" class="col-xs-10 col-md-4">
					<!-- 로그인 메뉴 -->
					<div class="signs btn-group btn-group-justified">
						<div class="btn-group">
							<c:if test="${User.uid == null}">
								<a class="sign btn btn-primary btns" href="/user/login">로그인</a>
							</c:if>
							<c:if test="${User.uid != null}">
								<c<a class="sign btn btns"><span id="nickName">${User.nickName}</span></a>
							</c:if>
						</div>
						<div class="btn-group">
							<c:if test="${User.uid == null}">
								<a class="sign btn btn-danger btns" href="/member/form">회원가입</a>
							</c:if>
							<c:if test="${User.uid != null}">
								<a class="sign btn btns" href="#">나의 정보</a>
							</c:if>	
						</div>
					</div>
					<!-- 본문 -->
					<div id="content" class="container-fluid">
						<h4 class="text-center">메뉴를 선택하세요</h2>
						<ul class="text-center">
							<li><a href="/member/info">회원정보</a></li>
							<li><a href="">재무정보</a></li>
							<li><a href="">행사정보</a></li>
							<li><a href="">멘토멘티</a></li>
							<li><a href="">단체문자 발송</a></li>
						</ul>
					</div>
					<!-- footer -->
					<footer>
						<div class="signs btn-group btn-group-justified">
							<p id="copyright" class="btn-group-justified text-center">
								Copyright. T.O.P factory all rights reserved.
							</p>
						</div>
					</footer>
				</div>
			</div>			
			<div class="sidenav col-xs-1 col-md-4"></div>
			</div>
		</div>
	<!-- wrapper end -->
	</div>	
</body>
</html>
