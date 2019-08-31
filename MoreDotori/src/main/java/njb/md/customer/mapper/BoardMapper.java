package njb.md.customer.mapper;

import java.util.List;

import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;

public interface BoardMapper {
	
	/* boardMgr */
	
	// select 리스트
	public List<BoardMgrVO> selectBoardMgrList(BoardMgrVO vo);
	
//	public List<BoardMgrVO> selectBoardMgrList2();
	// select 객체
	public BoardMgrVO selectBoardMgr(BoardMgrVO vo);	
	//insert
	public void insertBoardMgr(BoardMgrVO vo);
	//update
	public int updateBoardMgr(BoardMgrVO vo);	
	//delete
	public int deleteBoardMgr(BoardMgrVO vo);
	

	/* board */
	
	// select 리스트
	public List<BoardVO> selectBoardList(BoardVO vo);
	// select 객체
	public BoardVO selectBoard(BoardVO vo);
	//insert
	public void insertBoard(BoardVO vo);
	//update
	public int updateBoard(BoardVO vo);	
	//delete
	public int deleteBoard(BoardVO vo);
	//조회수
	public int readNum(BoardVO vo);
	//추천수
	public int heartNum(BoardVO vo);
	
}
