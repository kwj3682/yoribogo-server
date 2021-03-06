package kr.co.yoribogo.repository.dao;

import java.util.List;

import kr.co.yoribogo.repository.vo.CategoryVO;
import kr.co.yoribogo.repository.vo.MemberVO;

public interface SignupMapper {
	public int getMemIdOnly(String id);
	public int getMemEmailOnly(String email);
	public void insertMember(MemberVO member);
	public List<CategoryVO> getCategoryList();
}
