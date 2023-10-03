package com.multi.moneybug.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class ManagerService {
	
	@Autowired
	ManagerDAO managerDAO;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	public void managerInsert(ManagerDTO managerDTO) {
		managerDTO.setManagerPassword(passwordEncoder.encode(managerDTO.getManagerPassword()));
		managerDAO.insertManager(managerDTO);
	}

	public boolean managerLogin(ManagerDTO managerDTO) {
		String getPw = managerDAO.managerLogin(managerDTO);
		if(passwordEncoder.matches(managerDTO.getManagerPassword(), getPw)) {
			return true;
		}
		return false;
	}

}
