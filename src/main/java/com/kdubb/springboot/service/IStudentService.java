package com.kdubb.springboot.service;

import java.util.List;





import com.kdubb.springboot.model.Student;

public interface IStudentService {

	public Student findOne(String id);
	
	public void delete(String id);
	
	
	public List<Student> findAll();

}
