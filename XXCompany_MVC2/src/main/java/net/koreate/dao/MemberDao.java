package net.koreate.dao;

import java.util.List;

import net.koreate.vo.AuthVo;
import net.koreate.vo.MemberVo;

public interface MemberDao {

	MemberVo joinIdCheck(String userid);
	void join(MemberVo vo);
	void joinToAuth(AuthVo auth);
	void memberUpdate(MemberVo vo);
	void memberUpdateToAuth(AuthVo auth);
	MemberVo getProfilesByUserId(String userid);
	List<MemberVo> getMemberLists();
	void authoritySave(MemberVo vo);
	MemberVo getUserInfoById(int userid);
	void memberDeleteById(int userid);
	String getUserAuthByUserid(String userid);
	MemberVo read(String userid);
	MemberVo isJoin(String userid);
	
}
