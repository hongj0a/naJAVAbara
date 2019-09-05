package njb.md.customer.service;

import java.util.List;
import java.util.Map;

import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;

public interface BoardService {
	
	/* boardMgr */
	
	// select 리스트
	public List<BoardMgrVO> getBoardMgrList(BoardMgrVO vo) throws Exception;	
	// select 객체
	public BoardMgrVO getBoardMgr(BoardMgrVO vo) throws Exception;	
	//insert
	public void regBoardMgr(BoardMgrVO vo) throws Exception;
	//update
	public int modBoardMgr(BoardMgrVO vo) throws Exception;	
	//delete
	public int removeBoardMgr(BoardMgrVO vo) throws Exception;
	
//	public Map<String,BoardMgrVO> getBoardMgrMapList() throws Exception;
	/* board */
	
	// select 리스트
	public List<BoardVO> getBoardList(BoardVO vo) throws Exception;
	// select 객체
	public BoardVO getBoard(BoardVO vo) throws Exception;
	//insert
	public void regBoard(BoardVO vo) throws Exception;
	//update
	public int modBoard(BoardVO vo) throws Exception;	
	//delete
	public int removeBoard(BoardVO vo) throws Exception;
	//조회수
	public int modReadNum(BoardVO vo) throws Exception;
	//추천수
	public int modHeartNum(BoardVO vo) throws Exception;
	
	//신고수 증가
	public int reportNum(int b_seq) throws Exception;
	public String getIdBySeq(int b_seq);
}

