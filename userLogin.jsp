<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
  <script type="text/javascript" src="check.js">
  </script>
</head>
<link rel="stylesheet" href="css/style.css">
<body>
<%@include file="topmenu.jsp"%>
  <section>
    <form name='check_Login' onsubmit="return checkAll()" action="userLoginAction.jsp"  method="post">
    <table>
      <tr><td>아이디 : </td><td><input type="text" name="u_id" maxlength="10"></td>
      </tr>
      
      <tr><td>비밀번호 : </td><td><input type="password" name="u_pw" maxlength="10"></td>
      </tr>
      
      <tr>
        <td colspan="2">
          <input type="submit" value="로그인">
          <input type="button" value="회원가입" onclick="window.location.href='userJoin.jsp'">
        </td>
      </tr>
    </table>
    </form>
  </section>
</body>
</html>