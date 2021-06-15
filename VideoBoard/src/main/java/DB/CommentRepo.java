package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

public class CommentRepo {
	private Connection con;	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public CommentRepo() throws SQLException, NamingException{
		con = DsCon.getConnection();
	}
	
	// 비디오 ID를 얻어서 해당 글의 댓글 불러오기
	public ArrayList<Comment> getCommentListByVideoId(int videoId) throws SQLException{
		String sql = "SELECT author,description,id FROM comment WHERE video_id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, videoId);
		rs = pstmt.executeQuery();
		
		// ArrayList 형태로 저장
		ArrayList<Comment> list = new ArrayList<Comment>();
		while(rs.next()) {
			Comment comment = new Comment();
			comment.setAuthor(rs.getString("author"));
			comment.setDesc(rs.getString("description"));
			comment.setId(rs.getInt("id"));
			
			list.add(comment);
		}
		
		return list;
	}
	
	// 댓글 작성
	public void insertComment(Comment comment) throws SQLException{
		String sql = "INSERT INTO comment (video_id,author,password,description) values(?,?,password(?),?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, comment.getVideoId());
		pstmt.setString(2, comment.getAuthor());
		pstmt.setString(3,comment.getPassword());
		pstmt.setString(4, comment.getDesc());
		
		pstmt.execute();
	}
	
	// 댓글 삭제
	public boolean deleteComment(int id,String password) throws SQLException {
		// 댓글 ID와 비밀번호가 일치하는 댓글의 존재 여부 확인
		String sql = "select EXISTS (select * from comment where id=? and password=password(?)) as success";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, password);
		rs = pstmt.executeQuery();
		
		rs.next();
		if (rs.getBoolean("success")) {
			sql = "delete from comment where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.execute();
			
			return true;
		} else {
			// 해당 댓글이 이미 없거나 비밀번호 불일치
			return false;
		}
	}
	
	public void close() throws SQLException {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(con != null) con.close();
	}
}
