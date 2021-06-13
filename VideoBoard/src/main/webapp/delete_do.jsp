<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="DB.*,java.io.File"%>
<script>
<%
	request.setCharacterEncoding("utf-8");

	int id = Integer.parseInt(request.getParameter("id"));
	String password = request.getParameter("password");
	VideoRepo repo = new VideoRepo();
	if(repo.passwordCheck(id, password)){
		Video video = repo.selectOneVideoById(id);
		ServletContext context = getServletContext();
		String realFolder = context.getRealPath("upload");
		
		File videoFile = new File(realFolder+"/"+video.getVideo());
		File thumbnailFile = new File(realFolder+"/"+video.getThumbnail());
		
		videoFile.delete();
		thumbnailFile.delete();
		repo.deleteVideo(id);
		%> 
			alert('삭제가 완료되었습니다');
			location.href="index.jsp";
		<%
	} else {
		%>	
			alert('비밀번호가 다르거나 존재하지 않는 비디오입니다.');
			history.back();
		<%
	}
		
	repo.close();
%>
</script>
