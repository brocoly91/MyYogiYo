package com.yogiyo.demo.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yogiyo.demo.service.ClientService;
import com.yogiyo.demo.vo.ClientVo;
import com.yogiyo.demo.vo.GrpMenuVo;
import com.yogiyo.demo.vo.RestaurantVo;


@Controller
public class ClientController {
	
	@Autowired
	ClientService clientService;
	
	//온라인 입점신청 화면호출 get
	@RequestMapping(value = "/admin/cutomInfo", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		System.out.println("admin/cutomInfo");
		return "admin/cutomInfo";
	}
	
	@RequestMapping(value = "/apply.do", method = RequestMethod.POST)
	public String aplly(Model model,ClientVo cvo, RestaurantVo rvo) throws Exception {
		System.out.println("asdasd===" + cvo.getClientName());
		clientService.insertCvo(cvo);
		clientService.insertRvo(rvo);
		
		return "admin/cutomInfo";
	}
	
	@RequestMapping(value = "/insertGropMenu.do", method = RequestMethod.POST)
	public @ResponseBody String insertGropMenu(Model model,GrpMenuVo vo) throws Exception {
		System.out.println("insertGropMenu들어옴");
		
		String maxGrpMenuNo = clientService.maxGrpMenuNo();
		System.out.println("maxGrpMenuNo===" + maxGrpMenuNo);
		vo.setGrpMenuNo(maxGrpMenuNo);
		String aa = "asd";
		clientService.insertGropMenu(vo);
		System.out.println("insertGropMenu들어옴" + maxGrpMenuNo);
		model.addAttribute("maxGrpMenuNo",aa);
//		return "../admin/menuInfo";
		return "menuInfo";
	}
	
//	@RequestMapping(value = "/insertGropMenu.do", method = RequestMethod.POST)
//	public @ResponseBody ModelAndView insertGropMenu(Model model,GrpMenuVo vo) throws Exception {
//		System.out.println("insertGropMenu들어옴");
//		ModelAndView mv = new ModelAndView("/admin/menuInfo");
//		String maxGrpMenuNo = clientService.maxGrpMenuNo();
//		System.out.println("maxGrpMenuNo===" + maxGrpMenuNo);
//		vo.setGrpMenuNo(maxGrpMenuNo);
////		String aa = "asd";
//		clientService.insertGropMenu(vo);
//		System.out.println("insertGropMenu들어옴" + maxGrpMenuNo);
////		model.addAttribute("maxGrpMenuNo",aa);
//		mv.addObject("maxGrpMenuNo", maxGrpMenuNo);
////		mv.setViewName("admin/menuInfo");
//		return mv;
//	}	
}
