<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>������ ���� �Խ���</title>
    <link rel="stylesheet" href="./static/style.css">
  </head>
  <body>
  <div id="upper-bar"></div>
  <div id="navi-bar">
    <a href="index.jsp">Ȩ</a>
  </div>
  <div id="content">
      <span id="title"><strong>�۾���</strong></span>
      <form id="bbs-input" action="view.jsp" method="post">
        <div class="input-info">
          ������ : <input type="text" name="name" size="50">
        </div>
        <div class="input-info">
          �۾��� : <input type="text" name="author">
        </div>
        <div class="input-info">
          �� ���� |
          <input type="button" value="������ ÷��">
          <br><br>
          <textarea name="disc" rows="20" cols="100" style="resize:none"></textarea>
        </div>
        <div class="input-info">
          ��й�ȣ : <input type="password" name="pw">
        </div>
        <span style="float:right; margin-right: 20px; margin-top:10px;">
          <input type="submit" value="�۾���"></input>
          <input type="button" value="���" onclick="location.href='index.jsp'">
        </span>
      </form>
  </div>
  <div id="under-bar">���ͳ� ���α׷��� ������ ���� �Խ���</div>
  </body>
</html>
