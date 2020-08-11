package com.yogiyo.demo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yogiyo.demo.service.ClientService;
import com.yogiyo.demo.service.LoginService;

 

@Controller
public class mainController {
	@Autowired
	ClientService clientService;
	@Autowired
    LoginService loginService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		String maxGrpMenuNo = clientService.maxGrpMenuNo();
		
		model.addAttribute("serverTime", maxGrpMenuNo );
		
		return "home";
	}
//	
//	@RequestMapping(value = "/admin/cutomInfo", method = RequestMethod.GET)
//	public String admin(Locale locale, Model model) {
//		return "admin/cutomInfo";
//	}
	
	@RequestMapping(value = "/admin/menuInfo", method = RequestMethod.GET)
	public String asd(Locale locale, Model model) {
		return "admin/menuInfo";
	}
	
	@RequestMapping(value = "/admin/create", method = RequestMethod.GET)
	public String create(Locale locale, Model model) {
		return "admin/create";
	}
}