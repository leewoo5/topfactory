package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.TopMember;

@Repository
public class TopMemberDAOImpl implements TopMemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "org.zerock.mapper.topMemberMapper";

	@Override
	public void register(TopMember member) throws Exception {
		session.insert(namespace + ".register", member);
	}

	@Override
	public List<TopMember> findAllMembers() {
		return session.selectList(namespace + ".selectAll");
	}

	@Override
	public void update(TopMember member) {
		session.update(namespace + ".update", member);
		
	}

	@Override
	public TopMember getMemberInfo() {
		return session.selectOne(namespace + ".memberInfo");
	}
 
}
