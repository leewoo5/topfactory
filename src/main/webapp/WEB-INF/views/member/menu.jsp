<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>menu.jsp</title>
<%@ include file="../include/commoncss.jsp" %>
<style type="text/css">
* {border: 0px solid black;	box-sizing: border-box;}
h3 {margin-bottom: 5%;}
#backtohome{margin-top:5%;}
li {margin-bottom: 5%;}
.menulogo{width: 100%; height: 400;}
li a:hover {
      color: #1abc9c !important;
      text-decoration: none;
}
</style>
</head>
<body>
<%@ include file="../include/navbar.jsp" %>
<c:if test="${user.uid == null }">
	<script type="text/javascript">
		alert("로그인이 필요합니다");
		location.href = "/user/login";
	</script>
</c:if>
<img class="menulogo" alt="메뉴 로고" src="../resources/img/conference.jpg">
<div class="container-fluid">
	<div class="row content">
		<div class="col-sm-2 sidenav"></div>
		<div class="col-sm-2 sidenav">
			<h3>Member</h3>
			<ul class="form-control">
				<li><a href="/member/top_listAll">회원명단 관리</a></li>
				<li><a href="#">재무정보 관리</a></li>
				<li><a href="#">업무 관리</a></li>
				<li><a href="#">단체문자 전송</a></li>
			</ul>
		</div>
	</div>
</div>
	<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>