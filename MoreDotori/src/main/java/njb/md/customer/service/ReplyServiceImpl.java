package njb.md.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.ReplyVO;
import njb.md.customer.mapper.ReplyMapper;

@Service
@AllArgsConstructor 
@Log4j
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper replyMapper;
	
	@Override
	public List<ReplyVO> getReplyList(ReplyVO vo) throws Exception {
		log.info("#getReplyList...:" + vo);
		return replyMapper.selectReplyList(vo);
	}

	@Override
	public ReplyVO getReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("#getReply...:" + vo);
		return replyMapper.selectReply(vo);
	}

	@Override
	public void regReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("#regReply...:" + vo);
		replyMapper.insertReply(vo);
	}

	@Override
	public int modReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("#modReply...:" + vo);
		return replyMapper.updateReply(vo);
	}

	@Override
	public int removeReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("#removeReply...:" + vo);
		return replyMapper.deleteReply(vo);
	}

}
