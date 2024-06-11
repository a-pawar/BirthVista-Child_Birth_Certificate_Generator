package com.DAO;

import java.util.List;

import com.entity.Application;
import com.entity.User;

public interface UserDAO {
	
    public boolean userRegister(User us);
    
    public User login(String email, String password);
    
    //insert admin login	
 	public User loginAdmin(String e,String p);
 	
 	//Edit User Source Code here
 	public User getUserById(int id);
 	
 	//Update Edit User Source Code Here
 	public boolean updateEditUser(User u);
 	
 	public List<User> getViewAllUser(String email);

}