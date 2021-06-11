<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>동영상 관리 게시판</title>
    <link rel="stylesheet" href="./static/style.css">
  </head>
  <body>
  <div id="upper-bar"></div>
  <div id="navi-bar">
    <a href="index.jsp">홈</a>
  </div>
  <div id="content">
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
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
  </body>
</html>
