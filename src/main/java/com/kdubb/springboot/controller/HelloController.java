package com.kdubb.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdubb.springboot.model.Student;
import com.kdubb.springboot.service.IStudentService;

@Controller
public class HelloController {
	
	@Autowired
	private IStudentService studentservice;
	@RequestMapping(value="/",method=RequestMethod.GET)
	 public ModelAndView showindex(Model model)
	{
		List<Student> list = studentservice.findAll();
		ModelAndView smodel = new ModelAndView("tables");
		smodel.addObject("list", list);
		return smodel; 
	}
	@RequestMapping(value="/test",method=RequestMethod.GET)
	 public ModelAndView showindex2(Model model)
	{
		System.out.println("test");
		ModelAndView smodel = new ModelAndView("hello");
		
		return smodel; 
	}
}