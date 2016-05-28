package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Doctor;
import entity.Research;

public class Research_dao {

	public ArrayList<Research> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Research> list = new ArrayList<Research>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from research_center order by id asc;"; // SQL语句
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Research mem = new Research();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				//mem.setResult(rs.getString("result"));
				mem.setPhone(rs.getString("phone"));
				list.add(mem);// 把一个商品加入集合
			}
			return list; // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	
	
	public ArrayList<Research> getAllItems1(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Research> list = new ArrayList<Research>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from research_center where id=?;"; // SQL语句
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Research mem = new Research();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				//mem.setResult(rs.getString("result"));
				mem.setPhone(rs.getString("phone"));
				list.add(mem);// 把一个商品加入集合
			}
			return list; // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	
	public ArrayList<Research> getAllItems2(String name) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Research> list = new ArrayList<Research>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from research_center where name = ?"; // SQL语句
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Research mem = new Research();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				mem.setPhone(rs.getString("phone"));
				//mem.setDepartment(rs.getString("department"));
				list.add(mem);// 把一个商品加入集合
			}
			return list; // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	public boolean insert(Research m) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DBHelper.getConnection();
			String sql="insert into research_center values(?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(2, m.getName());
			stmt.setInt(1, m.getId());
			stmt.setString(3, m.getAddress());
			//stmt.setString(5, m.getDepartment());
			stmt.setString(4, m.getPhone());
			//stmt.setString(5, m.getInstrument());
			//stmt.setString(7, m.getIdentity());
			stmt.execute();
			//System.out.println("hello,world");
			//System.out.println(m.getName()+' '+m.getAcademy()+' '+m.getId()+' '+m.getMajor()+' '+ m.getInstrument()+' '+m.getGrade()+' '+m.getIdentity());
			//System.out.println("hello,world");
			return true; // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}

	}
	
	public void delete(int id){
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DBHelper.getConnection();
			//String sql = "insert into entry_form values('person.getName1()','person.getId()','person.getAcademy()','person.getMajor()','person.getTel()','person.getQq()','person.getInstrument()','person.getGrade()','person.getLevel()','person.getIdentity()','person.getIntroduce()')"; // SQL语句
			//stmt = conn.prepareStatement(sql);
			//rs=stmt.executeQuery();
			String sql="delete from research_center where id=?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			
			stmt.execute();
			 // 返回集合。
		} catch (Exception ex) {
			ex.printStackTrace();
			
		} finally {
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	
}
