package global.com.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.com.dao.GlobalMemberDao;
import global.com.model.MemberDto;
import global.com.model.testDTO;

@Repository
public class GlobalMemberDaoImpl implements GlobalMemberDao {
	private static final Logger logger = LoggerFactory.getLogger(GlobalMemberDaoImpl.class);
	
	@Autowired
	SqlSession sqlsession;
	
	private String mem = "member.";
	
	@Override
	public List<MemberDto> test() throws Exception {
		List<MemberDto> list = sqlsession.selectList(mem+"testlist");
		System.out.println("KhMemberDaoImpl test()");
		return list;
	}
	
	/* 회원가입 */
	
	@Override // id 체크
	public MemberDto checkId(MemberDto dto) throws Exception {
		return sqlsession.selectOne(mem+"checkId",dto);
	}
	
	@Override
	public boolean join(MemberDto member) throws Exception {
		int i = sqlsession.insert(member + "join");
		return i!=0?true:false;
	}

	
}
