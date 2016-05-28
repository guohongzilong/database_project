package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBHelper;
import entity.Operate;

public class Operate_dao {

	public ArrayList<Operate> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Operate> list = new ArrayList<Operate>(); // ��Ʒ����
		try {
			//System.out.println("hello,world321");
			conn = DBHelper.getConnection();
			//System.out.println("hello,world123");
			String sql = "select * from operate order by patient_id asc;"; // SQL���
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Operate mem = new Operate();
				mem.setDoctor_id(rs.getInt("doctor_id"));
				mem.setPatient_id(rs.getInt("patient_id"));
				mem.setOrgan(rs.getString("organ_organ_name"));
				mem.setResult(rs.getString("result"));
				mem.setDate(rs.getString("date"));
				mem.setDonor_id(rs.getInt("donor_id"));
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
