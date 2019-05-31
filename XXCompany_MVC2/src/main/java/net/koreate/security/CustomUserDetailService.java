package net.koreate.security;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import net.koreate.dao.CustomUser;
import net.koreate.dao.MemberDao;
import net.koreate.vo.MemberVo;

public class CustomUserDetailService implements UserDetailsService {
	private static final Logger logger = LoggerFactory.getLogger(CustomUserDetailService.class);
	
	@Inject
	private MemberDao dao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		logger.warn("Load User By UserName : " + username);
		MemberVo vo = dao.read(username);
		logger.warn("queried by memberDao : " + vo);
		return vo == null ? null : new CustomUser(vo);
	}

}
