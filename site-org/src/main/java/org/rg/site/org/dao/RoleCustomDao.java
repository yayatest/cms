package org.rg.site.org.dao;

import java.util.List;
import java.util.Map;

import org.rg.site.common.entity.PageModel;
import org.rg.site.org.dto.RoleQueryDTO;
import org.rg.site.org.entity.Role;

public interface RoleCustomDao {
	
	public List<Role> findRoles(Map<String, Object> params);
	
	/**
	 * 根据查询条件查询角色分页信息
	 * @param roleQueryDTO
	 * @return
	 */
	PageModel<Role> queryRolePage(RoleQueryDTO roleQueryDTO);
	
}
