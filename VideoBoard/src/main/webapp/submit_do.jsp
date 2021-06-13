<%@ page contentType="text/html;charset=utf-8" 
	import="com.oreilly.servlet.*, com.oreilly.servlet.multipart.*"
	import="java.io.*, DB.Video, DB.VideoRepo, java.io.File" 
%>
<%
request.setCharacterEncoding("utf-8");

int maxsize = 1024*1024*1024;		//최대 업로드 파일 크기

//upload 이름을 가지는 실제 서버의 경로명 알아내기 
ServletContext context = getServletContext();
String realFolder = context.getRealPath("upload");

// 폴더 존재하는지 확인 후 없다면 생성
File folder = new File(realFolder);
if (!folder.exists()){
	folder.mkdir();
}

int redirectId = 0;

try {
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
												maxsize, "euc-kr",
												new DefaultFileRenamePolicy());

	Video video = new Video();
	video.setTitle(multi.getParameter("title"));
	video.setAuthor(multi.getParameter("author"));
	video.setDesc(multi.getParameter("desc"));
	video.setThumbnail(multi.getFile("thumbnail").getName());
	video.setVideo(multi.getFile("video").getName());
	video.setPassword(multi.getParameter("password"));
	
	VideoRepo repo = new VideoRepo();
	if (multi.getParameter("id") != null){
		int id = Integer.parseInt(multi.getParameter("id"));
		Video oldVideo = repo.selectOneVideoById(id);
	
		File videoFile = new File(realFolder+"/"+oldVideo.getVideo());
		File thumbnailFile = new File(realFolder+"/"+oldVideo.getThumbnail());
		
		videoFile.delete();
		thumbnailFile.delete();
		
		video.setId(id);
		repo.updateVideo(video);
		redirectId = id;
	} else {
		redirectId = repo.insertVideo(video);
	}
	
	repo.close();
} catch(IOException e) { 
	out.println("파일 전송 오류 : " + e);
}

response.sendRedirect("view.jsp?id="+redirectId);
%>