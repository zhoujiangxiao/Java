package cn.com.project.system.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**

 * @Title: User
 
 * @Package cn.com.project.test.model
 
 * @Description: 
 
 * @author HeDw   

 * @date 2015-5-30 下午12:32:30

 */

public class User {

	private Integer id;
	
	private String loginName;
	
	private String password;
	
	private String userName;
	
	private String userCode;
	
	private String sex;
	
	private String nationality;
	
	private Date birthDate;
	
	private String englishName;
	
	private String email;
	
	private String phoneNumber;
	
	private String phoneNumberOther;
	
	private String qqNumber;
	
	private Date createDate;
	
	private Date finallyDate;
	
	public User(){};
	
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getEnglishName() {
		return englishName;
	}

	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPhoneNumberOther() {
		return phoneNumberOther;
	}

	public void setPhoneNumberOther(String phoneNumberOther) {
		this.phoneNumberOther = phoneNumberOther;
	}

	public String getQqNumber() {
		return qqNumber;
	}

	public void setQqNumber(String qqNumber) {
		this.qqNumber = qqNumber;
	}

	public String getCreateDate() throws ParseException {
		if(createDate != null){
			return simpleDateFormat.format(createDate);
		}else{
			return null;
		}
	}

	public void setCreateDate(String createDate) throws ParseException {
		if(createDate != null){
			this.createDate = simpleDateFormat.parse(createDate);
		}else{
			Date date = new Date();
			this.createDate = simpleDateFormat.parse(simpleDateFormat.format(date));
		}
	}

	public Date getFinallyDate() {
		return finallyDate;
	}

	public void setFinallyDate(Date finallyDate) {
		this.finallyDate = finallyDate;
	}

	public String toString(){
		return "User[id="+(id==null?"":id)+" , " +
				"loginName="+(loginName==null?"":loginName)+" , " +
				"password="+(password==null?"":password)+"]";
	}
}
