package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.TopMember;

public interface TopMemberDAO {
	public void register(TopMember member) throws Exception;

	public List<TopMember> findAllMembers();

	public void update(TopMember member);

	public TopMember getMemberInfo();
}
