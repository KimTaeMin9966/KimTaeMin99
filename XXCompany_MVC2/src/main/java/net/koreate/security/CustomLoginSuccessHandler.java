package net.koreate.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	private static final Logger logger = LoggerFactory.getLogger(CustomLoginSuccessHandler.class);
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
		logger.warn("Login Success");
		
		List<String> roleName = new ArrayList<>();
		authentication.getAuthorities().forEach(authority -> {
			roleName.add(authority.getAuthority());
		});
		
		logger.warn("ROLE NAMES : " + roleName);
		
		if (roleName.contains("ROLE_ADMIN")) {
			response.sendRedirect("/sample/admin");
			return;
		} else if (roleName.contains("ROLE_MEMBER")) {
			response.sendRedirect("/sample/member");
			return;
		}
		response.sendRedirect("/");
	}

}
