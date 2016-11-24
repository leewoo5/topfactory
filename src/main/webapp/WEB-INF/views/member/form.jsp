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
#register{z-index:998; position: absolute; padding-top:15%;}
.btn-group-justified{margin-top:5%; border-radius:0;}
input{margin-bottom:5%;}
.btn-group a{border-radius:0px;}
a:hover{color: #1abc9c !important;}
.btn-group-justified{margin-top:10px;}
</style>
</head>
<body>
	<%@ include file="../include/navbar.jsp" %>
		<c:if test="${user.uid == null}">
		<div id="register" class="container-fluid">
			<div class="row">
				<div class="col-xs-1 col-sm-5 sidenav"></div>
				<div class="col-xs-10 col-sm-2">
					<div class="space"></div>
					<form action="/member/form" role="form" method="post">
						<label for="id">ID</label>
						<input class="form-control" id="id" name="uid" type="text"/>
						
						<label for="pw">Password</label>
						<input class="form-control" id="pw" name="upw" type="password" />
						
						<label for="nickName">NickName</label>
						<input class="form-control" id="nickName" name="nickName" type="text" />
						
						<label for="email">Email</label>
						<input class="form-control" id="email" name="email" type="email" />
			
						<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<button type="reset" class="btn btn-danger btns">취소</button>
							</div>
							<div class="btn-group">
								<button type="submit" class="btn btn-primary btns">완료</button>
							</div>
						</div>
					</form>
				
				</div>
			<div class="col-xs-1 col-sm-5 sidenav"></div>
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