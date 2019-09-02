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
				String content = "<!doctype html>\r\n" + 
						"<html lang=\"ko\">\r\n" + 
						"<body style=\"background-color: #f4f7fa\">\r\n" + 
						"    <div style=\"width:100%;height:100%;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;font-family:'NotoSansKR','Segoe UI', 'Helvetica', 'Arial', 'sans-serif';\">\r\n" + 
						"        <div style=\"width: 740px;margin: 0 auto;margin-top: 50px; margin-bottom: 50px; border-radius: 10px;border: 1px solid #d7d7d7;\">\r\n" + 
						"            <div style=\"width: 100%;margin: 0 auto;padding-top:3em;\">\r\n" + 
						"                <div stlye=\"text-align: center;margin-bottom: 90px;\">\r\n" + 
						"                    <img class=\"footerlogo\" src=\"http://localhost:8080/images/slider/icon.png\" style=\"margin:0 auto; height:80px; display:block;\" alt=\"moredotori's logo\" />\r\n" + 
						"                    <h1 style=\"font-size: 2em;line-height: 1.5em;color:#5086f2;text-align: center;\">MORE DOTORI</h1>\r\n" + 
						"                    <p style=\"margin:0 auto;width:70%;line-height: 1.5em;margin-bottom: 90px; text-align: center; color:#747474;margin-bottom: 60px;\">안녕하세요, " + receiverName + " 님.<br>MORE DOTORI에서 임시 비밀번호를 안내해드립니다.<!--<br>아래 안내해 드리는 임시번호를 이용하여 로그인 후<br> 비밀번호를 번경하시는 것을 권장드립니다.--></p>\r\n" + 
						"                    <div style=\"margin: 0 auto;width: 70%;height: 60px;line-height: 60px;border: 1px solid #5086f2;margin-bottom: 90px; font-weight:300;text-align: center;\"><span style=\"font-weight:700;\">" + receiverName + "</span> 님의 임시 비밀번호 : <span style=\"color: #5086f2; font-weight:700;\">" + tempPassword + "</span></div>\r\n" + 
						"                </div>\r\n" + 
						"                \r\n" + 
						"                <!-- footer -->\r\n" + 
						"                <div class=\"footer\" style=\"height:auto;background-color: #37474f;color: white;   padding:20px;   font-size: 13px;text-align: center;\">\r\n" + 
						"                    <div style=\"padding-top : 5px;font-size: 25px;font-weight: bolder;margin-bottom: 10px;\">\r\n" + 
						"                        MOREDOTORI\r\n" + 
						"                    </div>\r\n" + 
						"                    <div style=\"margin-bottom: 5px;\">\r\n" + 
						"                        (주)naJAVAbara | 대표 김인희 | 사업자등록번호: 123-45-678901 | 개인정보보호무책임자 : 김채연(cheyeon5@naver.com)\r\n" + 
						"                    </div>\r\n" + 
						"                    <!--           <div>\r\n" + 
						"             서울시마포구 백범로 23 구프라자 3층 | 전화 : 02-1234-1234 | 팩스 : 02-1234-1234\r\n" + 
						"          </div> -->\r\n" + 
						"                    <div style=\"margin-bottom: 5px;\">\r\n" + 
						"                        Copyrightⓒ 2019naJAVAbaraCompany All rights reserved.\r\n" + 
						"                    </div>\r\n" + 
						"                </div>\r\n" + 
						"\r\n" + 
						"\r\n" + 
						"            </div>\r\n" + 
						"\r\n" + 
						"        </div>\r\n" + 
						"    </div>\r\n" + 
						"\r\n" + 
						"</body></html>";
//				String content = "<html><body>";
//				content += "<div align='center' style='border:1px solid black; font-family:verdana'>";
//				content += "<div><img src='http://localhost:8080/images/slider/icon.png' style='width: 150px'></div>";
//				content += "<h3 style='color: blue;'>" + receiverName + " 님, 임시 비밀번호 안내해드립니다.</h3>";
//				content += "<div style='font-size: 130%; margin:10px'>";
//				content += receiverName + " 님, ";
//				content += "임시 비밀번호는 <strong>" + tempPassword + "</strong> 입니다.<br/>";
//				content += "임시 비밀번호로 로그인 후에는 반드시 <strong>비밀번호를 변경해주세요</strong>.";
//				content += "</div></body></html>";
				
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