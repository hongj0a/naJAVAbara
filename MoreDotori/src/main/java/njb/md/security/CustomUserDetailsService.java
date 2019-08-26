package njb.md.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Member;
import njb.md.mapper.MemberMapper;
import njb.md.security.domain.CustomUser;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + username);

		// userName means userid
		Member member = memberMapper.read(username);

		log.warn("queried by member mapper: " + member);

		return member == null ? null : new CustomUser(member);
	} 

}
