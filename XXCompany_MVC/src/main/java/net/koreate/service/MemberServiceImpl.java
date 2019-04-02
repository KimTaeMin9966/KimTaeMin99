package net.koreate.service;

import javax.inject.Inject;

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
		String password1 = vo.getPassword1();
		String password2 = vo.getPassword2();
		
		if (password1.equals(password2)) {
			vo.setPassword(password1);
			dao.registerPostMethod(vo);
			return true;
		} else {
			return false;
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

}
