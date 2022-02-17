<%@page import="DB_PKG.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userPage</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="topmenu.jsp" %>
  <div>회원정보</div>
  <a href="userModify.jsp">정보수정</a>
  <a href="#">예매현황</a>
  <a href="#">회원탈퇴</a>
</body>
</html>