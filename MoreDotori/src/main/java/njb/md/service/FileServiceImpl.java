package njb.md.service;

import java.io.File;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Service
public class FileServiceImpl implements FileService {

	@Override
	public String upload(MultipartFile file) {
		String FILE_STORE = "C:\\KIH\\sts-bundle\\workspace\\naJAVAbara\\MoreDotori\\src\\main\\webapp\\resources\\images\\profile-images";
//		String FILE_STORE = "\\usr\\local\\apache-tomcat-9.0.24\\webapps\\MoreDotori\\resources\\images\\profile-images";
		
		File fStore = new File(FILE_STORE);
		if(!fStore.exists()) fStore.mkdirs();
		
		String oFilename = file.getOriginalFilename();
		String saveFilename = oFilename;
		
		if(saveFilename != null) {
			saveFilename = saveFilename.trim();
			if(saveFilename.length() != 0) {
				if(new File(FILE_STORE, saveFilename).exists()) {
					int idx = saveFilename.lastIndexOf(".");
					String fName = saveFilename.substring(0,  idx);
					String fExt = saveFilename.substring(idx+1);
					
					saveFilename = fName+"_"+System.currentTimeMillis()+"."+fExt;
				}
				try {
					file.transferTo(new File(FILE_STORE, saveFilename));
					return file.getOriginalFilename();
				}catch(Exception e) {
					return null;
				}
			}else {
				return null;
			}
		}else {
			return null;
		}
	}
}

