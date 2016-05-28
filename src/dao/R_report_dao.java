package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.R_report;

public class R_report_dao {

	public ArrayList<R_report> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<R_report> list = new ArrayList<R_report>(); // 商品集合
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from record order by research_center_id asc;"; // SQL语句
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				R_report mem = new R_report();
				//mem.setDoctor_id(rs.getInt("doctor_id"));
				mem.setResearch_id(rs.getInt("research_center_id"));
				mem.setOrgan(rs.getString("organ_organ_name"));
				//mem.setResult(rs.getString("result"));
				mem.setDate(rs.getString("date"));
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
}
