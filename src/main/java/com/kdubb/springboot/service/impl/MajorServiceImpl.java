package com.kdubb.springboot.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kdubb.springboot.dao.IMajorDao;
import com.kdubb.springboot.dao.IStudentDao;
import com.kdubb.springboot.model.Major;
import com.kdubb.springboot.model.Student;
import com.kdubb.springboot.service.IMajorService;
@Transactional(readOnly=true)
@Service
public class MajorServiceImpl implements IMajorService {
	

	@Autowired
	private IMajorDao majordao;
	@Autowired
	private IStudentDao studentdao;
	@Override
	public List<Major> findAll() {
		// TODO Auto-generated method stub
		return majordao.findAll();
	}
	@Override
	public List<Student> findStudentByMajor(String id) {
		// TODO Auto-generated method stub
		List<Major> list1=majordao.findById(id);
		String name=list1.get(0).getName();
		List<Student> list=studentdao.findByZhuanyefangxiang(name);
		return list;
	}

}
