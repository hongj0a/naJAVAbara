<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1' cellpadding='7' cellspacing='2' width='90%'>
			<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>날짜</th>
			</tr>
			<c:if test="${empty list}">
			    <tr>
			       <td align="center" colspan="5">데이터 없음</td>
			    </tr>
			</c:if>
			<c:forEach items="${list}" var="member">
				<tr>
				<td align='center'>${member.m_id}</td>
				<td>${member.m_name}</td>
				<td>${member.m_nickname}</td>
				<td>${member.m_birth}</td>
			</tr>
			</c:forEach>
			
			</table>
</body>
</html>