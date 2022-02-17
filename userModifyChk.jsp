<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userModifychk</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="topmenu.jsp" %>
<section>
  <h3>비밀번호 확인</h3>
  <form action="userModifyChkAction.jsp" method="post">
  <table>
    <tr>
      <td>비밀번호 : </td><td><input type="password" name="u_pw" maxlength="10"></td>
    </tr>
  </table>
  </form>
</section>
</body>
</html>