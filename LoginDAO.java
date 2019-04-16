package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.UserBean;
import util.DBUtil;

public class LoginDAO {
	public int validateUser(String uid, String pass){
		int response=0;
		Connection con=DBUtil.getDBConnection();
		if(con!=null){
			try {
				PreparedStatement pstmt=con.prepareStatement("SELECT * from Tablename where filed name =?AND fieldpass=?");
				pstmt.setString(1, uid);
				pstmt.setLong(2, pass);
				ResultSet rs=pstmt.executeQuery();
				if(rs.next()){
					b.setId(rs.getInt("userid"));
					b.setUsername(rs.getString("name"));
					b.setEmail(rs.getString("email"));
					b.setMob(rs.getLong("mob"));
					b.setClassroll(rs.getInt("classroll"));
					response=1;
				}
				else{
					response=0;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return response;
	}

}
