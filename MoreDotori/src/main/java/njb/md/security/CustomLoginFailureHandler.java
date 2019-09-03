package njb.md.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Getter
@Setter
public class CustomLoginFailureHandler implements AuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String errorCode = "ER00";
		
		if(exception instanceof BadCredentialsException) {
			errorCode += "1";
		} else if(exception instanceof InternalAuthenticationServiceException) {
			 errorCode += "2";
		} else if(exception instanceof DisabledException) {
			errorCode += "3";
		} else if(exception instanceof CredentialsExpiredException) {
			errorCode += "4";
		}
		
		response.sendRedirect("/signin?ecode=" + errorCode);
	}

}
