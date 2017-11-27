package global.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.com.model.MemberDto;
import global.com.service.GlobalMemberService;

@Controller
public class GlobalMemberController {

	private static final Logger logger 
			= LoggerFactory.getLogger(GlobalMemberController.class);
	
	@Autowired
	GlobalMemberService globalmemberservice;
	
	/**
	 * 회원가입 
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="checkId.do", produces="application/String; charset=utf-8", 
					method={RequestMethod.GET, RequestMethod.POST})
	public String checkId(MemberDto dto) throws Exception {
		logger.info("GlobalMemberController checkId");
		System.out.println("dto : " + dto.toString());
		MemberDto account = new MemberDto();
		account = null;
		account = globalmemberservice.checkId(dto);
		/*return "checkId";*/
		if(account == null) {
			return "okay";
		} else {
			return "reject";
		}
	}
	
	@RequestMapping(value = "join.do", method={RequestMethod.GET, RequestMethod.POST})
	public String join(Model model) throws Exception {
		logger.info("GlobalMemberController join");
		return "join.tiles";
	}
	
	@RequestMapping(value = "joinAf.do", method={RequestMethod.GET, RequestMethod.POST})
	public String joinAf(Model model) throws Exception{
		logger.info("GlobalMemberController joinAf");
		return "join.tiles";
	}
	
	/**
	 * 로그인
	 */
	@RequestMapping(value = "login.do", method={RequestMethod.GET, RequestMethod.POST})
	public String login(Model model) throws Exception {
		logger.info("GlobalMemberController login");
		return "login.tiles";
	}
}
 