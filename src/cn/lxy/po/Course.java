package cn.lxy.po;

/**
 * <p>Title:Course</p>
 * <p>Description:�γ�ʵ�� </p>
 * @author ������
 *		2017��10��22��
 *		����11:58:31
 */
public class Course {
	private Integer id;//���
	private Integer teacher_id;//��ʦ���
	private String name;//�γ�����
	private String summary;//�γ̼��
	private String face;//����
	private String time;//��ʼʱ��
	private String address;//�γ̵�ַ
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(Integer teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
