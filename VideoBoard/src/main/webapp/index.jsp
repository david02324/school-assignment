<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="DB.VideoRepo,DB.Video,java.util.ArrayList,java.net.URLDecoder"%>
<%
	request.setCharacterEncoding("utf-8");
	
	VideoRepo videoRepo = new VideoRepo();
	ArrayList<Video> videoList = null;
	
	String keyword = request.getParameter("keyword");
	if (keyword == null){
		videoList = videoRepo.getVideoList();
	} else {
		String mode = request.getParameter("mode");
		if (mode.equals("제목")){
			videoList = videoRepo.searchVideoByTitle(keyword);
		} else if (mode.equals("내용")){
			videoList = videoRepo.searchVideoByDesc(keyword);
		}
	}
	
	videoRepo.close();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>Video Board</title>
    <link rel="stylesheet" href="./static/bootstrap.min.css">
    <link rel="stylesheet" href="./static/style.css">
  </head>
<body>
	  <div id="upper-bar">
	  	<a href="index.jsp" id="title">Video Board</a>
	  	<a href="write.jsp"><img src="./static/upload_icon.png" id="button-write" height="43px"/></a>
	  </div>
  <div id="navi-bar">
    <div id="search">
    	<form action="index.jsp" method="GET">
    		<select class="form-control" id="search-mode" name="mode">
			  <option>제목</option>
			  <option>내용</option>
			</select>
    		<input id="search-input" type="text" name="keyword" placeholder="검색어">
        	<input id="search-button" class="btn btn-info" type="submit" value="검색">
    	</form>
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
<script type="text/javascript" src="./static/jquery.js"></script>
<script type="text/javascript" src="./static/bootstrap.min.js"></script>
</html>
