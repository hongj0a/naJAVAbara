package njb.md.service;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import njb.md.mapper.MemberMapper;

@Log4j
@Service
public class MailServiceImpl implements MailService {
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MemberMapper mmapper;
	
	private String sender = "more.dotori@gmail.com";
	private String subject = "[모아도토리] 임시 비밀번호 발급 메일입니다.";
	
	@Override
	public boolean sendMail(String receiverName, String receiverId) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("m_id", receiverId);
		map.put("m_name", receiverName);
		
		if(mmapper.existMem(map) != null) {
			PasswordEncoder pwencoder = new BCryptPasswordEncoder();
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				String tempPassword = "";
				for(int i=0; i<8; i++) {
					int rndVal = (int)(Math.random() * 62);
					
					if(rndVal < 10) {
						tempPassword += rndVal;
					} else if(rndVal > 35) {
						tempPassword += (char)(rndVal + 61);
					} else {
						tempPassword += (char)(rndVal + 55);
					}
				}
				log.info("tempPassword : " + tempPassword);
				
				String content = "<html><body>";
				content += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				content += "<h3 style='color: blue;'>" + receiverName + " 님, 임시 비밀번호 안내해드립니다.</h3>";
				content += "<div style='font-size: 130%'>";
				content += receiverName + " 님, ";
				content += "임시 비밀번호는 <strong>" + tempPassword + "</strong> 입니다.<br/>";
				content += "임시 비밀번호로 로그인 후에는 반드시 <strong>비밀번호를 변경해주세요</strong>.";
				content += "</div></body></html>";
				
				messageHelper.setFrom(sender);
				messageHelper.setTo(receiverId);
				messageHelper.setSubject(subject);
				messageHelper.setText(content, true);

				String encoded = pwencoder.encode(tempPassword);
				
				map.clear();
				map.put("m_id", receiverId);
				map.put("m_password", encoded);
				
				if(mmapper.updatePwd(map) != 0) {
					mailSender.send(message);
					log.info("임시비밀번호 메일 발송 완료");
					return true;
				}
			} catch (Exception e) {
				System.out.println(e);
				return false;
			}
		}
		return false;
	}
}