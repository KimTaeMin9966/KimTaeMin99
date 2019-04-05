package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import net.koreate.dao.MemberDao;
import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao dao;

	@Override
	public boolean registerPostMethod(MemberVo vo) { // Since - 2019/03/27, Content - 회원가입을 할때 호출
		// TODO Auto-generated method stub
		String username = vo.getUsername();
		MemberVo regBefor = dao.regBefor(username);
		
		String joindate = vo.getJoindate();
		String password = vo.getPassword1();

		final String hash = joindate + "/" + username + "/" + password;
		
		final String passwordHash = BCrypt.hashpw(hash, BCrypt.gensalt(15));
		vo.setPassword(passwordHash);
		
		if (regBefor == null) {
			dao.registerPostMethod(vo);
			return true;
		} else {
			dao.registerUpdatePostMethod(vo);
			return true;
		}
	}

	@Override
	public MemberVo Login(LoginDto dto) { // Since - 2019/03/27, Content - 로그인을 할때 호출
		// TODO Auto-generated method stub
		return dao.Login(dto);
	}

	@Override
	public MemberVo profilesGetMethod(String username) { // Since - 2019/03/27, Content - 자기자신의 정보를 볼때 호출
		// TODO Auto-generated method stub
		return dao.profilesGetMethod(username);
	}

	@Override
	public void authoritySavePostMethod(MemberVo vo) {
		// TODO Auto-generated method stub
		dao.authoritySavePostMethod(vo);
	}

	@Override
	public List<MemberVo> membersGetMethod() {
		// TODO Auto-generated method stub
		return dao.membersGetMethod();
	}

	@Override
	public MemberVo infoPostMethod(int userno) {
		// TODO Auto-generated method stub
		return dao.infoPostMethod(userno);
	}

	@Override
	public void deletePostMethod(int userno) {
		// TODO Auto-generated method stub
		dao.deletePostMethod(userno);
	}

	@Override
	public MemberVo registerCheckPostMethod(String username) {
		// TODO Auto-generated method stub
		return dao.registerCheckPostMethod(username);
	}

	@Override
	public String getPasswordHashByDto(LoginDto dto) {
		// TODO Auto-generated method stub
		return dao.getPasswordHashByDto(dto);
	}

}
