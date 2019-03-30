package net.koreate.service;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberService {

	boolean registerPostMethod(MemberVo vo); // Since - 2019/03/27, Content - 회원가입을 할때 호출

	MemberVo Login(LoginDto dto); // Since - 2019/03/27, Content - 로그인을 할때 호출

	Object profilesGetMethod(String username); // Since - 2019/03/27, Content - 자기자신의 정보를 볼때 호출

}
