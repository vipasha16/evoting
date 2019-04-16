package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.UserBean;
import util.DBUtil;

public class RegisterDAO {
	public int registerUser(UserBean b){
		int response=0;
		Connection con=DBUtil.getDBConnection();
		if(con!=null){
			try {
				PreparedStatement pstmt=con.prepareStatement("INSERT into user_mst(name,email,mob,classroll) values (?,?,?,?)");
				pstmt.setString(1, b.getUsername());
				pstmt.setString(2, b.getEmail());
				pstmt.setLong(3, b.getMob());
				pstmt.setInt(4, b.getClassroll());
				response=pstmt.executeUpdate();
				ResultSet rs=pstmt.getGeneratedKeys();
				if(rs!=null){
				b.setId(rs.getInt("userid"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return response;
	}

}
