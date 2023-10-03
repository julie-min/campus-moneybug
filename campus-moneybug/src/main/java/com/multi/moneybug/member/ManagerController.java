package com.multi.moneybug.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {

	@Autowired
	ManagerService managerService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	// 관리자 등록
	@RequestMapping(value="/member/newManagerInsert", method=RequestMethod.POST)
	public String managerInsert(ManagerDTO managerDTO) {
		managerService.managerInsert(managerDTO);
		return "product/shopmanager";
	}
	
	// 관리자 로그인
	@RequestMapping(value="/member/ManagerLogin", method=RequestMethod.POST)
	public String managerLogin(ManagerDTO managerDTO, Model model) {
		boolean managerResult = managerService.managerLogin(managerDTO);
		if(managerResult) {
			return "product/shopmanager";
		} else {
			model.addAttribute("managerResultMessage", "관리자 로그인 비밀번호 불일치!");
			return "forward:/member/newManagerLoginSecurity.jsp";
		}
	}
	
	
}
