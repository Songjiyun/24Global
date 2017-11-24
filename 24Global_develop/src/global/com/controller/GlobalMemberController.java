package global.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GlobalMemberController {

	private static final Logger logger 
			= LoggerFactory.getLogger(GlobalMemberController.class);

	@RequestMapping(value = "join.do", method={RequestMethod.GET, RequestMethod.POST})
	public String join(Model model) {
		logger.info("GlobalMemberController join");
		return "join.tiles";
	}

}
