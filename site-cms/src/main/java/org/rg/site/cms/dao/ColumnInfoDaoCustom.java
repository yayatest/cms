package org.rg.site.cms.dao;

import java.util.List;
import org.rg.site.cms.entity.ColumnInfo;
import org.rg.site.cms.dto.ColumnInfoQueryDTO;
import org.rg.site.common.entity.PageModel;

/**
 * @author
 * @desc ColumnInfoDaoCustom接口 
 * @date 2017-03-16
 */
public interface ColumnInfoDaoCustom {

      PageModel<ColumnInfo> queryColumnInfoPage(ColumnInfoQueryDTO columnInfoQueryDTO);

      List<ColumnInfo> queryColumnInfoList(ColumnInfoQueryDTO columnInfoQueryDTO);



}