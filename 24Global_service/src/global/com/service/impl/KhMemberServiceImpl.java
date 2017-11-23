package global.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import global.com.dao.KhMemberDao;
import global.com.model.testDTO;
import global.com.service.KhMemberService;

@Service
public class KhMemberServiceImpl implements KhMemberService {

	@Autowired
	KhMemberDao khmemberdao; /* */
	
	@Override
	public List<testDTO> test() throws Exception {
		List<testDTO> list = khmemberdao.test();
		return list;
	}/* */

}
