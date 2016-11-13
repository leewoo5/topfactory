package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.TopMember;
import org.zerock.persistence.TopMemberDAO;

@Service
public class TopMemberServiceImple implements TopMemberService  {
	
	@Inject
	TopMemberDAO dao;
	
	@Override
	public void topMemberRegister(TopMember member) throws Exception {
		dao.register(member);
	}

	@Override
	public List<TopMember> memberList() {
		return dao.findAllMembers();
	}

	@Override
	public void update(TopMember member) {
		dao.update(member);
	}

	@Override
	public TopMember getMemberInfo() {
		return dao.getMemberInfo();
	}


}
