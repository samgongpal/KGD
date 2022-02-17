<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
   Object obj = session.getAttribute("u_no");
   int u_no = (int)obj;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<div class="header">
  <h1>My Website</h1>
  <p>Resize the browser window to see the effect.</p>
</div>
 
<div class="topnav">
  <a href="#">영화</a>
  <a href="#">극장</a>
  <a href="#">빠른예매</a>
  <a href="#">고객센터</a>
  <%if(u_no == -1) {%>
  <a href="JoinUser.jsp">회원가입</a>
  <a href="Login.jsp">로그인</a>
  <%}else {%>
  <a href="#">마이페이지</a>
  <a href="Logout.jsp">로그아웃</a>
  <%} %>
  <a href="#" style="float:right">Link</a>
</div>
 
<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, 
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
        Ut enim ad minim veniam, quis nostrud exercitation ullamco.
      </p>
    </div>
    <div class="card">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, 
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
        Ut enim ad minim veniam, quis nostrud exercitation ullamco.
      </p>
    </div>
  </div>
</body>
</html>