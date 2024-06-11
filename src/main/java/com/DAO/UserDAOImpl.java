package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.Application;
import com.entity.User;

public class UserDAOImpl implements UserDAO {
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	// Registration Query	
	public boolean userRegister(User us) {
		boolean f = false;
		//content is removed
		return f;
	}

	// login Query	
	public User login(String email, String password) {
	  User us=null;
	  //content is removed
		
	return us;
	}
	
	// insert admin login
		public User loginAdmin(String e, String p) {
			User user = null;
			//content is removed
			return user;
		}
		
		// Edit Profile Source Code here	
		 public User getUserById(int id) {
			User u = null;
			//content is removed
			
			return u;
		}
		
		// Update Profile code here
			public boolean updateEditUser(User u) {
				boolean f=false;
				 try {
					String sql= "update user set FirstName=?, LastName=?, MobileNumber=?, Address=? where id=?";
					PreparedStatement ps = conn.prepareStatement(sql);
					ps.setString(1, u.getFirstName());
					ps.setString(2, u.getLastName());
					ps.setString(3, u.getMobileNumber());
					ps.setString(4, u.getAddress());
					ps.setInt(5, u.getId());
					
					int i=ps.executeUpdate();
					if(i==1) {
						f=true;
					}				
				} catch (Exception e) {
		          e.printStackTrace();
				}
				return f;
			}
			
			//View All Application Details code here
		  	public List<User> getViewAllUser(String email) {  		
		  		List<User> list = new ArrayList<User>();
		  		User u=null;
				
			    try {        
				   String sql="select * from user";
				   
				   PreparedStatement ps = conn.prepareStatement(sql);
				   ResultSet rs = ps.executeQuery();
				   
				   while(rs.next()) {
					   
					u=new User();
					u.setId(rs.getInt(1));
					u.setFirstName(rs.getString(2));
					u.setLastName(rs.getString(3));
					u.setMobileNumber(rs.getString(4));
					u.setAddress(rs.getString(5));
					u.setEmail(rs.getString(6));
					u.setPassword(rs.getString(7));
					u.setRegDate(rs.getString(8));					
					list.add(u);			
				   }		   
				} catch (Exception e) {
					e.printStackTrace();
				}		
				return list;
		  	}
	
}