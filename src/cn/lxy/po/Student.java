package cn.lxy.po;

import java.util.HashSet;
import java.util.Set;

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
	
	//��ѧ�������ʾ��ӵ�еıʼǣ�һ��ѧ��ӵ�ж���ʼ�
	private Set<Note> setNote = new HashSet<Note>();
	//��ѧ�������ʾ��ӵ�е����ۣ�һ��ѧ������ӵ�ж������
	private Set<Discuss> setDiscuss = new HashSet<Discuss>();
	
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
	public Set<Note> getSetNote() {
		return setNote;
	}
	public void setSetNote(Set<Note> setNote) {
		this.setNote = setNote;
	}
	public Set<Discuss> getSetDiscuss() {
		return setDiscuss;
	}
	public void setSetDiscuss(Set<Discuss> setDiscuss) {
		this.setDiscuss = setDiscuss;
	}

	
}