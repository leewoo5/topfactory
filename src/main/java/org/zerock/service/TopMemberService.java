package org.zerock.service;

import java.util.List;

import org.zerock.domain.TopMember;

public interface TopMemberService {

	void topMemberRegister(TopMember member)throws Exception;

	List<TopMember> memberList();

	void update(TopMember member)throws Exception;

	TopMember getMemberInfo();


}
