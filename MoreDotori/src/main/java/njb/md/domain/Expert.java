package njb.md.domain;

import lombok.Data;

@Data
public class Expert {
	private String m_id;
	private String e_job;
	private String e_position;
	private int e_career;
	private String e_address;
	private String e_detailaddr;
	private String e_introduce;
	private int e_starpoint;
	
	private String e_license1;
	private String e_license2;
	private String e_license3;
	
	private String e_sns1;
	private String e_sns2;
	private String e_sns3;
	private String e_sns4;
	private String e_sns5;
}
