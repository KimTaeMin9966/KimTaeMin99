package net.koreate.controller;

import java.util.zip.DataFormatException;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class ExceptionAdvice {
	
	@ExceptionHandler(DataFormatException.class)
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	private ModelAndView Error400(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e);
		mav.setViewName("error/400");
		return mav;
	}
	
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	private ModelAndView Error500(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e);
		mav.setViewName("error/500");
		return mav;
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	private ModelAndView Error404(Exception e) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", e);
		mav.setViewName("error/404");
		return mav;
	}

}
