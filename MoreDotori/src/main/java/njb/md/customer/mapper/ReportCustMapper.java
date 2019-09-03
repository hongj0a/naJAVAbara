package njb.md.customer.mapper;

import njb.md.customer.domain.ReportVO;

public interface ReportCustMapper {
	public int selectMreportCnt(ReportVO vo);
	
	public void insertReport(ReportVO vo);
	//insert
	public void insertReportDetail(ReportVO vo);
	//update
	
	public ReportVO selectMreport(ReportVO vo);
}
