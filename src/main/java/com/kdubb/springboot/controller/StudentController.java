package com.kdubb.springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;






import com.kdubb.springboot.model.Student;
import com.kdubb.springboot.service.IStudentService;


@Controller
public class StudentController {
	
	@Autowired
	private IStudentService studentservice;

	
	 @RequestMapping(value="/student", method=RequestMethod.GET)
	 public ModelAndView index(Model model)
	 {
		List<Student> list=new ArrayList<Student>();
		list = studentservice.findAll();
		System.out.println(list.size());

		ModelAndView smodel = new ModelAndView("tables");
		smodel.addObject("list", list);
		return smodel;
	 }
	 @RequestMapping(value="/{studentid}/delete", method=RequestMethod.GET)
	 public String index2(@PathVariable("studentid")String studentid)
	 {
		 System.out.println(studentid);
		 studentservice.delete(studentid);
		 
			
		 return "redirect:/student";

	 }
	

	 @RequestMapping(value="/studentfind")
	 public @ResponseBody Student showStudentForm(@RequestParam(value = "id")String id)throws Exception
	{

		 Student student=new Student();
		 student=studentservice.findOne(id);
		 System.out.print(student);
		 return student;
		 
	}

}
