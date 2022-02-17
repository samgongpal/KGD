<%@page import="java.sql.ResultSet"%>
<%@page import="DB_PKG.DAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");

  int u_no = Integer.parseInt(request.getParameter("u_no"));
  String u_id = request.getParameter("u_id");
  String u_pw = request.getParameter("u_pw");
  String u_mail = request.getParameter("u_mail");
  String u_birth1 = request.getParameter("u_birth1");
  String u_birthStr2 = "";
  int u_birth2 = Integer.parseInt(request.getParameter("u_birth2"));
  if(u_birth2 <= 10) {
	  u_birthStr2 = 0 + "" + u_birth2 + "";
  }
  int u_birth3 = Integer.parseInt(request.getParameter("u_birth3"));
  String u_birthStr3 = "";
  if(u_birth3 <= 10) {
	  u_birthStr3 = 0 + "" + u_birth3 + "";
  }
  String u_birth = u_birth1 + u_birthStr2 + u_birthStr3;
  String u_name = request.getParameter("u_name");
  String u_gender = request.getParameter("u_gender");
  String u_regdate = request.getParameter("u_regdate");
  String u_phone1 = request.getParameter("u_phone1");
  String u_phone2 = request.getParameter("u_phone2");
  String u_phone3 = request.getParameter("u_phone3");
  String u_phone = u_phone1 + u_phone2 + u_phone3;
  
  Connection conn = null;
  PreparedStatement ps = null;
  ResultSet rs = null;
  
  boolean chk = false;
  
  try{
	  conn = DAO.getConnection();
	  String sql = "SELECT * FROM MUSER WHERE u_id=? AND u_mail=?";
	  ps = conn.prepareStatement(sql);
	  ps.setString(1, u_id);
	  ps.setString(2, u_mail);
	  rs = ps.executeQuery();
	  if(rs.next()) {
		  chk = true;
	  }
	  conn.close();
	  ps.close();
	  rs.close();
	  if(chk == true) {
		  %>
		  <script>
		    alert("중복된 아이디 또는 이메일");
		    location.href="userJoin.jsp";
		  </script>
		  <%
	  }else {
		  conn = DAO.getConnection();
		  sql = "INSERT INTO MUSER VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		  ps = conn.prepareStatement(sql);
		  ps.setInt(1, u_no);
		  ps.setString(2, u_id);
		  ps.setString(3, u_pw);
		  ps.setString(4, u_mail);
		  ps.setString(5, u_birth);
		  ps.setString(6, u_name);
		  ps.setString(7, u_gender);
		  ps.setString(8, u_regdate);
		  ps.setString(9, u_phone);
		  
		  ps.executeUpdate();
		  
		  conn.close();
		  ps.close();
		  %>
		    <script>
		      alert("가입을 축하드립니다.");
		      location.href="index.jsp";
		    </script>
		  <%
	  }
  }catch(Exception e) {
	  e.printStackTrace();
  }
%>