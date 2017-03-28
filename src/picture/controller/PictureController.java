package picture.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import picture.service.*;

@Controller
@RequestMapping("/picture")
public class PictureController {
	@Autowired
	PictureService ps;
	
	// picture
	@RequestMapping("")
	@ResponseBody
	public ModelAndView picture(){
		ModelAndView mav = new ModelAndView("/picture/picture.jsp");
		return mav;
	}
}
