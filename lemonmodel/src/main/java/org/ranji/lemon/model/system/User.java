package org.ranji.lemon.model.system;

import java.io.Serializable;

/**
 * User 用户
 * @author lanbin
 * @date 2017-02-17
 */
public class User implements Serializable {

	private static final long serialVersionUID = -7866077717886165234L;
	private int id;
	private String userName;
	private String userPass;
	private String email;
	private int enabled;
	private int adminFlag;// 管理员标记，用于管理员登录
	private Integer empId;// 对应人员的id

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public int getAdminFlag() {
		return adminFlag;
	}

	public void setAdminFlag(int adminFlag) {
		this.adminFlag = adminFlag;
	}

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userPass=" + userPass + ", email=" + email
				+ ", enabled=" + enabled + ", adminFlag=" + adminFlag + ", empId=" + empId + "]";
	}

}
