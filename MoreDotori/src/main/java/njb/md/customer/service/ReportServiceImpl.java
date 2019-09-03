package njb.md.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.ReportVO;
import njb.md.customer.mapper.ReportCustMapper;

@Service
@AllArgsConstructor 
@Log4j
public class ReportServiceImpl implements ReportService {

	@Autowired
	private ReportCustMapper reportCustMapper;
	
	@Override
	public void regReport(ReportVO vo) throws Exception {
		log.info("regReport:::::::::::::::::::::::::::"+vo);
		reportCustMapper.insertReport(vo);
	}

	@Override
	public void regReportDetail(ReportVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("regReportDetail:::::::::::::::::::::::"+vo);
		reportCustMapper.insertReportDetail(vo);
	}

	@Override
	public int getMreportCnt(ReportVO vo) throws Exception {
		log.info("getMreportCnt:::::::::::::::::::::::"+vo);
		return reportCustMapper.selectMreportCnt(vo);
	}

	@Override
	public ReportVO getMreport(ReportVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("getMreport:::::::::::::::::::::::"+vo);
		return reportCustMapper.selectMreport(vo);
	}

}
