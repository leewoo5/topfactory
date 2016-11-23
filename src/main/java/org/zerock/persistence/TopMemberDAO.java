package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Overview;
import org.zerock.domain.SearchCriteria;
import org.zerock.domain.TopMember;

public interface TopMemberDAO {
	public void register(TopMember member) throws Exception;

	public List<TopMember> findAllMembers();

	public void update(TopMember member);

	public TopMember getMemberInfo(String studentNum);

	public Overview overview();

	public void delete(String studentNum);

	public List<TopMember> listSearch(SearchCriteria cri);

	public int listSearchCount(SearchCriteria cri);
}
