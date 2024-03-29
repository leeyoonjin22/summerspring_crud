package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.User;

public class UserDao {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/camp2","camp2","DqYAaFSdSQrTsDf0");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static int save(User u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into LYJ_users(name,email,userid,password,birth,sex) values(?,?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getUserid());
			ps.setString(4,u.getPassword());
			ps.setString(5,u.getBirth());
			ps.setString(6,u.getSex());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int update(User u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update LYJ_users set name=?,email=?,userid=?,password=?,birth=?,sex=? where id=?");
			ps.setString(1,u.getName());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getUserid());
			ps.setString(4,u.getPassword());
			ps.setString(5,u.getBirth());
			ps.setString(6,u.getSex());
			ps.setInt(7,u.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int delete(User u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from LYJ_users where id=?");
			ps.setInt(1,u.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from LYJ_users");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setUserid(rs.getString("userid"));
				u.setPassword(rs.getString("password"));
				u.setBirth(rs.getString("birth"));
				u.setSex(rs.getString("sex"));
				list.add(u);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	public static User getRecordById(int id){
		User u=null;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from LYJ_users where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				u=new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setUserid(rs.getString("userid"));
				u.setPassword(rs.getString("password"));
				u.setBirth(rs.getString("birth"));
				u.setSex(rs.getString("sex"));
			}
		}catch(Exception e){System.out.println(e);}
		return u;
	}
}
