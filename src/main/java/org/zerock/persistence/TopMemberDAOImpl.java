package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Overview;
import org.zerock.domain.SearchCriteria;
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
	public Overview overview() {
		Overview overview = new Overview();
		overview.setMembers(session.selectOne(namespace + ".overview_members"));
		overview.setBusiness(session.selectOne(namespace + ".overview_business"));
		overview.setEtc(session.selectOne(namespace + ".overview_etc"));
		overview.setMale(session.selectOne(namespace + ".overview_male"));
		overview.setFemail(session.selectOne(namespace + ".overview_female"));
		overview.setPrize(session.selectOne(namespace + ".overview_prize"));
		return overview;
	}

	@Override
	public TopMember getMemberInfo(String studentNum) {
		return session.selectOne(namespace + ".memberInfo", studentNum);
	}

	@Override
	public void delete(String studentNum) {
		session.delete(namespace + ".delete", studentNum);
	}

	@Override
	public List<TopMember> listSearch(SearchCriteria cri) {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

 
}
