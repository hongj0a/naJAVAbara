package njb.md.service;

import java.util.List;

import njb.md.domain.Reply;
import njb.md.domain.Report;

public interface ReportService {
	List<Report> getReportList();
	void stopUser(String idList, String m_reason, String m_cdate);
	List<Reply> getReplyList();
}
