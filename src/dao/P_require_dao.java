package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.P_require;

public class P_require_dao {
   
	public ArrayList<P_require> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<P_require> list = new ArrayList<P_require>(); // ��Ʒ����
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from patient_require order by date asc;"; // SQL���
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				P_require mem = new P_require();
				//mem.setDoctor_id(rs.getInt("doctor_id"));
				mem.setPatient_id(rs.getInt("patient_id"));
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
