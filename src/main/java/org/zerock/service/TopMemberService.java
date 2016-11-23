package org.zerock.service;

import java.util.List;

import org.zerock.domain.Overview;
import org.zerock.domain.SearchCriteria;
import org.zerock.domain.TopMember;

public interface TopMemberService {

	void topMemberRegister(TopMember member)throws Exception;

	List<TopMember> memberList();

	void update(TopMember member)throws Exception;

	TopMember getMemberInfo(String studentNum);

	Overview overview();

	void delete(String studentNum);

	List<TopMember> listSearchCriteria(SearchCriteria cri);

	int listSearchCount(SearchCriteria cri);



}
