package chap14;


import java.util.*;
import java.sql.*;

public class EmployeeDao {
	public static List<String> getNameLike(String name, Boolean asc){
		List<String> list = new ArrayList<>();
		String sql = "SELECT ename FROM employee "
				+ "WHERE ename LIKE '%" + name + "%' ORDER BY ename";
		if(asc == false) {
			sql += " DESC";
		}
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";
		
		
		try (
				Connection con = DriverManager.getConnection(url, id, pw);
				Statement stmt = con.createStatement();	
				){              
			Class.forName("oracle.jdbc.driver.OracleDriver");
			ResultSet rs = null;
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
		}catch(Exception e) {
				e.printStackTrace();
			
		}
			
			
		
		
		
		
		
		return list;
	}
	
	
	
	public static List<String> getNameLike(String name){
		List<String> list = new ArrayList<>();
		String sql = "SELECT ename FROM employee "
				+ "WHERE ename LIKE '%" + name + "%'";
		
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
				}catch(SQLException e){
					e.printStackTrace();
					
				}
			}
		}
		
		
		return list;
		
		
	}
	
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
