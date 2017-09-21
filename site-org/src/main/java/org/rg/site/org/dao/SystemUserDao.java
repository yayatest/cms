package org.rg.site.org.dao;


import java.util.List;
import java.util.Map;

import org.rg.site.common.entity.PageModel;
import org.rg.site.org.dto.UserQueryDTO;
import org.rg.site.org.entity.User;

public interface SystemUserDao {
	
	public List<User> findUsers(Map<String, Object> params);
	
	/**
	 * 根据用户信息查询分页信息
	 * @param userQueryDTO
	 * @return
	 */
	PageModel<User> queryUserPage(UserQueryDTO userQueryDTO);
	
}
