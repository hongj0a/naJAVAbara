package njb.md.customer.mapper;

import java.util.List;

import njb.md.customer.domain.ReplyVO;

public interface ReplyMapper {
	
	public List<ReplyVO> selectReplyList(ReplyVO vo);
	// select 객체
	public ReplyVO selectReply(ReplyVO vo);	
	//insert
	public void insertReply(ReplyVO vo);
	//update
	public int updateReply(ReplyVO vo);	
	//delete
	public int deleteReply(ReplyVO vo);
}
