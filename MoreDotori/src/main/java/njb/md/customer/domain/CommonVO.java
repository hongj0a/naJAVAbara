package njb.md.customer.domain;

import lombok.Data;

@Data
public class CommonVO {
	// 공통으로 쓰일 VO
	private String  reg_id;
	private String  reg_dt;
	private String  mod_id;
	private String  mod_dt;
	private String mode;  // 모드 구분하기 위한 필드
	private String num;
	// 검색을 위해서...
	private String searchType;
	private String searchWord;

	

}
