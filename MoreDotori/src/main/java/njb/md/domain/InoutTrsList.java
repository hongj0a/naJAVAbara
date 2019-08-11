package njb.md.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class InoutTrsList {
	 private long Bk_seq;
	 private String C_inout; 
	 private Date Bk_date;
	 private String M_id;
}
