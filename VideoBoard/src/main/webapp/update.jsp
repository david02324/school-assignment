<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8" import="DB.Video"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>비디오 수정</title>
    <link rel="stylesheet" href="./static/style.css">
  </head>
<body>
  <div id="upper-bar">
  	<a href="index.jsp" id="title">Video Board</a>
  </div>
  <div id="content-view">
  	<div id="content-view-inner">
  	  <div id="write-view-title">비디오 수정</div>
  	  <form id="write-form" action="write_do.jsp" method="post" enctype="multipart/form-data">
  	  	<input type="text" id="write-title" name="title" placeholder="비디오 제목" maxlength="30"><hr><br>
  	  	<textarea id="write-desc" name="desc" placeholder="비디오 설명(1000자 이내)" maxlength="1000"></textarea><br>
  	  	비디오 선택 (mp4, mkv, avi 파일만 업로드할 수 있습니다. 최대 5MB)<br>
  	  	<input type="file" id="write-video" name="video" accept=".mp4,.mkv,.avi"><br><br>
  	  	썸네일 선택 (jpg, jpeg, png 파일만 업로드할 수 있습니다.)<br>
  	  	<input type="file" id="write-thumbnail" name="thumbnail" accept=".jpeg,.jpg,.png"><br>
  	  	<img style="width: 360px; height: 202px; margin-top:30px;" id="preview-image" src="./static/thumbnailPreview.png"><br>
  	  	(실제 보여질 썸네일 크기입니다)<br><br>
  	  	<hr><br><br>
  	  	<input type="button" id="write-submit" value="업로드" onclick="checkSubmit()">
  	  	<input type="password" id="write-password" style="float:right;" name="password" placeholder="비밀번호" maxlength="20">
  	  	<input type="text" id="write-author" value="원래닉네임" disabled>
  	  </form>
  	</div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
</body>
<script type="text/javascript" src="./static/thumbnailPreview.js"></script>
<script type="text/javascript" src="./static/jquery.js"></script>
<script type="text/javascript" src="./static/submit.js" charset='utf-8'></script>
</html>