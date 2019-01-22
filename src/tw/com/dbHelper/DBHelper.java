package tw.com.dbHelper;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import tw.com.Model.Member;
import tw.com.Model.Product;

public class DBHelper {
	/*使用者帳密**/
	private final String DBName = "Northwind";
	private final String user     = "sa";
	private final String password = "as";
	
	
	/*連線url**/
	private final String conUrl = "jdbc:sqlserver://localhost:1433;"
			+ "databaseName = " + DBName + ";"
			+ "user = "         + user     + ";" 
			+ "password = "     + password + ";";
	

	
	/***/
	private Connection      con = null;
	private Statement      stmt = null;
	private ResultSet resultSet = null;
	private ResultSetMetaData resultSetMetaData = null;
	
	
	/**
	 *連接數據庫(SQL)
	 **/
	public void connectToSQL() {	
		try {
			
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			con = DriverManager.getConnection(conUrl);
			Driver d = (Driver)Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			
			con = DriverManager
//	                .getConnection("jdbc:sqlserver://localhost:1433;databaseName=Northwind","sa","as");
		    .getConnection("jdbc:sqlserver://localhost:1433;databaseName=Northwind;user=sa;password=as");
			DatabaseMetaData metadata = con.getMetaData();
			System.out.println("Database Product Name : " + metadata.getDatabaseProductName());//獲取數據庫
			if(!con.isClosed()) 
				System.out.println("-----connect successed!");
			else
				System.out.println("------connect failed");
		}
		catch (Exception e) {
			System.out.println("-----Exception: " + e.toString());
		}
	}
	
	/**
	 *關閉數據連接
	 **/
	//public void closeAll(ResultSet resultSet,Connection con,Statement stmt) {
		public void closeAll() {
		try {
			if(resultSet != null){
				resultSet.close();
			}
			if(con != null){
				con.close();
			}
			if(stmt != null){
				stmt.close();
			}
		}
		catch (Exception e){
			System.out.println(e.toString());
		}

	}
	
	/**
	 *查詢Member資料表
	 *@param table name
	 *@return 回傳List<Member>資料
	 **/
	public ArrayList<Member> selectAllFromMember(String table) {
		String sql = "select * from [" + DBName + "].[dbo].[" + table + "]";
		ArrayList<Member> member = new ArrayList<Member>();
		int fId = 0;
		String fName = "";
		String fAccount = "";
		String fPassword = "";

		try {
			int numberOfColumns = -1;
			
			if(con != null)
				stmt = con.createStatement();
			if(stmt != null)
				resultSet = stmt.executeQuery(sql);
			if(resultSet != null)
				resultSetMetaData = resultSet.getMetaData();
			
			if(resultSetMetaData != null) {
				numberOfColumns = resultSetMetaData.getColumnCount();
				while(resultSet.next()){
			    	for(int i = 1;i < numberOfColumns + 1; i++) {
			    		String field = resultSetMetaData.getColumnName(i);			    		
			    		if(field.equals("fId")) 
			    			fId = resultSet.getInt(field);
			    		else if(field.equals("fName"))
			    			fName = resultSet.getString(field);
			    		else if(field.equals("fAccount"))
			    			fAccount = resultSet.getString(field);
			    		else if(field.equals("fPassword"))
			    			fPassword = resultSet.getString(field);
			    		
			    		//System.out.println(resultSet.getString(field));
			    	}
			    	member.add(new Member(fId,fName,fAccount,fPassword));
			    }
			}
			else {
				System.out.println("select 失敗， 流程有誤");
			}
			
		}
		catch (SQLException e) {
			System.out.println(e.toString());
			
		}
		
		return member;
		
	}
	
	/**
	 *查詢Product資料表
	 *@param table name
	 *@return 回傳List<Product>資料
	 **/
	public ArrayList<Product> selectAllFromProduct(String table) {
		String sql = "select * from [" + DBName + "].[dbo].[" + table + "]";
		ArrayList<Product> member = new ArrayList<Product>();
		int fProductId = 0;
		String fName = "";
		int fPrice = 0;
		String fPicture = "";
		int f庫存 = 0;

		try {
			int numberOfColumns = -1;
			
			if(con != null)
				stmt = con.createStatement();
			if(stmt != null)
				resultSet = stmt.executeQuery(sql);
			if(resultSet != null)
				resultSetMetaData = resultSet.getMetaData();
			
			if(resultSetMetaData != null) {
				numberOfColumns = resultSetMetaData.getColumnCount();
				while(resultSet.next()){
			    	for(int i = 1;i < numberOfColumns + 1; i++) {
			    		String field = resultSetMetaData.getColumnName(i);			    		
			    		if(field.equals("fProductId")) 
			    			fProductId = resultSet.getInt(field);
			    		else if(field.equals("fName"))
			    			fName = resultSet.getString(field);
			    		else if(field.equals("fPrice"))
			    			fPrice = resultSet.getInt(field);
			    		else if(field.equals("fPicture"))
			    			fPicture = resultSet.getString(field);
			    		else if(field.equals("f庫存"))
			    			f庫存 = resultSet.getInt(field);
			    		
			    		//System.out.println(resultSet.getString(field));
			    	}
			    	member.add(new Product(fProductId,fName,fPrice,fPicture,f庫存));
			    }
			}
			else {
				System.out.println("select 失敗， 流程有誤");
			}
			
		}
		catch (SQLException e) {
			System.out.println(e.toString());
			
		}
		
		return member;
		
	}
	
	
	
}
