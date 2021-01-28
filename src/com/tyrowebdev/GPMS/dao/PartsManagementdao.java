package com.tyrowebdev.GPMS.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tyrowebdev.GPMS.Connectiondao.Connectiondao;
import com.tyrowebdev.GPMS.model.Parts;

public class PartsManagementdao {

	public static List<Parts> getAllParts() {
		List<Parts> partsList = new ArrayList<Parts>();
		try {
			Connection con = Connectiondao.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from parts");
			while (rs.next()) {
				Parts parts = new Parts(rs.getInt("id"), rs.getString("name"), rs.getInt("quantity"), rs.getInt("cost"),
						rs.getString("date_time"));
				partsList.add(parts);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return partsList;
	}

	public static int addParts(Parts p) {
		int status = 0;
		try {
			Connection con = Connectiondao.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into parts(name,quantity,cost) values(?,?,?);");
			ps.setString(1, p.getName());
			ps.setInt(2, p.getQuantity());
			ps.setInt(3, p.getCost());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static Parts getPartById(int id) {
		Parts part = null;
		try {
			Connection con = Connectiondao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from parts where id =? ;");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				part = new Parts(rs.getInt("id"), rs.getString("name"), rs.getInt("quantity"), rs.getInt("cost"),
						rs.getString("date_time"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return part;
	}
	
	public static Parts getPartById(String id) {
		Parts part = null;
		try {
			Connection con = Connectiondao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from parts where id =? ;");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				part = new Parts(rs.getInt("id"), rs.getString("name"), rs.getInt("quantity"), rs.getInt("cost"),
						rs.getString("date_time"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return part;
	}

	public static int updateParts(Parts p) {
		int status = 0;
		try {
			Connection con = Connectiondao.getConnection();
			PreparedStatement ps = con.prepareStatement("update parts set name=? ,quantity=? ,cost=? where id=? ;");
			ps.setString(1, p.getName());
			ps.setInt(2, p.getQuantity());
			ps.setInt(3, p.getCost());
			ps.setInt(4, p.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int deletePart(int id) {
		int status = 0;
		try {
			Connection con = Connectiondao.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from parts where id =? ;");
			ps.setInt(1, id);
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

}
