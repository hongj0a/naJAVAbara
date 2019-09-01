package njb.md.customer.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ReplyVO extends BoardVO {
	private String re_seq;
	private String b_code;
	private String m_id;
	private String re_content;
	private int b_reportnum;
}
