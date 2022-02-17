<%@page import="DB_PKG.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  
  Object Ma1 = session.getAttribute("u_no");
  int ma1 = (int)Ma1;
  Connection conn = null;
  PreparedStatement ps = null;
  ResultSet rs = null;
  
  String u_pw1 = request.getParameter("u_pw");

  try{
	  conn = DAO.getConnection();
	  String sql = "SELECT u_pw FROM MUSER WHERE u_no=?";
	  ps = conn.prepareStatement(sql);
	  ps.setInt(1, ma1);
	  rs = ps.executeQuery();
	  if(rs.next()) {
		  String u_pw2 = rs.getString("u_pw");
		  if(u_pw2.equals(u_pw1)) {
			  %>
			  <script>
			    location.href="userModify.jsp";
			  </script>
			  <%
		  }else {
			  %>
			  <script>
			    alert("비밀번호를 다시 확인하여주세요.")
			    location.href="userModifyChk.jsp";
			  </script>
			  <%
		  }
	  }
  }catch(Exception e) {
	  e.printStackTrace();
  }
%>