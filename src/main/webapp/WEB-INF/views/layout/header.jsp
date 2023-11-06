<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<c:set var="URL" value="${pageContext.request.requestURL}" />

<header class="header">
	<img src="${root}image/jonggak_un_full_logo_green.png" />
	<div>
		<a href="/main">홈페이지</a>
		<c:if test="${sessionScope.student eq null}">
			<a href="${root}/login">로그인</a>
		</c:if>
		<c:if test="${sessionScope.student ne null}">
			<form action="${root}/logout" method="post">
				<input type="submit" value="로그아웃" />
			</form>
		</c:if>
	</div>
</header>
