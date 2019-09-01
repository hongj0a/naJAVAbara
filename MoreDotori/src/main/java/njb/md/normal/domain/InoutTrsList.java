package njb.md.normal.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InoutTrsList {
	 private long Bk_seq;
	 private String C_inout; 
	 private Date Bk_date;
	 private String M_id;
}
