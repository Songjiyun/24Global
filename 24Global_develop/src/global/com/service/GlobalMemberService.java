package global.com.service;

import java.util.List;

import com.mysql.cj.fabric.xmlrpc.base.Member;

import global.com.model.MemberDto;

public interface GlobalMemberService {
	
	public List<MemberDto> test() throws Exception;
	
	// 회원가입
	public MemberDto checkId(MemberDto dto) throws Exception;
	public boolean join(MemberDto member) throws Exception;
}
