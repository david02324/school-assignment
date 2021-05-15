<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>동영상 관리 게시판</title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
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
      <span id="title"><strong>글쓰기</strong></span>
      <form id="bbs-input" action="view.jsp" method="post">
        <div class="input-info">
          글제목 : <input type="text" name="name" size="50">
        </div>
        <div class="input-info">
          글쓴이 : <input type="text" name="author">
        </div>
        <div class="input-info">
          글 내용 |
          <input type="button" value="동영상 첨부">
          <br><br>
          <textarea name="disc" rows="20" cols="100" style="resize:none"></textarea>
        </div>
        <div class="input-info">
          비밀번호 : <input type="password" name="pw">
        </div>
        <span style="float:right; margin-right: 20px; margin-top:10px;">
          <input type="submit" value="글쓰기"></input>
          <input type="button" value="취소" onclick="location.href='index.jsp'">
        </span>
      </form>
    </div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
  </body>
</html>
