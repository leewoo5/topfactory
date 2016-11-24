<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- toolbar -->
<nav class="form-control" id="toolbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">T.O.P factory</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/aboutus/intro">About Us</a></li>
				<li><a href="#">Activities</a></li>
				<li><a href="#">Recruiting</a></li>
				<li><a href="/member/menu">Member</a></li>
				<li><a href="#">Database</a></li>
				<li><a href="#">Q&A</a></li>
				<c:if test="${empty sessionScope.user}">
					<li><a href="/user/login"><i class="fa fa-sign-in fa-1x"></i></a></li>
					<li><a href="/member/form"><i class="fa fa-user-plus fa-1x"></i></a></li>
				</c:if>
				<c:if test="${not empty sessionScope.user}">
					<li><a href="/user/logout"><i class="fa fa-sign-out fa-1x"></i></a></li>
				</c:if>
				<li><a href="#"><i class="fa fa-facebook fa-1x"></i></a></li>
			</ul>
		</div>
	</div>
</nav>

