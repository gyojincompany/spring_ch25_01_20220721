<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Form</title>
</head>
<body>
	<h2>로그인 양식</h2>
	<hr>
	<c:url value="j_spring_security_check" var="loginUrl"/>
	<form action='${loginUrl }' method="post">
		<c:if test="${param.ng != null }">
			<p>
				로그인 실패!<br>
				<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL }">
					에러 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
				</c:if>			
			</p>
		</c:if>
	
		아이디 : <input type="text" name="j_username"><br><br>
		비밀번호 : <input type="password" name="j_password"><br><br>
		<input type="submit" value="로그인">
	
	</form>
</body>
</html>