package njb.md.mapper;

import java.util.List;

import njb.md.domain.Reply;
import njb.md.domain.ReplyDetail;
import njb.md.domain.Report;
import njb.md.domain.ReportDetail;

public interface ReportMapper {
	//리스트 조회
	public List<Report> getReportList();
	// 신고 상세조회
	public List<ReportDetail> getReportDetailList(String rpSeq);
	// 정지하기
	public void stopUser(String m_reason, String m_cdate, String m_id);
	// 댓글 리스트 조회
	public List<Reply> getReplyList();
	// 댓글 상세조회
	public List<ReplyDetail> getReplyDetailList(String rpSeq);
}
