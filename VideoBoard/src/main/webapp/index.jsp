<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="DB.VideoRepo,DB.Video,java.util.ArrayList"%>
<%
	request.setCharacterEncoding("utf-8");
	
	VideoRepo videoRepo = new VideoRepo();
	ArrayList<Video> videoList = videoRepo.getVideoList();
	
	videoRepo.close();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>Video Board</title>
    <link rel="stylesheet" href="./static/style.css">
  </head>
<body>
	  <div id="upper-bar">
	  	<a href="index.jsp" id="title">Video Board</a>
	  	<a href="write.jsp" id="button-write">업로드</a>
	  </div>
  <div id="navi-bar">
    <div id="search">
        <input type="text" placeholder="검색어">
        <input type="button" value="검색">
    </div>
  </div>
  <div id="content">
  	<% for (Video video : videoList) { %>
      <div class="post" style="cursor: pointer;" onclick="location.href='view.jsp?id=<%=video.getId()%>'">
      	<div class="post-thumbnail">
      		<img src="<%="./upload/" + video.getThumbnail()%>" width="360" height="202">
      	</div>
      	<div class="post-info">
      		<span id="post-info-title"><%=video.getTitle()%></span>
      		<br>
      		<span id="post-info-author"><%=video.getAuthor()%></span>
      		<span id="post-info-date" style="float:right"><%=video.getDate()%></span>
      	</div>
      </div>
     <% } %>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
</body>
</html>
