package global.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KhMemberController {

	private static final Logger logger 
			= LoggerFactory.getLogger(KhMemberController.class);

	@RequestMapping(value = "kakao.do", method={RequestMethod.GET, RequestMethod.POST})
	public String login(Model model) {
		logger.info("헬로우 컨트롤러 login");


		return "kakao.tiles";
	}

}
