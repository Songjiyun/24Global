package global.com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.fabric.xmlrpc.base.Member;

import global.com.dao.GlobalMemberDao;
import global.com.model.MemberDto;
import global.com.model.testDTO;
import global.com.service.GlobalMemberService;

@Service
public class GlobalMemberServiceImpl implements GlobalMemberService {

	@Autowired
	GlobalMemberDao globalmemberdao; /* */
	
	@Override
	public List<MemberDto> test() throws Exception {
		List<MemberDto> list = globalmemberdao.test();
		return list;
	}/* */

	
	/* 회원가입 */
	@Override
	public MemberDto checkId(MemberDto dto) throws Exception {
		return globalmemberdao.checkId(dto);
	}
	
	@Override
	public boolean join(MemberDto member) throws Exception {
		return globalmemberdao.join(member);
	}


}
