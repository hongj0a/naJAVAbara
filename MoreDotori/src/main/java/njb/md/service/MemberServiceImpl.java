package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import njb.md.domain.Member;
import njb.md.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberMapper mapper;

	@Override
	public List<Member> selectAll() {
		List<Member> list = mapper.selectAll();
		
		return list;
	}

}
