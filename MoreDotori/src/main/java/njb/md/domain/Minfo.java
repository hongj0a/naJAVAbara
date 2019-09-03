package njb.md.domain;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Minfo {
	private MultipartFile chooseImg;
	private ArrayList<String> birth;
	
	private String zipCode;
	private String address;
	private String career;

	private ArrayList<String> license;
	private ArrayList<String> licenseNum;
	
	private ArrayList<String> sns;
	private ArrayList<String> snsUrl;
}
