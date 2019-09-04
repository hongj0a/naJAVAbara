package njb.md.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class Notice {
	private long N_seq;
	private String M_id;
	private String C_horsehead;
	private long N_bseq;
	private String N_subject;
	private String N_content;
	private Date N_date;
	private String C_nstate;
}
