<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/page.jsp" %>
<html>
<head>
<title>register.jsp</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/topmenucss.jsp" %>
<style type="text/css">
* {border: 0px solid white;}
body {background-color: #004466;}
.space {visibility: hidden; height: 5%;}
.sidenav {height: 100%;}
label, h4 {color: white; font-weight: bold;}
#backtohome {color: white; font-size: 15px;	background-color: #004466; border: none;}
[class*="col-"] {padding: 0px;}
table {margin-top: 10%;}
td, th{
	text-align: center; color: white; font-size: 5px; padding: 0px;
}
h4 {margin-bottom:5%;}
</style>
</head>
<body>
	<!-- 탑메뉴 -->
	<%@ include file ="../include/topmenu.jsp" %>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-1 col-md-4 sidenav"></div>
			<div class="col-xs-10 col-md-4">
				<div class="space"></div>
				<h4 class="text-center">동아리 회원정보 조회</h4>
					<div class='box-body text-center'>
					<select name="searchType">
						<option value="name"
							<c:out value="${cri.searchType eq 'name'?'selected':''}"/>>
							이름
						</option>
						<option value="studentNum"
							<c:out value="${cri.searchType eq 'studentNum'?'selected':''}"/>>
							학번
						</option>
						<option value="stage"
							<c:out value="${cri.searchType eq 'stage'?'selected':''}"/>>
							기수
						</option>
					</select> <input type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
					<button id='searchBtn'>검색</button>
				</div>
					<table class="table table-bordered">
						<tr>
							<th>이름</th>
							<th>성별</th>
							<th>학과</th>
							<th>기수</th>
							<th>연락처</th>
						</tr>
						<c:forEach items="${list}" var="list">
						<tr>
							<td>${list.name}</td>
							<td>${list.gender}</td>
							<td>${list.department}</td>
							<td>${list.stage}</td>
							<td>${list.phone}</td>
						</tr>
						</c:forEach>
					</table>
				
				<a id="backtohome" class="form-control text-center" href="/">홈으로 돌아가기</a>
			
			</div>
		<div class="col-xs-1 col-md-4 sidenav"></div>
		</div>
	</div>
</body>
<script>
// $(document).ready(
// 	function() {
// 		$('#searchBtn').on("click",	function(event) {
// 							self.location = "top_list"
// 							+ '${pageMaker.makeQuery(1)}'
// 							+ "&searchType=" + $("select option:selected").val()
// 							+ "&keyword=" + $('#keywordInput').val();
// 		});
// 	});
</script>
</html>