<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록한 회원조회</title>
</head>
<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>등록한 회원조회</h1>


<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1">
<tr><th>Id</th><th>Name</th><th>Email</th><th>UserID</th><th>Password</th><th>Sex</th><th>BIRTH</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getUserid()}</td><td>${u.getPassword()}</td><td>${u.getSex()}</td><td>${u.getBirth()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addform.jsp">회원가입하러가기</a>
</body>
</html>