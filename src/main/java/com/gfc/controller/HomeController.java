package com.gfc.controller;

import java.util.ArrayList;





import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gfc.beans.SystemInfo;

@Controller
public class HomeController 
{
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomePage(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/gspform", method = RequestMethod.GET)
	public String init(Model model) {
		return "gspform";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("sys") SystemInfo sys) {
		// write code to save sys object
		// here, we are displaying sys object to prove sys has data
		System.out.println(sys.getSysName() + " " + sys.getSysName() );
		// return new ModelAndView("empform","command",emp);//will display object data
		return new ModelAndView("redirect:/viewgsplist");// will redirect to viewemp request mapping
	}

	@RequestMapping(value = "/viewgsplist", method = RequestMethod.GET)
	public ModelAndView viewemp() {
		// write the code to get all employees from DAO
		// here, we are writing manual code of list for easy understanding
		List<SystemInfo> list = new ArrayList<SystemInfo>();
		list.add(new SystemInfo("v1.0", "ABC", null));
		list.add(new SystemInfo("v1.2", "PQR", null));
		list.add( new SystemInfo("v1.3", "DEF", null)); 
		

		return new ModelAndView("viewgsplist", "list", list);
		
	} 
	@RequestMapping(value = "/systeminfo", method = RequestMethod.GET)
	
		public String overview(Model model)
		{
			return "systeminfo";
		}
	}

