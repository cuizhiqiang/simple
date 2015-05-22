package com.kdubb.springboot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kdubb.springboot.model.Major;
import com.kdubb.springboot.model.Student;
import com.kdubb.springboot.service.IMajorService;
import com.kdubb.springboot.service.IStudentService;
@Controller
public class MajorController {
	@Autowired
	private IMajorService majorservice;
	@RequestMapping(value="/major",method=RequestMethod.GET)
	 public ModelAndView showallmajor()
	{
		List<Major> list=new ArrayList<Major>();
		list = majorservice.findAll();
		for(int i=0;i<list.size();i++)
		{
			String id=String.valueOf(++i);
			int num=majorservice.findStudentByMajor(id).size();
			System.out.println(num);
			list.get(--i).setStudentnum(num);
		}
		ModelAndView smodel = new ModelAndView("majortables");
		smodel.addObject("list", list);
		return smodel; 
	}
	@RequestMapping(value="/{id}/student",method=RequestMethod.GET)
	 public ModelAndView showStudentByMajor(@PathVariable("id") String id)
	{
		System.out.print(id);
		List<Student> list = majorservice.findStudentByMajor(id);
		
		System.out.println(list.size());
		ModelAndView model = new ModelAndView("tables");
		model.addObject("list", list);
		return model; 
	}

}
