package njb.md.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	private String m_id;
	private String re_content;
	private String re_reportnum;
	private String rp_seq;
	private String re_seq;
	private String rownum;
	private List<ReplyDetail> replyDetail;
}
