package cn.lxy.po;

import java.util.HashSet;
import java.util.Set;

/**
 * <p>Title:Teacher</p>
 * <p>Description:��ʦʵ�� </p>
 * @author ������
 *		2017��10��22��
 *		����11:25:48
 */
public class Teacher {
	private Integer id;//��ʦ��� ����
	private String name;//��ʦ����
	private String username;//��ʦ�û���
	private String password;//����
	private Character sex;//�Ա�
	private String subject;//��Ŀ
	private String school;//��ҵԺУ
	private String teacthage;//����
	private Character tel;//�ֻ���
	private String email;//����
	private String head;//ͷ���ַ
	private String fms;//
	private String streamid;//������
	//�ڽ�ʦ�����ʾֱ���γ̣�һ����ʦӵ�ж��ֱ���γ�
	private Set<Course> setCourse = new HashSet<Course>();
	//�ڽ�ʦ�����ʾ���⣬һ����ʦӵ�ж������
	private Set<Exam> setExam = new HashSet<Exam>();
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Character getSex() {
		return sex;
	}
	public void setSex(Character sex) {
		this.sex = sex;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getTeacthage() {
		return teacthage;
	}
	public void setTeacthage(String teacthage) {
		this.teacthage = teacthage;
	}
	public Character getTel() {
		return tel;
	}
	public void setTel(Character tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getFms() {
		return fms;
	}
	public void setFms(String fms) {
		this.fms = fms;
	}
	public String getStreamid() {
		return streamid;
	}
	public void setStreamid(String streamid) {
		this.streamid = streamid;
	}
	public Set<Course> getSetCourse() {
		return setCourse;
	}
	public void setSetCourse(Set<Course> setCourse) {
		this.setCourse = setCourse;
	}
	public Set<Exam> getSetExam() {
		return setExam;
	}
	public void setSetExam(Set<Exam> setExam) {
		this.setExam = setExam;
	}	
	
}