package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;


import javax.swing.*;


public class DBHelper {
   
	private static final String driver = "com.mysql.jdbc.Driver"; //数据库驱动
	//连接数据库的URL地址
	private static final String url="jdbc:mysql://localhost:3306/organ_system"; 
	private static final String username="root";//数据库的用户名
	private static final String password="root";//数据库的密码
    
	private static Connection conn=null;
	
	//静态代码块负责加载驱动
	static 
	{
		try
		{
			Class.forName(driver);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	//单例模式返回数据库连接对象
	public static Connection getConnection() throws Exception
	{
		//System.out.println("数qweqweqweqweqwe！");
		if(conn==null)
		{
			System.out.println("qweqweqw常！");
			conn = DriverManager.getConnection(url, username, password);
			//System.out.println("数据库连接正常！");
			return conn;
		}
		return conn;
	}
	
	public static void main(String[] args) {
		
		try
		{
		   Connection conn = DBHelper.getConnection();
		   if(conn!=null)
		   {
			   System.out.println("数据库连接正常！");
		   }
		   else
		   {
			   System.out.println("数据库连接异常！");
		   }
		   Connection conn1 = 
					DriverManager.getConnection(url,username,password);
			       //建立SQL语句对象
					Statement statement =conn1.createStatement();
					String sqlQuery="select * from doctor ";
			      //执行查询
					ResultSet rs= statement.executeQuery(sqlQuery);
					while(rs.next()){   //处理结果集
						System.out.print(rs.getInt(1)+",");	
			    		System.out.print(rs.getString(2)+",");
			    		System.out.print(rs.getString(3)+",");	
			    		System.out.print(rs.getInt(4)+",");
			    		System.out.print(rs.getString(5)+"\n");
			    		//System.out.print(rs.getString(6)+"\n");
			    		
					}

		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
}
