package cn.lxy.po;

/**
 * <p>Title:Note</p>
 * <p>Description:�ʼ�ʵ�� </p>
 * @author ������
 *		2017��10��23��
 *		����12:10:43
 */

public class Note {
	private Integer id;//���
	private String time;//��¼ʱ��
	private String content;//��¼����
	//�ڱʼ������ʾ�����γ̣�һ���ʼ�ֻ������һ���γ�
	private Course course;
	//�ڱʼ������ʾ����ѧ����һ���ʼ�ֻ������һ��ѧ��
	private Student student;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}

}
