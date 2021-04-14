package com.karma_and_tumblbug.p1.membership;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MembershipService {

	@Autowired
	private MembershipDAO membershipDAO;
	
	public MembershipDTO login(MembershipDTO membershipDTO) throws Exception{
		membershipDTO = membershipDAO.login(membershipDTO);
		return membershipDTO;
	}
	public int join(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.join(membershipDTO);
	}
	public int update(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.update(membershipDTO);
	}
	public int delete(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.delete(membershipDTO);
	}
}
