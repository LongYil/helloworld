package cn.lxy.po;

import org.springframework.stereotype.Component;

/**
 * <p>Title:User</p>
 * <p>Description: </p>
 * @author ������
 *		2017��10��22��
 *		����11:25:06
 */
@Component(value="user")
public class User {
	
	private Integer uid;
	private String username;
	private String address;
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
