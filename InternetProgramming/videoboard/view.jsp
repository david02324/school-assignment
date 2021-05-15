<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="post.Post"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String disc = request.getParameter("disc");
	
	Post newPost = new Post(name,author,disc);
%>
<!DOCTYPE html>
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
      <span id="title"><strong>�� ��ȸ</strong></span>
      <div class="post-view">
        <div class="post-info-bar">
          <span class="post-name"><strong><%=newPost.getName()%></strong></span> | <span class="post-info"><%=newPost.getAuthor()%> | 00-00-00</span>
        </div>
        <div class="post-view-body">
          <div class="thumbnail"><span style="margin: 50px">������</span></div>
          <div class="post-content">
            <%=newPost.getDisc()%>
          </div>
        </div>
        <div class="post-view-control">
          ��й�ȣ : <input type="password">
          <a href="update.jsp">����</a> | <a href="delete.jsp">����</a>
        </div>
      </div>
    </div>
  </div>
  <div id="under-bar">���ͳ� ���α׷��� ������ ���� �Խ���</div>
  </body>
</html>