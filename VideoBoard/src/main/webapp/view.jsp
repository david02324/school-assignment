<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="DB.Video, DB.VideoRepo"%>
<%
	request.setCharacterEncoding("utf-8");
	
	VideoRepo videoRepo = new VideoRepo();
	Video video = videoRepo.selectOneVideoById(Integer.parseInt(request.getParameter("id")));
	
	videoRepo.close();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title><%=video.getTitle()%> - Video Board</title>
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
		�� �������� �������� �ʽ��ϴ�.
	  </video>
  	  </div>
  	  <div id="video-info">
  		<div id="video-title"><%=video.getTitle()%></div>
  		<span id="video-author"><%=video.getAuthor()%></span>
  		<span id="video-date" style="float:right"><%=video.getDate()%></span>
  		<form action="" method="POST">
  			<input type="password" id="write-password" placeholder="��й�ȣ">
  			<input type="submit" value="����" formaction="">
			<input type="submit" value="����" formaction="">
  		</form>
  		<p style="margin-top:30px"><%=video.getDesc()%></p>
  	  </div>
  	</div>
  </div>
  <div id="under-bar">���ͳ� ���α׷��� ������ ���� �Խ���</div>
</body>
</html>