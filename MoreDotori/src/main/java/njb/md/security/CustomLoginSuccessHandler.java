package njb.md.security;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

import lombok.extern.log4j.Log4j;
import njb.md.mapper.MemberMapper;
import njb.md.security.domain.CustomUser;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {

//		log.info("# auth: " + auth);
		List<String> roleNames = new ArrayList<>();

		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});

		CustomUser user = (CustomUser) auth.getPrincipal();
		switch(user.getMember().getC_mstate()) {
			case "MS001":
				mapper.updateLdate(user.getMember().getM_id());
				
				if (roleNames.contains("ROLE_ADMIN")) {
					response.sendRedirect("/admin/mem");
					return;
				} else if (roleNames.contains("ROLE_NORMAL")) {
					response.sendRedirect("/normal/book");
					return;
				} else if (roleNames.contains("ROLE_EXPERT")) {
					response.sendRedirect("/expert/expert_cal");
					return;
				}
				return;
			case "MS002":
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
				String cdate = transFormat.format(user.getMember().getM_cdate());
				String cname = user.getMember().getM_reason();
				
				new SecurityContextLogoutHandler().logout(request, response, auth);
				response.sendRedirect("/signin?ecode=ER005&cdate=" + cdate);
				return;
			case "MS003":
				new SecurityContextLogoutHandler().logout(request, response, auth);
				response.sendRedirect("/signin?ecode=ER006");
				return;
		}
	}
}


