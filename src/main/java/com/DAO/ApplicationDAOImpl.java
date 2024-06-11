package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Application;
import com.entity.User;



public class ApplicationDAOImpl {
	private Connection conn;

	public ApplicationDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	//Add Application Source code here
  	public boolean addApplication(Application app) {
  		boolean f=false;
  		
  		try {
  			String sql="insert into application(Email,ApplicationID,DateofBirth,Gender,FullName,PlaceofBirth,NameofFather,PermanentAdd,PostalAdd,MobileNumber,EmailId,Status) values(?,?,?,?,?,?,?,?,?,?,?,?)";
  			PreparedStatement ps=conn.prepareStatement(sql);
  			ps.setString(1, app.getEmail().trim());
  			ps.setInt(2, app.getApplicationID());
  			ps.setString(3, app.getDateofBirth());
  			ps.setString(4, app.getGender());
  			ps.setString(5, app.getFullName());
  			ps.setString(6, app.getPlaceofBirth());
  			ps.setString(7, app.getNameofFather());
  			ps.setString(8, app.getPermanentAdd());
  			ps.setString(9, app.getPostalAdd());
  			ps.setString(10, app.getMobileNumber());
  			ps.setString(11, app.getEmailId());
  			ps.setString(12, "Pending"); 			
  			
  			int i=ps.executeUpdate();
  			
  			if(i==1) {
  				f=true;
  			}			
  		} catch (Exception e) {
  			e.printStackTrace();
  		}
  		return f;
  	}
  	
    //View Application code here
  	public List<Application> getAllApp(String email) {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application where Email='"+email+"'";
		   //System.out.print(email);
		   PreparedStatement ps = conn.prepareStatement(sql);
		  // System.out.println(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
    //View All Application Details code here
  	public List<Application> getViewAllApp(int id) {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="SELECT application.*,user.FirstName,user.LastName,user.MobileNumber,user.Address from application inner join user on application.Email=user.Email where application.id="+id+"";
		   
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
     //View Certificate code here
  	public List<Application> getAllCertificate(String email){  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application where Email='"+email+"' and Status='Verified'";
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
    //View All Certificate Details Details code here
  	public List<Application> getViewCertificateDtls(int id) {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="SELECT application.*,user.FirstName,user.LastName,user.MobileNumber,user.Address from application inner join user on application.Email=user.Email where application.id="+id+" and application.Status='Verified'";
		   
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
  	
    //View New Application code here
  	public List<Application> getNewApplication() {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application where Status='Pending'";
		   //System.out.print(email);
		   PreparedStatement ps = conn.prepareStatement(sql);
		  // System.out.println(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
  //View New Application code here
  	public List<Application> getAcceptApplication() {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application where Status='Verified'";
		   //System.out.print(email);
		   PreparedStatement ps = conn.prepareStatement(sql);
		  // System.out.println(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
  //View Reject Application code here
  	public List<Application> getRejectApplication() {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application where Status='Rejected'";
		   //System.out.print(email);
		   PreparedStatement ps = conn.prepareStatement(sql);
		  // System.out.println(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
  //View All Application code here
  	public List<Application> getAdAllApplication() {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="select * from application";
		   //System.out.print(email);
		   PreparedStatement ps = conn.prepareStatement(sql);
		  // System.out.println(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
  //View All Application Details Details code here
  	public List<Application> getViewApplicationDtls(int id) {  		
  		List<Application> list = new ArrayList<Application>();
  		Application b=null;
		
	    try {        
		   String sql="SELECT application.*,user.FirstName,user.LastName,user.MobileNumber,user.Address from application inner join user on application.Email=user.Email where application.id="+id+"";
		   
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ResultSet rs = ps.executeQuery();
		   
		   while(rs.next()) {
			   
			b=new Application();
			b.setId(rs.getInt(1));
			b.setEmail(rs.getString(2));
			b.setApplicationID(rs.getInt(3));
			b.setDateofBirth(rs.getString(4));
			b.setGender(rs.getString(5));
			b.setFullName(rs.getString(6));
			b.setPlaceofBirth(rs.getString(7));
			b.setNameofFather(rs.getString(8));
			b.setPermanentAdd(rs.getString(9));
			b.setPostalAdd(rs.getString(10));
			b.setMobileNumber(rs.getString(11));
			b.setEmailId(rs.getString(12));
			b.setDateofapply(rs.getString(13));			
			b.setRemark(rs.getString(14));
			b.setStatus(rs.getString(15));
			b.setUpdationDate(rs.getString(16));
			list.add(b);			
		   }		   
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return list;
  	}
  	
        // Update Remark and Status code here
 		public boolean updateApplication(Application ap) {
 			boolean f=false;
 			 try {
 				String sql= "update application set Remark=?, Status=? where id=?";
 				PreparedStatement ps = conn.prepareStatement(sql);
 				ps.setString(1, ap.getRemark());
 				ps.setString(2, ap.getStatus());
 				ps.setInt(3, ap.getId());
 				
 				int i=ps.executeUpdate();
 				if(i==1) {
 					f=true;
 				}				
 			} catch (Exception e) {
 	          e.printStackTrace();
 			}
 			return f;
 		}
  	
}