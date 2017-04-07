package diary.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import diary.service.*;

@Controller
@RequestMapping("/diary")
public class DiaryController {
	@Autowired
	DiaryService ds;
	
	// ���̾ ����
	@RequestMapping("")
	public ModelAndView diary(){
		ModelAndView mav = new ModelAndView("/diary/diary.jsp");
		return mav;
	}
}
