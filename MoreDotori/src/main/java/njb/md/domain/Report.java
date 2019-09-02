package njb.md.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Report {
	private String m_id;
	private String reg_id;
	private String b_subjcet;
	private String b_subject;
	private String b_reportnum;
	private String rp_seq;
	private String b_seq;
	private String rownum;
	private List<ReportDetail> reportDetail;
}
