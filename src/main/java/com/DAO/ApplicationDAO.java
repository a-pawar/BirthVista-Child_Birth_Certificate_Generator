package com.DAO;

import java.util.List;

import com.entity.Application;
import com.entity.User;

public interface ApplicationDAO {
	
	public boolean addApplication(Application app);
	
	
	public List<Application> getAllApp(String email);
	
	public List<Application> getViewAllApp(int id);
	
	public List<Application> getAllCertificate(String email);
	
	public List<Application> getViewCertificateDtls(int id);
	
	public List<Application> getNewApplication();
	
	public List<Application> getAcceptApplication();
	
	public List<Application> getRejectApplication();
	
	public List<Application> getAdAllApplication();
	
	public List<Application> getViewApplicationDtls(int id);
	
	public boolean updateApplication(Application ap);

}
