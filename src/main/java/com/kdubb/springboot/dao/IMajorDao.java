package com.kdubb.springboot.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

import com.kdubb.springboot.model.Major;
import com.kdubb.springboot.model.Student;

public interface IMajorDao extends Repository<Major, String> {
	
	public List<Major> findAll();
	
	//@Query(value="SELECT * FROM major  where id = ?1", nativeQuery = true)
	public List<Major> findById(String id); 
	
	

}
