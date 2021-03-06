package kr.co.yoribogo.repository.vo;

import java.util.List;

public class IngredientVO {
	private int ingredientNo;
	private int no;
	private int categoryNo;
	
	
	private List<String> categoryName;
	public List<String> getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(List<String> categoryName) {
		this.categoryName = categoryName;
	}

	
	
	
	public int getIngredientNo() {
		return ingredientNo;
	}
	public void setIngredientNo(int ingredientNo) {
		this.ingredientNo = ingredientNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
}
