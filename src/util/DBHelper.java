package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;


import javax.swing.*;


public class DBHelper {
   
	private static final String driver = "com.mysql.jdbc.Driver"; //���ݿ�����
	//�������ݿ��URL��ַ
	private static final String url="jdbc:mysql://localhost:3306/organ_system"; 
	private static final String username="root";//���ݿ���û���
	private static final String password="root";//���ݿ������
    
	private static Connection conn=null;
	
	//��̬����鸺���������
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
	
	//����ģʽ�������ݿ����Ӷ���
	public static Connection getConnection() throws Exception
	{
		//System.out.println("��qweqweqweqweqwe��");
		if(conn==null)
		{
			System.out.println("qweqweqw����");
			conn = DriverManager.getConnection(url, username, password);
			//System.out.println("���ݿ�����������");
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
			   System.out.println("���ݿ�����������");
		   }
		   else
		   {
			   System.out.println("���ݿ������쳣��");
		   }
		   Connection conn1 = 
					DriverManager.getConnection(url,username,password);
			       //����SQL������
					Statement statement =conn1.createStatement();
					String sqlQuery="select * from doctor ";
			      //ִ�в�ѯ
					ResultSet rs= statement.executeQuery(sqlQuery);
					while(rs.next()){   //��������
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
