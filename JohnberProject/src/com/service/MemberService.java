package com.service;

import com.dao.MemberDAO;

public class MemberService {
	private MemberDAO dao = null;
	
	public MemberService() {
		super();
		dao = new MemberDAO();
	}
}
