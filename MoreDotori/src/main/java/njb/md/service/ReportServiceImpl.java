package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import njb.md.domain.Mem;
import njb.md.domain.Reply;
import njb.md.domain.Report;
import njb.md.mapper.ReportMapper;

@Log4j
@Service("reportService")
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportMapper mapper;
	
	@Override
	public List<Report> getReportList(){
		List<Report> reportList = mapper.getReportList();
		
		for (Report data : reportList) {
			data.setReportDetail(mapper.getReportDetailList(data.getRp_seq()));
		}
		
		return reportList;
	}
	
	@Override
	public void stopUser(String m_id, String m_reason, String m_cdate){
		mapper.stopUser(m_reason, m_cdate, m_id);
	}
	
	@Override
	public List<Reply> getReplyList(){
		List<Reply> list = mapper.getReplyList();
		
		for (Reply data : list) {
			data.setReplyDetail(mapper.getReplyDetailList(data.getRp_seq()));
		}
		return list;
	}
}
