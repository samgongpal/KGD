<%@page import="DB_PKG.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  Object obj1 = session.getAttribute("u_no");
  int num = (int)obj1; //obj,u_no가 중복되어 obj1,num으로 변경
  
  Connection conn = null;
  PreparedStatement ps = null;
  ResultSet rs = null;
  
  String u_name = "";
  String u_pw = "";
  String u_mail = "";
  String u_phone = "";
  
  try{
	  conn = DAO.getConnection();
	  String sql = "SELECT u_name, u_pw, u_mail, u_phone FROM MUSER WHERE u_no=?";
	  ps = conn.prepareStatement(sql);
	  ps.setInt(1, num);
	  rs = ps.executeQuery();
	  if(rs.next()) {
		  u_name = rs.getString("u_name");
		  u_pw = rs.getString("u_pw");
		  u_mail = rs.getString("u_mail");
		  u_phone = rs.getString("u_phone");
	  }
  }catch(Exception e) {}
  
  String u_phone1 = "010";
  String u_phone2 = u_phone.substring(3, 7);
  System.out.println("1_1) " + u_phone2);
  String u_phone3 = u_phone.substring(7);
  System.out.println("1_2) " + u_phone3);
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
    <form action="userModifyPro.jsp" method="post">
    <h3>회원정보 수정</h3>
    <table>
      <tr><td>이름 :</td><td><%= u_name%></td>
      </tr>
      <tr><td>비밀번호 :</td><td><input type="password" name="u_pw" value="<%= u_pw%>"></td>
      </tr>
      <tr><td>메일 :</td><td><input type="email" name="u_mail" value="<%= u_mail%>"></td>
      </tr>
      <tr><td>전화번호 :</td><td><input type="text" name="u_phone1" value="<%= u_phone1%>" readonly="readonly">
                               <input type="text" name="u_phone2" value="<%= u_phone2%>" maxlength="4">
                               <input type="text" name="u_phone3" value="<%= u_phone3%>" maxlength="4"></td>
      </tr>
      <tr><td><input type="submit" value="수정">
              <input type="button" value="취소" onclick="window.location.href='index.jsp'"></td>
      </tr>
    </table>
    </form>
  </section>
</body>
</html>