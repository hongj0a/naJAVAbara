package njb.md.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import njb.md.domain.Member;

@Getter
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;

	private Member member;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(Member vo) {

		super(vo.getM_id(), vo.getM_password(), vo.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getMa_auth())).collect(Collectors.toList()));

		this.member = vo;
	}
}
