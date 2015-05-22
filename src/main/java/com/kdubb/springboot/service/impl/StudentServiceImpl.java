package com.kdubb.springboot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kdubb.springboot.dao.IStudentDao;
import com.kdubb.springboot.model.Student;
import com.kdubb.springboot.service.IStudentService;

@Transactional(readOnly=true)
@Service
public class StudentServiceImpl implements IStudentService{

	@Autowired
	private IStudentDao studentdao;

	public Student findOne(String id){
		return studentdao.findOne(id);
	}

	@Override
	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = false)
	public void delete(String id) {
		// TODO Auto-generated method stub
		studentdao.delete(id);	
	}
	
	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return studentdao.findAll();
	}

}


