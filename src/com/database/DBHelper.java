package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
	private static final String Driver="com.mysql.cj.jdbc.Driver";
	private static final String URL="jdbc:mysql://localhost:3306/shopping?userUnicode=true&characterEncoding=UTF-8";

	private static final String Username="root";

	private static final String Password="root";
	private static final Connection connection=null;
	//静态代码块负责加载驱动
	static {
		try {
			Class.forName(Driver);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	//单例模式返回数据库连接对象
	public static Connection getConnection() throws Exception{
		if(connection==null) {
			Connection connection=DriverManager.getConnection(URL,Username,Password);
			return connection;
		}
		return connection;
	}
	
	public static void main(String[] args) {
		try {
			Connection conn=DBHelper.getConnection();
			if(conn!=null) {
				System.out.println("it is successful!");
			}else {
				System.out.println("it is failed!");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
