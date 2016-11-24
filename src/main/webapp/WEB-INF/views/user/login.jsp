<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
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
<title>login.jsp</title>
<%@ include file="../include/commoncss.jsp" %>
<style type="text/css">
* {border: 0px solid white;}
[class*="col-"] {padding: 0px;}
#login{z-index:998; position: absolute; padding-top:15%;}
.btn-group-justified{margin-top:5%; border-radius:0;}
input{margin-bottom:5%;}
.btn-group a{border-radius:0px;}
a:hover{color: #1abc9c !important;}
</style>
</head>
<body>
	<%@ include file="../include/navbar.jsp" %>
		<c:if test="${user.uid == null}">
		<div id="login">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-1 col-sm-5 sidenav"></div>
					<div class="col-xs-10 col-sm-2">

						<form action="/user/login" role="form" method="post">
							<label for="id">ID</label> <input class="form-control" id="id"
								name="uid" type="text" />
							<c:if test="${not empty errorId}">
								<p>${errorId}</p>
							</c:if>

							<label for="pw">Password</label> <input class="form-control"
								id="pw" name="upw" type="password" />
							<c:if test="${not empty errorPw}">
								<p>${errorPw}</p>
							</c:if>

							<div class="btn-group btn-group-justified">
								<div class="btn-group">
									<button type="submit" class="btn btn-primary btns">로그인</button>
								</div>
							</div>

							<c:if test="${not empty result}">
								<script type="text/javascript">
									var result = '${result}';
									alert(result);
									location.href = "/";
								</script>
							</c:if>
						</form>

						<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<a id="backtohome" class="form-control text-center" href="#">계정찾기</a>
							</div>
							<div class="btn-group">
								<a id="register" class="form-control text-center"
									href="/member/form">회원가입</a>
							</div>
						</div>
					</div>
					<div class="col-xs-1 col-sm-5 sidenav"></div>
				</div>
			</div>
		</div>
		</c:if>
	<img class="menulogo" alt="메뉴 로고" src="../resources/img/conference.jpg">
	<%@ include file="../include/footer.jsp" %>
	
	<c:if test="${user.uid != null }">
	<script type="text/javascript">
		location.href = "/";
	</script>
	</c:if>
</body>
</html>