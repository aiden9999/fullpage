package main.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import main.service.*;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	MainService ms;
	
	// ∏ﬁ¿Œ
	@RequestMapping("")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView("/main/main.jsp");
		return mav;
	}
}
