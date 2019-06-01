package net.koreate.service;

import java.util.ArrayList;
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

	private MemberVo joinIdCheckByVo(MemberVo vo) {
		return dao.isJoin(vo.getUserid());
	}
	
	private List<AuthVo> addAuth(MemberVo vo) {
		MemberVo isJoin = joinIdCheckByVo(vo);
		List<AuthVo> auths = new ArrayList<>();
		
		if (isJoin == null) auths.add(new AuthVo(vo.getUserid(), "ROLE_USER"));
		
		return auths;
	}
	
	@Override
	public boolean join(MemberVo vo, PasswordEncoder passwordEncoder) {
		MemberVo join = joinIdCheckByVo(vo);
		
		List<AuthVo> auths = addAuth(vo);
		vo.setAuthList(auths);
		
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
