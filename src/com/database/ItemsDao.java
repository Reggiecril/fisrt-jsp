package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//item业务逻辑属性
public class ItemsDao {

	// 获得所有item
	public List<Items> getAllItems() {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Items> list = new ArrayList<>();
		try {
			connection = DBHelper.getConnection();
			String sql = "Select * From items";
			ps = connection.prepareStatement(sql);// SQL语句
			rs = ps.executeQuery();
			while (rs.next()) {
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setCity(rs.getString("city"));
				item.setName(rs.getString("name"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getDouble("price"));
				item.setPicture(rs.getString("picture"));
				list.add(item);// 加入商品到集合
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放prepareStatament
			if (ps != null) {
				try {
					ps.close();
					ps = null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			// 释放resultset

			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		}
	}

	// 获得单个item
	public Items getItemById(int id) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = DBHelper.getConnection();
			String sql = "select * from items where id=?";// SQL语句
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setCity(rs.getString("city"));
				item.setName(rs.getString("name"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getDouble("price"));
				item.setPicture(rs.getString("picture"));
				return item;
			} else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			// 释放prepareStatament
			if (ps != null) {
				try {
					ps.close();
					ps = null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			// 释放resultset

			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
		}
	}

	// 获得Cookie
	public List<Items> getListView(String list) {
		List<Items> array = new ArrayList<Items>();
		String[] s = list.split("");
		if (list!=null&&list!="") {
			if (s.length >= 5) {
				for (int count = s.length - 1; count >= s.length - 5; count--) {
					int id = Integer.parseInt(s[count]);
					array.add(getItemById(id));
				}
			} else {
				for (int count = s.length - 1; count >= 0; count--) {
					int id = Integer.parseInt(s[count]);
					array.add(getItemById(id));
				}
			}
			return array;
		}
		else {
			return null;
		}
		
	}

}
