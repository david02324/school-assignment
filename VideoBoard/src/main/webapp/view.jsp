<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="DB.Video, DB.VideoRepo"%>
<%
	request.setCharacterEncoding("utf-8");
	
	VideoRepo videoRepo = new VideoRepo();
	Video video = videoRepo.selectOneVideoById(Integer.parseInt(request.getParameter("id")));
	
	videoRepo.close();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><%=video.getTitle()%> - Video Board</title>
    <link rel="stylesheet" href="./static/bootstrap.min.css">
    <link rel="stylesheet" href="./static/style.css">
  </head>
<body>
  <div id="upper-bar">
  	<a href="index.jsp" id="title">Video Board</a>
  </div>
  <div id="content-view">
  	<div id="content-view-inner">
  	  <div id="video-wrap">
	  <video src="<%="./upload/"+video.getVideo()%>" controls autoplay>
		이 브라우저는 지원하지 않습니다.
	  </video>
  	  </div>
  	  <div id="video-info">
  		<div id="video-title"><%=video.getTitle()%></div>
  		<span id="video-author"><%=video.getAuthor()%></span>
  		<span id="video-date" style="float:right"><%=video.getDate()%></span>
  		<form method="POST" id="delete-or-update-form">
  			<input type="hidden" name="id" value="<%=video.getId()%>">
  			<input type="password" name="password" style="margin-left:0px; margin-top:10px" id="write-password" placeholder="비밀번호">
  			<input type="button" value="수정" id="update-button" class="btn btn-info" onclick="update()">
			<input type="button" value="삭제" id="delete-button" class="btn btn-danger" onclick="del()">
  		</form>
  		<p style="margin-top:30px"><%=video.getDesc()%></p>
  	  </div>
  	</div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
</body>
<script type="text/javascript" src="./static/jquery.js"></script>
<script type="text/javascript" src="./static/bootstrap.min.js"></script>
<script type="text/javascript" src="./static/deleteOrUpdate.js"></script>
</html>