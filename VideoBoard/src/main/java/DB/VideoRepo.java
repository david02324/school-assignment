package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

public class VideoRepo {
	private Connection con;	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public VideoRepo() throws SQLException, NamingException{
		con = DsCon.getConnection();
	}
	
	// 비디오 업로드
	public int insertVideo(Video video) throws SQLException{
		// 비밀번호는 SHA-1 암호화
		String sql = "INSERT INTO video (title,video,thumbnail,author,description,password) values(?,?,?,?,?,password(?))";
		
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, video.getTitle());
		pstmt.setString(2, video.getVideo());
		pstmt.setString(3, video.getThumbnail());
		pstmt.setString(4, video.getAuthor());
		pstmt.setString(5, video.getDesc());
		pstmt.setString(6, video.getPassword());
		
		pstmt.executeUpdate();
		
		// 마지막 업로드된 ID 가져옴 (비권장)
		sql = "SELECT LAST_INSERT_ID() AS last_id";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		
		return rs.getInt("last_id");
	}
	
	// 조회를 위한 비디오 하나의 정보 SELECT
	public Video selectOneVideoById(int id) throws SQLException{
		String sql = "SELECT * FROM video WHERE id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			Video video = new Video();
			video.setId(id);
			video.setAuthor(rs.getString("author"));
			// Mariadb의 DATETIME 객체에서 분 단위까지만 substring
			video.setDate(rs.getString("date").substring(0, 16));
			video.setDesc(rs.getString("description"));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			video.setVideo(rs.getString("video"));
			
			return video;
		} else {
			return null;
		}
	}
	
	// 목록 출력을 위한 SELECT
	public ArrayList<Video> getVideoList() throws SQLException{
		String sql = "SELECT thumbnail,title,author,date,id from video order by id desc";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		ArrayList<Video> list = new ArrayList<Video>();
		
		while (rs.next()) {
			Video video = new Video();
			video.setId(rs.getInt("id"));
			video.setAuthor(rs.getString("author"));
			// Mariadb의 DATETIME 객체에서 분 단위까지만 substring
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
	// 제목으로 비디오 검색
	public ArrayList<Video> searchVideoByTitle(String keyword) throws SQLException{
		String sql = "SELECT thumbnail,title,author,date,id from video where title like ? order by id desc";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%"+keyword+"%");
		rs = pstmt.executeQuery();
		ArrayList<Video> list = new ArrayList<Video>();
		
		while (rs.next()) {
			Video video = new Video();
			video.setId(rs.getInt("id"));
			video.setAuthor(rs.getString("author"));
			// Mariadb의 DATETIME 객체에서 분 단위까지만 substring
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
	// 내용으로 비디오 검색
	public ArrayList<Video> searchVideoByDesc(String keyword) throws SQLException{
		String sql = "SELECT thumbnail,title,author,date,id from video where description like ? order by id desc";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%"+keyword+"%");
		rs = pstmt.executeQuery();
		ArrayList<Video> list = new ArrayList<Video>();
		
		while (rs.next()) {
			Video video = new Video();
			video.setId(rs.getInt("id"));
			video.setAuthor(rs.getString("author"));
			// Mariadb의 DATETIME 객체에서 분 단위까지만 substring
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
	// 비밀번호 일치 체크
	public boolean passwordCheck(int id,String password) throws SQLException {
		String sql = "select EXISTS (select * from video where id=? and password=password(?)) as success";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, password);
		rs = pstmt.executeQuery();
		
		rs.next();
		return rs.getBoolean("success");
	}
	
	// 비디오 삭제
	public void deleteVideo(int id) throws SQLException{
		String sql = "DELETE from video WHERE id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.execute();
		
		// 연관된 댓글 삭제
		sql = "DELETE from comment WHERE video_id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.execute();
	}
	
	// 비디오 수정
	public void updateVideo(Video video) throws SQLException {
		String sql = "UPDATE video SET title=?,video=?,thumbnail=?,description=? WHERE id=?";
		
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, video.getTitle());
		pstmt.setString(2, video.getVideo());
		pstmt.setString(3, video.getThumbnail());
		pstmt.setString(4, video.getDesc());
		pstmt.setInt(5, video.getId());
		
		pstmt.executeUpdate();
	}
	
	public void close() throws SQLException {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(con != null) con.close();
	}
}
