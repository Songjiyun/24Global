package global.com.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.com.dao.KhMemberDao;
import global.com.model.testDTO;

@Repository
public class KhMemberDaoImpl implements KhMemberDao {
	private static final Logger logger = LoggerFactory.getLogger(KhMemberDaoImpl.class);
	
	@Autowired
	SqlSession sqlsession;
	
	private String test = "test.";
	
	@Override
	public List<testDTO> test() throws Exception {
		List<testDTO> list = sqlsession.selectList(test+"testlist");
		System.out.println("KhMemberDaoImpl test()");
		return list;
	}/* */
	
}
