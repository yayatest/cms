package org.rg.site.org.dao;

import java.util.List;
import java.util.Map;

import org.rg.site.org.entity.Resource;


public interface ResourceDaoCustom {

	public List<Resource> findMenuResource(Map<String, Object> params);
	
}
