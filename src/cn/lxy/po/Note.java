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
	private Integer course_id;//�γ�id
	private Integer student_id;//ѧ��id
	private String time;//��¼ʱ��
	private String content;//��¼����
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public Integer getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
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

}
