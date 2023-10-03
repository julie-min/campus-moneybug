package com.multi.moneybug.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerDAO {
	
	@Autowired
	SqlSessionTemplate my;

	public int insertManager(ManagerDTO managerDTO) {
		return my.insert("manager.insertManager", managerDTO);
	}

	public String managerLogin(ManagerDTO managerDTO) {
		String getPw = my.selectOne("manager.managerLogin", managerDTO);
		// DB에 저장된 인코딩 password 반환
		if(getPw != null) {
			return getPw;
		}
		return "null";
	}

}
