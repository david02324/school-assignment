<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>동영상 관리 게시판</title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
  <% 
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String disc = request.getParameter("disc");
  %>
  <div id="upper-bar"></div>
  <div id="navi-bar">
    <a href="index.jsp">홈</a> | 전체글보기(혹은 현재 게시판 이름)
    <form id="login" action="..." accept-charset="utf-8" method="post">
      ID : <input type="text" name="id">
      PW : <input type="password" name="pw">
      <input type="submit" value="인증">
    </form>
  </div>
  <div id="content">
    <div id="content-left">
      <div class="board-list"><a href="index.jsp"><strong>#전체 게시글 보기</strong></a></div>
      <div class="board-list"><a href="board1.jsp">#게시판1</a></div>
      <div class="board-list"><a href="board2.jsp">#게시판2</a></div>
      <div class="board-list"><a href="board3.jsp">#게시판3</a></div>
    </div>
    <div id="content-right">
      <span id="title"><strong>글 조회</strong></span>
      <div class="post-view">
        <div class="post-info-bar">
          <span class="post-name"><strong><%=name%></strong></span> | <span class="post-info"><%=author%> | 00-00-00</span>
        </div>
        <div class="post-view-body">
          <div class="thumbnail"><span style="margin: 50px">동영상</span></div>
          <div class="post-content">
            <%=disc%>
          </div>
        </div>
        <div class="post-view-control">
          비밀번호 : <input type="password">
          <a href="update.jsp">수정</a> | <a href="delete.jsp">삭제</a>
        </div>
      </div>
    </div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
  </body>
</html>