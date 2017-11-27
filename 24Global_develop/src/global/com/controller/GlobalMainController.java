package global.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.com.model.MemberDto;
import global.com.model.testDTO;
import global.com.service.GlobalMemberService;

@Controller
public class GlobalMainController {

	private static final Logger logger 
			= LoggerFactory.getLogger(GlobalMainController.class);
	
	@Autowired
	GlobalMemberService khmemberservice;
	
	/**
	 * main으로 이동 
	 */
	@RequestMapping(value = "global24.do", method={RequestMethod.GET, RequestMethod.POST})
	public String global24(Model model) throws Exception {
		logger.info("GlobalMainController global24");
		
		List<MemberDto> list = khmemberservice.test();
		for (int i = 0; i < list.size(); i++) {
			MemberDto dto = new MemberDto();
			System.out.println("USER table : " + list.get(i).toString());
		}
		return "index.tiles";
	}
	
	/**
	 * 시세 알림 서비스로 이동 
	 */
	@RequestMapping(value = "MarketPrice.do", method={RequestMethod.GET, RequestMethod.POST})
	public String MarketPrice(Model model) {
		logger.info("GlobalMainController MarketPrice");
		return "marketPrice.tiles";
	}
	
	/**
	 * 시세 알림 서비스로 이동 
	 */
	@RequestMapping(value = "Comunity.do", method={RequestMethod.GET, RequestMethod.POST})
	public String Comunity(Model model) {
		logger.info("GlobalMainController Comunity");
		return "Comunity.tiles";
	}

}
