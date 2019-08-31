package njb.md.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReportDetail {
	private String m_id;
	private String rd_content;
	private String rd_date;
	private String rownum;
}
