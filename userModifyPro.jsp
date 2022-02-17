<%@page import="DB_PKG.DAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");

  Object obj2 = session.getAttribute("u_no");
  int num2 = (int)obj2;
  
  String u_pw = request.getParameter("u_pw");
  String u_mail = request.getParameter("u_mail");
  String u_phone1 = request.getParameter("u_phone1");
  String u_phone2 = request.getParameter("u_phone2");
  String u_phone3 = request.getParameter("u_phone3");
  String u_phone = u_phone1 + u_phone2 + u_phone3;
  Connection conn = null;
  PreparedStatement ps = null;
  
  try {
	  conn = DAO.getConnection();
	  String sql = "UPDATE MUSER SET u_pw=?, u_mail=?, u_phone=? WHERE u_no=?";
	  ps = conn.prepareStatement(sql);
	  ps.setString(1, u_pw);
	  ps.setString(2, u_mail);
	  ps.setString(3, u_phone);
	  ps.setInt(4, num2);
	  
	  ps.executeUpdate();
	  
	  conn.close();
	  ps.close();
  }catch(Exception e) {}
%>
<script>
  alert("수정이 완료되었습니다.");
  location.href = "index.jsp";
</script>