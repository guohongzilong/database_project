package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.R_require;

public class R_require_dao {

	public ArrayList<R_require> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<R_require> list = new ArrayList<R_require>(); // ��Ʒ����
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from research_require order by research_center_id asc;"; // SQL���
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				R_require mem = new R_require();
				//mem.set(rs.getInt("doctor_id"));
				mem.setResearch_id(rs.getString("research_center_id"));
				mem.setOrgan(rs.getString("organ_organ_name"));
				//mem.setResult(rs.getString("result"));
				mem.setDate(rs.getString("date"));
				list.add(mem);// ��һ����Ʒ���뼯��
			}
			return list; // ���ؼ��ϡ�
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// �ͷ����ݼ�����
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// �ͷ�������
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
