package njb.md.customer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import njb.md.customer.domain.BoardMgrVO;
import njb.md.customer.domain.BoardVO;

public interface BoardMapper {
	//알림을 위한 메소드(댓글단 게시물의 주인장 찾아내기)
	public String returnMid(@Param("B_seq") long B_seq,@Param("B_code") String B_code);
	public String returnTitle(@Param("B_seq") long B_seq,@Param("B_code") String B_code);
	
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
