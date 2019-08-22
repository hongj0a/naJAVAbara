package njb.md.domain;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Minfo {
	MultipartFile chooseImg;
	ArrayList<String> birth;
	
	String zipCode;
	String address;

	ArrayList<String> license;
	ArrayList<String> licenseNum;
	
	ArrayList<String> sns;
	ArrayList<String> snsUrl;
}
