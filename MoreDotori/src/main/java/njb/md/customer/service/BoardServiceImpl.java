package njb.md.customer.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import njb.md.customer.common.util.ObjectUtil;
import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;
import njb.md.customer.mapper.BoardMapper;

@Service
@AllArgsConstructor 
@Log4j
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	/*  BOARD_MGR service*/
	//select 리스트
	@Override
	public List<BoardMgrVO> getBoardMgrList(BoardMgrVO vo) throws Exception {
		log.info("#getBoardMgrList...:" + vo);
		return boardMapper.selectBoardMgrList(vo);
	}
	// select 객체
	@Override
	public BoardMgrVO getBoardMgr(BoardMgrVO vo)  throws Exception{
		log.info("#getBoardMgr...:" + vo);
		return boardMapper.selectBoardMgr(vo);
	}
	// insert
	@Override
	public void regBoardMgr(BoardMgrVO vo) throws Exception{
		log.info("#regBoardMgr...:" + vo);
		boardMapper.insertBoardMgr(vo);
	}
	// update
	@Override
	public int modBoardMgr(BoardMgrVO vo) throws Exception{
		log.info("#modBoardMgr...:" + vo);
		return boardMapper.updateBoardMgr(vo);
	}
	// delete
	@Override
	public int removeBoardMgr(BoardMgrVO vo) throws Exception{
		log.info("#removeBoardMgr...:" + vo);
		return boardMapper.deleteBoardMgr(vo);
	}

	/* BOARD service*/
	//select 리스트
	@Override
	public List<BoardVO> getBoardList(BoardVO vo) throws Exception{
		log.info("#getBoardList...:" + vo);
		return boardMapper.selectBoardList(vo);
	}
	//select 객체
	@Override
	public BoardVO getBoard(BoardVO vo) throws Exception{
		log.info("#getBoard...:" + vo);
		return boardMapper.selectBoard(vo);
	}
	// insert
	@Override
	public void regBoard(BoardVO vo) throws Exception{
		log.info("#regBoard...:" + vo);
		boardMapper.insertBoard(vo);
	}
	//update
	@Override
	public int modBoard(BoardVO vo) throws Exception{
		log.info("#modBoard...:" + vo);
		return boardMapper.updateBoard(vo);
	}
	//delete
	@Override
	public int removeBoard(BoardVO vo) throws Exception{
		log.info("#removeBoard...:" + vo);
		return boardMapper.deleteBoard(vo);
	}
	//조회수
	@Override
	public int modReadNum(BoardVO vo) throws Exception {
		log.info("#modReadNum...:" + vo);
		return boardMapper.readNum(vo);
	}
	//추천수
	@Override
	public int modHeartNum(BoardVO vo) throws Exception {
		log.info("#modHeartNum...:" + vo);
		return boardMapper.heartNum(vo);
	}
	//신고수
	@Override
	public int reportNum(int b_seq) throws Exception {
		return boardMapper.reportNum(b_seq);
	}

	@Override
	public String getIdBySeq(int b_seq) {
		return boardMapper.getIdBySeq(b_seq);
	}

//	@Override
//	public Map<String,BoardMgrVO> getBoardMgrMapList() throws Exception{		
//		 log.info("111111111111111111");
//		 Map<String,BoardMgrVO> boardMgrMap = null;
//		List<BoardMgrVO> bordMgrList = boardMapper.selectBoardMgrList2();
//		
//		 if(bordMgrList == null) {
//			 boardMgrMap = null; 
//			 log.info("222222222222222222222222222222");
//		 }
//		 if(ObjectUtil.isNotEmpty(bordMgrList))
//		 {				 
//			 boardMgrMap = new HashMap<String,BoardMgrVO>(bordMgrList.size()); 			
//			 
//			 for(BoardMgrVO bordMgr: bordMgrList){
//				 boardMgrMap.put(bordMgr.getB_code(), bordMgr);
//			 }
//		 } 
//		 
//		 return boardMgrMap;
//	 }	
}
