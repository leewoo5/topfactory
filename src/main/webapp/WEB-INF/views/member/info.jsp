<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/page.jsp" %>
<html>
<head>
<title>form.jsp</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/topmenucss.jsp" %>
<style type="text/css">
* {border: 0px solid white;}
body {background-color: #004466;}
.space {visibility: hidden; height: 10%;}
.sidenav {height: 100%;}
nav {background-color: #00334d;	position: absolute;}
nav a {font-size: 20px;	color: white;}
.nav-justified>li>a{margin: 0px;}
#backtohome {color: white; font-size: 15px;	background-color: #004466; border: none;}
#container {padding-left: 0%; padding-right: 0%; margin: 0px;}
#content {
	background-color: white;
	height: auto;
}
a{color: black;}
ul{padding:0px;}
ul li{list-style: none; margin-top:1%; margin-bottom:1%;}
[class*="col-"] {padding: 0px;}
</style>
</head>
<body>
		<!-- 탑메뉴 -->
		<%@ include file ="../include/topmenu.jsp" %>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-1 col-sm-5 sidenav"></div>
				<div class="col-xs-10 col-sm-2">
					<div class="space"></div>
						<div id="content" class="container-fluid">
						<h4 class="text-center">회원정보 관리</h4>
						<ul class="text-center">
							<li><a href="/member/top_listAll">회원명단 조회</a></li>
							<li><a href="/member/top_register">회원등록</a></li>
							<li><a href="/member/top_update">회원정보 수정</a></li>
							<li><a href="/member/top_delete">회원정보 삭제</a></li>
							<li><a href="/member/top_document">활동 증명서 양식 받기</a></li>
						</ul>
					</div>
					<a id="backtohome" class="form-control text-center" href="/">홈으로 돌아가기</a>
				</div>
			<div class="col-xs-1 col-sm-5 sidenav"></div>
			</div>
		</div>
	
</body>
</html>