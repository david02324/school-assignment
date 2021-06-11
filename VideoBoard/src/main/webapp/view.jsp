<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="Video.Video"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>동영상 제목</title>
    <link rel="stylesheet" href="./static/style.css">
  </head>
<body>
  <div id="upper-bar">
  	<a href="index.jsp" id="title">Video Board</a>
  </div>
  <div id="content-view">
  	<div id="content-view-inner">
  	  <div id="video-wrap">
	  <video src='https://www.youtube.com/embed/5_5_gGXhpR0' controls autoplay>
		이 브라우저는 지원하지 않습니다.
	  </video>
  	  </div>
  	  <div id="video-info">
  		<div id="video-title">동영상 제목</div>
  		<span id="video-author">올린이</span>
  		<span id="video-date" style="float:right">올린 날짜(00-00-00 00:00)</span>
  		<form action="" method="POST">
  			<input type="password" placeholder="비밀번호">
  			<input type="submit" value="수정" formaction="">
			<input type="submit" value="삭제" formaction="">
  		</form>
  		<p style="margin-top:30px">
  		여기는 동영상 설명란입니다. 여기에다가 동영상 설명이 표시될 것입니다.
  		여기는 동영상 설명란입니다. 여기에다가 동영상 설명이 표시될 것입니다.
  		여기는 동영상 설명란입니다. 여기에다가 동영상 설명이 표시될 것입니다.
  		여기는 동영상 설명란입니다. 여기에다가 동영상 설명이 표시될 것입니다.
  		여기는 동영상 설명란입니다. 여기에다가 동영상 설명이 표시될 것입니다.</p>
  	  </div>
  	</div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
</body>
</html>