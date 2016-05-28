package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Donor;

public class Donor_dao {

	public ArrayList<Donor> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Donor> list = new ArrayList<Donor>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from donor order by id asc;"; // SQL语句
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Donor mem = new Donor();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				mem.setPhone(rs.getString("phone"));
				mem.setBlood_type(rs.getString("blood_type"));
				mem.setMedical_id(rs.getInt("medical_id"));
				mem.setStatus(rs.getString("status"));
				mem.setOrgan(rs.getString("organ"));
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
	
	
	public ArrayList<Donor> getAllItems1(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Donor> list = new ArrayList<Donor>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from donor where id = ?"; // SQL语句
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Donor mem = new Donor();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				mem.setPhone(rs.getString("phone"));
				mem.setBlood_type(rs.getString("blood_type"));
				mem.setMedical_id(rs.getInt("medical_id"));
				mem.setStatus(rs.getString("status"));
				mem.setOrgan(rs.getString("organ"));
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
	
	public ArrayList<Donor> getAllItems2(String name) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Donor> list = new ArrayList<Donor>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from donor where name = ?"; // SQL语句
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, name);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Donor mem = new Donor();
				mem.setId(rs.getInt("id"));
				mem.setName(rs.getString("name"));
				mem.setAddress(rs.getString("address"));
				mem.setPhone(rs.getString("phone"));
				mem.setBlood_type(rs.getString("blood_type"));
				mem.setMedical_id(rs.getInt("medical_id"));
				mem.setStatus(rs.getString("status"));
				mem.setOrgan(rs.getString("organ"));
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
	public boolean insert(Donor m) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DBHelper.getConnection();
			String sql="insert into donor values(?,?,?,?,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(2, m.getName());
			stmt.setInt(1, m.getId());
			stmt.setString(3, m.getAddress());
			stmt.setString(5, m.getBlood_type());
			stmt.setString(4, m.getPhone());
			stmt.setInt(6, m.getMedical_id());
			stmt.setString(7, m.getStatus());
			stmt.setString(8, m.getOrgan());
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
			String sql="delete from donor where id=?";
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
