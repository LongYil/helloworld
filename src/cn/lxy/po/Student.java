package cn.lxy.po;

/**
 * <p>Title:Student</p>
 * <p>Description: ѧ��</p>
 * @author ������
 *		2017��10��23��
 *		����12:08:11
 */
public class Student {
	private Integer id;//���
	private String username;//�û���
	private String name;//ѧ������
	private String password;//����
	private Character tel;//�ֻ���
	private String head;//ͷ���ַ
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Character getTel() {
		return tel;
	}
	public void setTel(Character tel) {
		this.tel = tel;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	
}
