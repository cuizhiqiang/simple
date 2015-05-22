package com.kdubb.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="major", catalog="test")
public class Major {
	@Id
	@GenericGenerator(name="system-uuid", strategy="uuid")
	@GeneratedValue(generator="system-uuid")
	@Column(name = "id", insertable = true, updatable = true)
	private String id;

	@Column(name="name")
	private String name;
	@Column(name="teacher")
	private String teacher;
	@Column(name="content")
	private String content;
	private int studentnum;
	
	
	public Major(String id, String name, String teacher, String content) {
		super();
		this.id = id;
		this.name = name;
		this.teacher = teacher;
		this.content = content;
	}
	public Major(){}
	public String getId() { 
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getteacher() {
		return teacher;
	}
	public void setteacher(String teacher) {
		this.teacher = teacher;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(int studentnum) {
		this.studentnum = studentnum;
	}
	
}
