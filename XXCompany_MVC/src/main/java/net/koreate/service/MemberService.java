package net.koreate.service;

import java.util.List;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberService {

	boolean registerPostMethod(MemberVo vo); // Since - 2019/03/27, Content - 회원가입을 할때 호출

	MemberVo Login(LoginDto dto); // Since - 2019/03/27, Content - 로그인을 할때 호출

	MemberVo profilesGetMethod(String username); // Since - 2019/03/27, Content - 자기자신의 정보를 볼때 호출

	void authoritySavePostMethod(MemberVo vo);

	List<MemberVo> membersGetMethod();

	MemberVo infoPostMethod(int userno);

	void deletePostMethod(int userno);

	MemberVo registerCheckPostMethod(String username);

	String getPasswordHashByDto(LoginDto dto);

}
