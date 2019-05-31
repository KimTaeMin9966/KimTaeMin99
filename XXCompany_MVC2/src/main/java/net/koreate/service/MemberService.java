package net.koreate.service;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;

import net.koreate.vo.MemberVo;

public interface MemberService {

	MemberVo joinIdCheck(String userid);
	boolean join(MemberVo vo, PasswordEncoder passwordEncoder);
	MemberVo getProfilesByUserId(String userid);
	List<MemberVo> getMemberLists();
	void authoritySave(MemberVo vo);
	MemberVo getUserInfoById(int userid);
	void memberDeleteById(int userid);
	String getUserAuthByUserid(String userid);

}
