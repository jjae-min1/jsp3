package chap14;


import java.util.*;
import java.sql.*;

public class EmployeeDao {
	public static List<String> listEmployeeName() {
		
			String sql = "SELECT ename FROM employee";
			List<String> list = new ArrayList<>();
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String id = "c##mydbms";
			String pw = "admin";
			
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				con = DriverManager.getConnection(url, id, pw);
				
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					list.add(rs.getString("ename"));
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(stmt != null) {
					try {
						stmt.close();
					}catch(SQLException e) {
						e.printStackTrace();
					}
				}
				if(con != null) {
					try {
						con.close();
					}catch(SQLException e) {
						e.printStackTrace();
					}
				}
				
			}
		
			return list;
		}
}
