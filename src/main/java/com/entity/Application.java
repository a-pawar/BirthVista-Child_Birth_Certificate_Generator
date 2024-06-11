package com.entity;

public class Application {
	
	@Override
	public String toString() {
		return "Application [id=" + id + ", Email=" + Email + ", ApplicationID=" + ApplicationID + ", DateofBirth="
				+ DateofBirth + ", Gender=" + Gender + ", FullName=" + FullName + ", PlaceofBirth=" + PlaceofBirth
				+ ", NameofFather=" + NameofFather + ", PermanentAdd=" + PermanentAdd + ", PostalAdd=" + PostalAdd
				+ ", MobileNumber=" + MobileNumber + ", EmailId=" + EmailId + ", Dateofapply=" + Dateofapply
				+ ", Remark=" + Remark + ", Status=" + Status + ", UpdationDate=" + UpdationDate + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public int getApplicationID() {
		return ApplicationID;
	}

	public void setApplicationID(int applicationID) {
		ApplicationID = applicationID;
	}

	public String getDateofBirth() {
		return DateofBirth;
	}

	public void setDateofBirth(String dateofBirth) {
		DateofBirth = dateofBirth;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public String getPlaceofBirth() {
		return PlaceofBirth;
	}

	public void setPlaceofBirth(String placeofBirth) {
		PlaceofBirth = placeofBirth;
	}

	public String getNameofFather() {
		return NameofFather;
	}

	public void setNameofFather(String nameofFather) {
		NameofFather = nameofFather;
	}

	public String getPermanentAdd() {
		return PermanentAdd;
	}

	public void setPermanentAdd(String permanentAdd) {
		PermanentAdd = permanentAdd;
	}

	public String getPostalAdd() {
		return PostalAdd;
	}

	public void setPostalAdd(String postalAdd) {
		PostalAdd = postalAdd;
	}

	public String getMobileNumber() {
		return MobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		MobileNumber = mobileNumber;
	}

	public String getEmailId() {
		return EmailId;
	}

	public void setEmailId(String emailId) {
		EmailId = emailId;
	}

	public String getDateofapply() {
		return Dateofapply;
	}

	public void setDateofapply(String dateofapply) {
		Dateofapply = dateofapply;
	}

	public String getRemark() {
		return Remark;
	}

	public void setRemark(String remark) {
		Remark = remark;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getUpdationDate() {
		return UpdationDate;
	}

	public void setUpdationDate(String updationDate) {
		UpdationDate = updationDate;
	}

	private int id;
	private String Email;
	private int ApplicationID;
	private String DateofBirth;
	private String Gender;
	private String FullName;
	private String PlaceofBirth;
	private String NameofFather;
	private String PermanentAdd;
	private String PostalAdd;
	private String MobileNumber;
	private String EmailId;
	private String Dateofapply;
	private String Remark;
	private String Status;
	private String UpdationDate;
	
	public Application() {
		super();		
	}

	public Application(String email, int applicationID, String dateofBirth, String gender, String fullName,
			String placeofBirth, String nameofFather, String permanentAdd, String postalAdd, String mobileNumber,
			String emailId, String dateofapply, String remark, String status, String updationDate) {
		super();
		Email = email;
		ApplicationID = applicationID;
		DateofBirth = dateofBirth;
		Gender = gender;
		FullName = fullName;
		PlaceofBirth = placeofBirth;
		NameofFather = nameofFather;
		PermanentAdd = permanentAdd;
		PostalAdd = postalAdd;
		MobileNumber = mobileNumber;
		EmailId = emailId;
		Dateofapply = dateofapply;
		Remark = remark;
		Status = status;
		UpdationDate = updationDate;
	}
	
	
}