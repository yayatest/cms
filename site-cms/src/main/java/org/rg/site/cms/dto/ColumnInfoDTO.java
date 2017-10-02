package org.rg.site.cms.dto;

import java.util.List;

/**
 * 栏目信息封装DTO
 * @author org.rg.site
 *
 */
public class ColumnInfoDTO {
	
	private String id;
		
	private String name;

	private Integer menuType;

	private String articleId;

	private List<ColumnInfoDTO> childColumnInfoList;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ColumnInfoDTO> getChildColumnInfoList() {
		return childColumnInfoList;
	}

	public void setChildColumnInfoList(List<ColumnInfoDTO> childColumnInfoList) {
		this.childColumnInfoList = childColumnInfoList;
	}

	public Integer getMenuType() {
		return menuType;
	}

	public void setMenuType(Integer menuType) {
		this.menuType = menuType;
	}

	public String getArticleId() {
		return articleId;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
}
