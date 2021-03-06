package kr.co.yoribogo.repository.dao;

import java.util.List;

import kr.co.yoribogo.repository.vo.BannerVO;
import kr.co.yoribogo.repository.vo.CommentVO;
import kr.co.yoribogo.repository.vo.MemberVO;
import kr.co.yoribogo.repository.vo.NoticeVO;
import kr.co.yoribogo.repository.vo.PageVO2;
import kr.co.yoribogo.repository.vo.PageVO3;
import kr.co.yoribogo.repository.vo.RecipeVO;

public interface AdminMapper {
	
	
	// ===================1. 회원 관리 ==============================	
	//1. 회원 조회
	List<MemberVO> selectListMember(PageVO2 page);
	
	//2. 경고 회원 조회
	List<MemberVO> selectListReportMember(PageVO2 page);
	
	//1-1. 페이징
	int selectMemberCount(PageVO2 page);
	
	// ===================2. 게시글 관리 =============================
	//1. 공지사항 작성
	void insertNotice(NoticeVO notice);

	//2. 배너등록
	void insertBanner(BannerVO banner);
	
	//3. 레시피 게시글 조회
    List<RecipeVO> selectListRecipe(PageVO2 page);
	
	//3-1. 페이징
	int selectRecipeCount(PageVO2 page);
	
	// ===================3. 댓글 관리 ==============================
	//1. 댓글 관리
	List<CommentVO> selectListComment(PageVO2 page);
	
	//2. 베스트 댓글 조회
	List<CommentVO> selectListBestComment(PageVO2 page);
	
	//1-1. 페이징
	int selectCommentCount(PageVO2 page);
	
	// ===================메인 =====================================
	
	// 메인 페이지 조회
	List<RecipeVO> selectListMainImage();
	
	//메인 페이징
	int selectMainCount(PageVO3 page);
	
}
