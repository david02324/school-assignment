<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR">
    <title>동영상 관리 게시판</title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
<body>
	  <div id="upper-bar"></div>
  <div id="navi-bar">
    <a href="index.jsp">홈</a> | 전체글보기(혹은 현재 게시판 이름)
    <form id="login" action="..." accept-charset="utf-8" method="post">
      ID : <input type="text" name="id">
      PW : <input type="password" name="pw">
      <input type="submit" value="인증">
    </form>
  </div>
  <div id="content">
    <div id="content-left">
      <div class="board-list"><a href="index.jsp"><strong>#전체 게시글 보기</strong></a></div>
      <div class="board-list"><a href="board1.jsp">#게시판1</a></div>
      <div class="board-list"><a href="board2.jsp">#게시판2</a></div>
      <div class="board-list"><a href="board3.jsp">#게시판3</a></div>
    </div>
    <div id="content-right">
      <span id="title"><strong>현재 게시판명</strong></span> <a href="write.jsp">#글쓰기</a>
      <span id="search">
        <input type="text" placeholder="검색어">
        <input type="button" value="검색">
      </span>
      <div class="post">
        <div class="post-info-bar">
          <span class="post-name"><strong>글 제목</strong></span> | <span class="post-info">작성자 | 00-00-00</span>
        </div>
        <div class="post-body">
          <div class="thumbnail"><a href="view.jsp" style="margin: 50px">썸네일(클릭시 상세조회)</a></div>
          글쓰기를 클릭한 후 글을 작성하면 빈즈 객체에 name,author,disc 데이터가 넘어가고 get메서드를 통해서 조회가 가능합니다.
        </div>
        <div class="post-control">
          비밀번호 : <input type="password">
          <a href="update.jsp">수정</a> | <a href="delete.jsp">삭제</a>
        </div>
      </div>
      <div class="post">
        <div class="post-info-bar">
          <span class="post-name"><strong>글 제목</strong></span> | <span class="post-info">작성자 | 00-00-00</span>
        </div>
        <div class="post-body">
          <div class="thumbnail"><a href="view.jsp" style="margin: 50px">썸네일(클릭시 상세조회)</a></div>
          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ....
        </div>
        <div class="post-control">
          비밀번호 : <input type="password">
          <a href="update.jsp">수정</a> | <a href="delete.jsp">삭제</a>
        </div>
      </div>
      <div class="post">
        <div class="post-info-bar">
          <span class="post-name"><strong>글 제목</strong></span> | <span class="post-info">작성자 | 00-00-00</span>
        </div>
        <div class="post-body">
          <div class="thumbnail"><a href="view.jsp" style="margin: 50px">썸네일(클릭시 상세조회)</a></div>
          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ....
        </div>
        <div class="post-control">
          비밀번호 : <input type="password">
          <a href="update.jsp">수정</a> | <a href="delete.jsp">삭제</a>
        </div>
      </div>
      <div class="post">
        <div class="post-info-bar">
          <span class="post-name"><strong>글 제목</strong></span> | <span class="post-info">작성자 | 00-00-00</span>
        </div>
        <div class="post-body">
          <div class="thumbnail"><a href="view.jsp" style="margin: 50px">썸네일(클릭시 상세조회)</a></div>
          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ....
        </div>
        <div class="post-control">
          비밀번호 : <input type="password">
          <a href="update.jsp">수정</a> | <a href="delete.jsp">삭제</a>
        </div>
      </div>
    </div>
  </div>
  <div id="under-bar">인터넷 프로그래밍 동영상 관리 게시판</div>
</body>
</html>
