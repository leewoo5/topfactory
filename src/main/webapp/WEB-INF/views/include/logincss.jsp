<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<style>
body {
      font: 20px;
      line-height: 1.8;
}
p {font-size: 16px;}
/* 상단 네비게이션 위치조절 */
nav .container-fluid {
    padding-top:30px; 
}
/* 컨테이너 위아래 여백조절 */
.container-fluid {
    padding-top: 70px; 
    padding-bottom: 70px; 
}
.navbar {
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 15px;
    letter-spacing: 5px;
}
nav a{color: white;}
#toolbar{z-index:999; position: absolute; padding:0px; height: 0px;}
.navbar-nav li a:hover {
      color: #1abc9c !important;
 }
.navbar-header a:hover{color: #1abc9c !important;}
.bg-footer {
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
}
 /* Set gray background color and 100% height */
.sidenav {
  height: 100%;
  z-index: 0;
}
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {height: 450px}
a{color: black;}
li {list-style: none;}
.form-control{border: none;}
</style>
