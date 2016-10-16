package org.zerock.persistence;

import org.zerock.domain.Member;

public interface MemberDAO {
	public void register(Member member) throws Exception;
}
