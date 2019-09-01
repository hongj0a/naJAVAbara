package njb.md.customer.service;

import njb.md.customer.domain.ReportVO;

public interface ReportService {
	public int getMreportCnt(ReportVO vo) throws Exception;
	//insert
	public void regReport(ReportVO vo) throws Exception;
	//insert
	public void regReportDetail(ReportVO vo) throws Exception;
	
	public ReportVO getMreport(ReportVO vo) throws Exception;
}
