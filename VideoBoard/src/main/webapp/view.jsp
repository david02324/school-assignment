<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="Video.Video"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>������ ����</title>
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
		�� �������� �������� �ʽ��ϴ�.
	  </video>
  	  </div>
  	  <div id="video-info">
  		<div id="video-title">������ ����</div>
  		<span id="video-author">�ø���</span>
  		<span id="video-date" style="float:right">�ø� ��¥(00-00-00 00:00)</span>
  		<form action="" method="POST">
  			<input type="password" placeholder="��й�ȣ">
  			<input type="submit" value="����" formaction="">
			<input type="submit" value="����" formaction="">
  		</form>
  		<p style="margin-top:30px">
  		����� ������ ������Դϴ�. ���⿡�ٰ� ������ ������ ǥ�õ� ���Դϴ�.
  		����� ������ ������Դϴ�. ���⿡�ٰ� ������ ������ ǥ�õ� ���Դϴ�.
  		����� ������ ������Դϴ�. ���⿡�ٰ� ������ ������ ǥ�õ� ���Դϴ�.
  		����� ������ ������Դϴ�. ���⿡�ٰ� ������ ������ ǥ�õ� ���Դϴ�.
  		����� ������ ������Դϴ�. ���⿡�ٰ� ������ ������ ǥ�õ� ���Դϴ�.</p>
  	  </div>
  	</div>
  </div>
  <div id="under-bar">���ͳ� ���α׷��� ������ ���� �Խ���</div>
</body>
</html>