package njb.md.customer.service;

import java.util.List;

import njb.md.customer.domain.ReplyVO;

public interface ReplyService {
	public List<ReplyVO> getReplyList(ReplyVO vo) throws Exception;
	// select 객체
	public ReplyVO getReply(ReplyVO vo) throws Exception;
	//insert
	public void regReply(ReplyVO vo) throws Exception;
	//update
	public int modReply(ReplyVO vo) throws Exception;	
	//delete
	public int removeReply(ReplyVO vo) throws Exception;
}
