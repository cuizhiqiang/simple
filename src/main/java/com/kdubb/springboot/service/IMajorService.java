package com.kdubb.springboot.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.kdubb.springboot.model.Major;
import com.kdubb.springboot.model.Student;

public interface IMajorService {
	public List<Major> findAll();
	
	public List<Student> findStudentByMajor(String id);
	


}
