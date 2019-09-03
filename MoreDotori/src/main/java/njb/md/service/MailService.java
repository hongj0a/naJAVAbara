package njb.md.service;

public interface MailService {
	boolean sendMail(String receiverName, String receiverId);
}