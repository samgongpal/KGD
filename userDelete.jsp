<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userDelete</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@ include file="topmenu.jsp" %>
  <section>
    <form action="userDeletePro.jsp" method="post">
    <h2>회원 탈퇴</h2>
    <table>
      <tr>
      <td><input type="text" name="u_id" maxlength="10" placeholder="아이디" required></td>
      </tr>
      
      <tr>
      <td><input type="password" name="u_pw" maxlength="10" placeholder="비밀번호" required></td>
      </tr>
      
      <tr>
      <td colspan="2"><input type="submit" value="탈퇴">
                      <input type="button" value="취소" onclick="window.location.href='userPage.jsp'"><td>
      </tr>
    </table>
    </form>
  </section>
<%@include file="footer.jsp" %>
</body>
</html>