<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/page.jsp" %>
<html>
<head>
<title>register.jsp</title>
<%@ include file="../include/header.jsp" %>
<style type="text/css">
* {border: 0px solid white;}
body {background-color: #004466;}
.space {visibility: hidden; height: 10%;}
.sidenav {height: 100%;}
label, h4 {color: white; font-weight: bold;}
form {margin-top: 10%;}
form label, input {	display: block;}
input {margin-bottom: 10px;}
.btns {border: 1px solid white;}
#backtohome {color: white; font-size: 15px;	background-color: #004466; border: none;}
[class*="col-"] {padding: 0px;}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-1 col-sm-5 sidenav"></div>
			<div class="col-xs-10 col-sm-2">
				<div class="space"></div>
				<h4 class="text-center">동아리 회원정보 등록</h4>
				<form action="/member/top_register" role="form" method="post">
					<label for="name">이름</label>
					<input class="form-control" id="name" name="name" type="text" required="required" />
					
					<label for="age">생년월일</label>
					<input class="form-control" id="age" name="age" type="text" placeholder="예:19870910" required="required" />
					
					<label for="studentNum">학번</label>
					<input class="form-control" id="studentNum" name="studentNum" required="required" type="text" />
					
					<label for="department">학과</label>
					<input class="form-control" id="department" name="department" required="required" type="text" />
					
					<label for="stage">동아리 기수</label>
					<input class="form-control" id="stage" name="stage" type="text" placeholder="예:만약 1기라면 01" required="required" />
					
					<label for="position">동아리 직책</label>
					<input class="form-control" id="position" name="position" type="text" required="required" />
					
					<label for="prize">수상실적</label>
					<input class="form-control" id="prize" name="prize" type="text" value=""/>
					
					<label for="address">주소</label>
					<input class="form-control" id="address" name="address" type="text" required="required" />
					
					<label for="email">Email</label>
					<input class="form-control" id="email" name="email" type="email" required="required" />
					
					<label for="phone">연락처</label>
					<input class="form-control" id="phone" name="phone" type="text" required="required" />
					
					<label for="job">근무지</label>
					<input class="form-control" id="job" name="job" type="text" />
					
					<div class="btn-group btn-group-justified">
						<div class="btn-group">
							<button type="reset" class="btn btn-danger btns">취소</button>
						</div>
						<div class="btn-group">
							<button type="submit" class="btn btn-primary btns">완료</button>
						</div>
					</div>
				</form>
				
				<a id="backtohome" class="form-control text-center" href="/">홈으로 돌아가기</a>
			
			</div>
		<div class="col-xs-1 col-sm-5 sidenav"></div>
		</div>
	</div>
</body>
</html>