package njb.md.customer.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class BoardVO extends CommonVO{
	private int b_seq;
	private String b_code;
	private String b_subjcet;
	private String b_content;
	private int b_con_seq;
	private int b_reply_seq;
	private int b_cont_lv;
	private int b_parent_seq;
	private int b_readnum;
	private int b_heartnum;
	private int b_reportnum;
	private String b_filekey;
	private String b_del_yn;
	private String fcategori;

}
