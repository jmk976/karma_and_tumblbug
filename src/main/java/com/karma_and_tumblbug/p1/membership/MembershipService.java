package com.karma_and_tumblbug.p1.membership;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MembershipService {

	@Autowired
	private MembershipDAO membershipDAO;
	
	public MembershipDTO login(MembershipDTO membershipDTO) throws Exception{
		System.out.println("ser S");
		membershipDTO = membershipDAO.login(membershipDTO);
		System.out.println("ser F");
		return membershipDTO;
	}
}
