<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>������ ���� �Խ���</title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
  <div id="upper-bar"></div>
  <div id="navi-bar">
    <a href="index.jsp">Ȩ</a> | ��ü�ۺ���(Ȥ�� ���� �Խ��� �̸�)
    <form id="login" action="..." accept-charset="utf-8" method="post">
      ID : <input type="text" name="id">
      PW : <input type="password" name="pw">
      <input type="submit" value="����">
    </form>
  </div>
  <div id="content">
    <div id="content-left">
      <div class="board-list"><a href="index.jsp"><strong>#��ü �Խñ� ����</strong></a></div>
      <div class="board-list"><a href="board1.jsp">#�Խ���1</a></div>
      <div class="board-list"><a href="board2.jsp">#�Խ���2</a></div>
      <div class="board-list"><a href="board3.jsp">#�Խ���3</a></div>
    </div>
    <div id="content-right">
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
  </div>
  <div id="under-bar">���ͳ� ���α׷��� ������ ���� �Խ���</div>
  </body>
</html>
