package org.rg.site.org.dao;


import org.springframework.data.jpa.repository.Query;

import org.rg.site.common.dao.CommonDao;
import org.rg.site.org.entity.Role;

public interface RoleDao extends RoleCustomDao,CommonDao<Role,String>{

	@Query("from Role r where r.roleName = ?1 ")
	public Role findByRoleName(String roleName);
	
}
