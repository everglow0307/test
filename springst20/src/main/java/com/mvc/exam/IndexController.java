package com.mvc.exam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller // 사용자의 명령을 입력받아 mapping되는 메소드를 실행하는 클래스- mapping value가 겹치면 안된다. 
public class IndexController {

	private static final Logger logger = LoggerFactory.getLogger(IndexController.class); //logger log출력
	//시간이나 클래스명을 같이 로그에 출력해줌. 
	
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public ModelAndView index(ModelAndView modelAndView) {
		// ModelAndView 데이터, view 위치를 저장하는 객체
		// Model 데이터만 저장하는 객체
		
		modelAndView.addObject("hi");
		modelAndView.addObject("myMessage","spring 첫 테스트"); //setAttribute와 비슷한 개념
		modelAndView.setViewName("layout");
		
		return modelAndView;
		
	}
}
