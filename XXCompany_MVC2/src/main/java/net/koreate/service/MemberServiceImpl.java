package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import net.koreate.dao.MemberDao;
import net.koreate.vo.AuthVo;
import net.koreate.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao dao;
	
	@Override
	public MemberVo joinIdCheck(String userid) {
		return dao.joinIdCheck(userid);
	}

	@Override
	public boolean join(MemberVo vo, PasswordEncoder passwordEncoder) {
		String userid = vo.getUserid();
		MemberVo join = joinIdCheck(userid);
		List<AuthVo> auths = vo.getAuthList();
		
		if (auths != null) auths.add(new AuthVo(userid, "ROLE_USER"));
		
		String encodePassword = passwordEncoder.encode(vo.getUserpw());
		vo.setUserpw(encodePassword);
		
		if (join == null) {
			dao.join(vo);
			for (AuthVo auth : auths) dao.joinToAuth(auth);
			return true;
		} else {
			dao.memberUpdate(vo);
			for (AuthVo auth : auths) dao.memberUpdateToAuth(auth);
			return true;
		}
	}

	@Override
	public MemberVo getProfilesByUserId(String userid) {
		return dao.getProfilesByUserId(userid);
	}
	
	@Override
	public List<MemberVo> getMemberLists() {
		return dao.getMemberLists();
	}
	
	@Override
	public void authoritySave(MemberVo vo) {
		dao.authoritySave(vo);
	}
	
	@Override
	public MemberVo getUserInfoById(int userid) {
		return dao.getUserInfoById(userid);
	}
	
	@Override
	public void memberDeleteById(int userid) {
		dao.memberDeleteById(userid);
	}
	
	@Override
	public String getUserAuthByUserid(String userid) {
		return dao.getUserAuthByUserid(userid);
	}
	
}
