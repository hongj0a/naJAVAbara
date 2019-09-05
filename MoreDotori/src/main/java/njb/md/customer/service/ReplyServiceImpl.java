package njb.md.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.domain.ReplyVO;
import njb.md.customer.mapper.BoardMapper;
import njb.md.customer.mapper.ReplyMapper;
import njb.md.domain.Notice;
import njb.md.mapper.NoticeMapper;

@Service
@AllArgsConstructor 
@Log4j
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private BoardMapper boardMapper;	
	
	@Autowired
	private ReplyMapper replyMapper;
	
	@Autowired
	private NoticeMapper notiMapper;	
	
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

	@Transactional
	@Override
	public void regReply(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("#regReply...:" + vo);
		replyMapper.insertReply(vo);
		
		//알림추가
		String M_id = boardMapper.returnMid((long)vo.getB_seq(), vo.getB_code().trim());
		String b_sub = boardMapper.returnTitle((long)vo.getB_seq(), vo.getB_code().trim());
		Notice noti = new Notice();
		noti.setM_id(M_id);
		noti.setN_bseq(vo.getB_seq());
		noti.setN_subject("게시글에 댓글이 달렸습니다.");
		noti.setN_content(b_sub);
		notiMapper.insertBoardNotice(noti);
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

	@Override
	public int reportNum(int re_seq) throws Exception {
		// TODO Auto-generated method stub
		return replyMapper.reportNum(re_seq);
	}

	@Override
	public String getIdBySeq(int re_seq) {
		// TODO Auto-generated method stub
		return replyMapper.getIdBySeq(re_seq);
	}

}
