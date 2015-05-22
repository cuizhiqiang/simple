package com.kdubb.springboot.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

import com.kdubb.springboot.model.Student;

public interface IStudentDao extends Repository<Student, String> {

	public Student findOne(String id);

	public void delete(String id);

	//@Query(value="SELECT * FROM student", nativeQuery = true)
	public List<Student> findAll();

	 //@Query(value="SELECT * FROM Student s where s.zhuanyemingcheng = ?1" ,nativeQuery = true)
	public List<Student> findByZhuanyefangxiang(String majorname);

}
