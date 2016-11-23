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
.col-sm-10 input{border: 1px solid black; margin-bottom:10px;}
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
			<div class="col-sm-6">
				<div class="container-fluid no-padding">
					<div class="row">
						<div class="col-sm-1 sidenav"></div>
						<div class="col-sm-10">
							<h4 class="text-center">회원정보 관리</h4>
							<form:form action="/member/top_update" method="put">
								<label for="name">이름</label>
								<input class="form-control" id="name" name="name" type="text"
									required="required" value="${detail.name}" />

								<label for="gender">성별</label>
								<input class="form-control" id="gender" name="gender"
									type="text" required="required" value="${detail.gender}" />

								<label for="age">생년월일</label>
								<input class="form-control" id="age" name="age" type="text"
									placeholder="예:19870910" required="required"
									value="${detail.age}" />

								<label for="studentNum">학번</label>
								<input class="form-control" id="studentNum" name="studentNum"
									required="required" type="text" value="${detail.studentNum}" />

								<label for="department">학과</label>
								<input class="form-control" id="department" name="department"
									required="required" type="text" value="${detail.department}" />

								<label for="stage">동아리 기수</label>
								<input class="form-control" id="stage" name="stage" type="text"
									placeholder="예:01" required="required" value="${detail.stage}" />

								<label for="position">동아리 직책</label>
								<input class="form-control" id="position" name="position"
									type="text" required="required" value="${detail.position}" />

								<label for="prize">수상실적</label>
								<input class="form-control" id="prize" name="prize" type="text"
									value="${detail.prize}"/>

								<label for="address">주소</label>
								<input class="form-control" id="address" name="address"
									type="text" required="required" value="${detail.address}" />

								<label for="email">Email</label>
								<input class="form-control" id="email" name="email" type="email"
									required="required" value="${detail.email}" />

								<label for="phone">연락처</label>
								<input class="form-control" id="phone" name="phone" type="text"
									required="required" value="${detail.phone}" />

								<label for="job">근무지</label>
								<input class="form-control" id="job" name="job" type="text"
									value="${detail.job}" />

								<div class="btn-group btn-group-justified">
									<div class="btn-group">
										<button type="reset" class="btn btn-danger btns">다시작성</button>
									</div>
									<div class="btn-group">
										<button type="submit" class="btn btn-primary btns">정보수정</button>
									</div>
									<div class="btn-group">
										<a href="/member/top_delete?studentNum=${detail.studentNum}" class="btn btn-danger btns">회원삭제</a>
									</div>
								</div>
							</form:form>
							<script>
							var msg = ${msg};
								if (msg == "success_remove") {
									alert("성공적으로 삭제 되었습니다.");
									location.href = "/member/top_listAll";
								}
								if (msg == "success_update") {
									alert("성공적으로 수정 되었습니다.");
									location.href = "/member/top_listAll";
								}
							</script>
						</div>
					</div>
				</div>		
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
	</div>
	<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
