package org.rg.site.cms.service;

import org.rg.site.cms.entity.ColumnInfo;
import org.rg.site.cms.dao.ColumnInfoDao;
import org.rg.site.cms.dto.ColumnInfoQueryDTO;
import org.rg.site.common.entity.PageModel;
import org.rg.site.common.service.CommonService;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author
 * @desc ColumnInfoService类 
 * @date 2017-03-16
 */
@Service
public class ColumnInfoService extends CommonService< ColumnInfo,String > {

    @Autowired
    private ColumnInfoDao columnInfoDao;

    @Autowired
    public void setColumnInfoDao(ColumnInfoDao columnInfoDao){
      super.setCommonDao(columnInfoDao);
    }

    public PageModel<ColumnInfo> queryColumnInfoPage(ColumnInfoQueryDTO columnInfoQueryDTO){
           return this.columnInfoDao.queryColumnInfoPage(columnInfoQueryDTO);
    }

    public List<ColumnInfo> queryColumnInfoList(ColumnInfoQueryDTO columnInfoQueryDTO){
           return this.columnInfoDao.queryColumnInfoList(columnInfoQueryDTO);
    }

    public ColumnInfo queryColumnInfoById(String Id) {
        return this.find(Id);
    }

}