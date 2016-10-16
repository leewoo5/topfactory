package org.zerock.persistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.zerock.mapper.memberMapper";

	@Override
	public void register(Member member) throws Exception {
		session.insert(namespace + ".register", member);
	}
 
}
