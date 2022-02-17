<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  Object obj1 = session.getAttribute("u_no");
  int num = (int)obj1; //obj,u_no가 중복되어 obj1,num으로 변경
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userModify</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="topmenu.jsp" %>
  <section>
    <h3>회원정보 수정</h3>
    <table>
      <tr><td>이름 :</td><td><%= %></td>
      </tr>
      <tr><td>메일 :</td><td><%= %></td>
      </tr>
      <tr><td>전화번호 :</td><td><%= %></td>
      </tr>
    </table>
  </section>
</body>
</html>