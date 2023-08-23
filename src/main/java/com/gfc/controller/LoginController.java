package com.gfc.controller;

import org.springframework.http.HttpEntity;



import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.gfc.beans.LoginBean;

@Controller
public class LoginController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init(Model model) {
		//model.addAttribute("msg", "Please Enter Your Login Details");
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST) 
	public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) 
	{
		
		System.out.println();
		if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null) 
		{
			
			if (loginBean.getUserName().equals("adminuser") && loginBean.getPassword().equals("Passw0rd@1234")) 
			{
				model.addAttribute("msg", loginBean.getUserName());
					
					//GAPI API */
				return "home"; 
			} else {
				model.addAttribute("error", "Invalid Username and Password");
				return "login";
			}
		} else 
		{ 
			model.addAttribute("error", "Please enter Details");
			return "login";
		}
	}
	
	
	
}