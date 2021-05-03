package com.karma_and_tumblbug.p1.membership;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karma_and_tumblbug.p1.profile.ProfileDTO;

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
	public int joinProfile(ProfileDTO profileDTO)throws Exception{
		return membershipDAO.joinProfile(profileDTO);
	}
	public int update(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.update(membershipDTO);
	}
	public int delete(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.delete(membershipDTO);
	}
	public MembershipDTO getIdCheck(MembershipDTO membershipDTO) throws Exception{
		return membershipDAO.getIdCheck(membershipDTO);
	}
}
