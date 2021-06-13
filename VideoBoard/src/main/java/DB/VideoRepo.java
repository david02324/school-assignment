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
	
	public int insertVideo(Video video) throws SQLException{
		String sql = "INSERT INTO video (title,video,thumbnail,author,description,password) values(?,?,?,?,?,password(?))";
		
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, video.getTitle());
		pstmt.setString(2, video.getVideo());
		pstmt.setString(3, video.getThumbnail());
		pstmt.setString(4, video.getAuthor());
		pstmt.setString(5, video.getDesc());
		pstmt.setString(6, video.getPassword());
		
		pstmt.executeUpdate();
		
		sql = "SELECT LAST_INSERT_ID() AS last_id";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		
		return rs.getInt("last_id");
	}
	
	public Video selectOneVideoById(int id) throws SQLException{
		String sql = "SELECT * FROM video WHERE id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			Video video = new Video();
			video.setId(id);
			video.setAuthor(rs.getString("author"));
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
	
	public ArrayList<Video> getVideoList() throws SQLException{
		String sql = "SELECT thumbnail,title,author,date,id from video order by id desc";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		ArrayList<Video> list = new ArrayList<Video>();
		
		while (rs.next()) {
			Video video = new Video();
			video.setId(rs.getInt("id"));
			video.setAuthor(rs.getString("author"));
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
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
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
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
			video.setDate(rs.getString("date").substring(0, 16));
			video.setThumbnail(rs.getString("thumbnail"));
			video.setTitle(rs.getString("title"));
			
			list.add(video);
		}
		
		return list;
	}
	
	public boolean passwordCheck(int id,String password) throws SQLException {
		String sql = "select EXISTS (select * from video where id=? and password=password(?)) as success";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, password);
		rs = pstmt.executeQuery();
		
		rs.next();
		return rs.getBoolean("success");
	}
	
	public void deleteVideo(int id) throws SQLException{
		String sql = "DELETE from video WHERE id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.execute();
	}
	
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
